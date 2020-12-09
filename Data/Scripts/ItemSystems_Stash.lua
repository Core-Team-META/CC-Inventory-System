--[[
    ItemSystems.Stash
    ====================
    Logical representation of a stash that can be looted in the world.
]]

local LootableContainer = require(script:GetCustomProperty("ItemSystems_LootableContainer"))
local StashReplicator = require(script:GetCustomProperty("ItemSystems_StashReplicator"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))

local Stash = {}
Stash.__index = Stash

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------

-- Stash constructor
-- Contructs a stash with a world object that contains the properties for the stash, owner being the owner of the stash, and
-- slotCount being the amount of slots for the stash.
-- @param WORLD_OBJECT CoreObject
-- @param owner Player
-- @param slotCount int
-- @return Stash
function Stash.New(WORLD_OBJECT,owner,slotCount)
    local self = {}
    setmetatable(self, Stash)
    self:_Init(WORLD_OBJECT,owner,slotCount)
    return self
end

-- Copys the players inventory into the stash and adds a listener for stash so that when the inventory is empty the stash is destroyed.
-- @param player
function Stash:SetupDeathDropStash(player) -- Player player
    while not player.serverUserData.inventory do Task.Wait() end
    local inventory = player.serverUserData.inventory

    -- When the inventory is empty then the stash will be destroyed.
    self.container.itemDropEvent:Connect(function()
        if #self.container:GetAllItems() <= 1 then
            self:Destroy()
        end
    end)
    self.container.OnInventoryChanged:Connect(function()
        if #self.container:GetAllItems() < 1 then
            self:Destroy()
        end
    end)

    -- Copys the players inventory into the stash
    for _, item in inventory:IterateEntireInventory() do
        -- Don't add backpacks to the death stash. This is a limitation of the current system I'll fix this in a later patch.
        if item and not item:IsBackpack() then
            self.container:AddItem(item,item:GetStackSize(),true) -- Add item to container, but don't broadcast
        elseif item and item:IsBackpack() then
            Events.Broadcast("OnDropSpecificHashLoot", item:RuntimeHash(), player:GetWorldPosition())
        end
    end

    -- Both server and client will remove all items from the player's inventory.
    inventory:RemoveAllItems()
end


-- Stash waits for the playerid property to populate onto the the stash with the player's ID.
-- Once the player's ID is assigned the stash will be setup.
function Stash:WaitForPlayerWhoDied()
    while self.WORLD_OBJECT:GetCustomProperty("PLAYERID") == "" do Task.Wait() end
    local playerID = self.WORLD_OBJECT:GetCustomProperty("PLAYERID")
    for _, player in pairs(Game.GetPlayers()) do
        if player.id == playerID then
            self:SetupDeathDropStash(player)
            break
        end
    end
end

-- Returns true if the stash is saveabble
-- @return bool
function Stash:IsSavableStash()
    return self.isStash
end

-- Returns the id of the stash
-- @return int
function Stash:GetID()
    return self.id
end

-- Destroys the stash from the world and cleans up.
function Stash:Destroy()
    StashReplicator.RemoveStash(self.id)
    if self.WORLD_OBJECT.destroyEvent.isConnected then
        self.WORLD_OBJECT.destroyEvent:Disconnect()
    end
    self.WORLD_OBJECT:Destroy()
    self.unlockStashEvent:Disconnect()
    self.serverUnlockStashEvent:Disconnect()
    self.onStashUseEvent:Disconnect()
    if self.owner then
        self.container.OnInventoryChanged:Disconnect()
        self.container.itemDropEvent:Disconnect()
    end
    self = nil
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------

-- Initalizes the stash
function Stash:_Init(WORLD_OBJECT,owner,slotCount)
    self.WORLD_OBJECT = WORLD_OBJECT
    self.inUse = false
    self.id = WORLD_OBJECT:GetCustomProperty("ID")

    if not self.id then
        warn(string.format([[ 
        Stash %s is a stash without the ID property. 
        Give the stash an ID property and assign it. 
        Refer to ItemSystems_README for more information]],WORLD_OBJECT.name))
        return
    end

    if self.id and type(self.id) == "userdata" and self.id:IsA("CoreObjectReference") then
        self.id = self.id:GetObject().id -- MUID support
    end

    if type(self.id) == "number" then
        self.id = tostring(self.id)
    end

    self.isStash = WORLD_OBJECT:GetCustomProperty("IsStash") or false
    self.maxUsageDistanceSquared = 105^2

    -- If it's random loot container.
    self.lootTable = WORLD_OBJECT:GetCustomProperty("LootTable")
    self.minutesToReset = WORLD_OBJECT:GetCustomProperty("MinutesToResetLoot")
    
    self.minCount = WORLD_OBJECT:GetCustomProperty("ItemCountMin")
    self.maxCount = WORLD_OBJECT:GetCustomProperty("ItemCountMax")
    self.itemCount = WORLD_OBJECT:GetCustomProperty("ItemCount") or 5
    
    if self.minutesToReset then
        self.minutesToReset = self.minutesToReset * 60
    end
    self.lastUsed = 0 -- Time since last used.

    if self.lootTable or self.minutesToReset then
        assert(self.minutesToReset,string.format("%s does not have MinutesToResetLoot int property. This is required for generated loot containers",WORLD_OBJECT.name))
        assert(self.lootTable,string.format("%s does not have LootTable string property.  This is required for generated loot containers",WORLD_OBJECT.name))
    end
    --

    self.container = LootableContainer.New(self,owner,slotCount)
    StashReplicator.UpdateStash(self)

    -- If the stash has a life span then hook an event to ensure proper destruction
    if WORLD_OBJECT.lifeSpan > 0 then
        self.WORLD_OBJECT.destroyEvent:Connect(function() self:Destroy() end)
    end

    -- When the player drops something from the inventory then spawn it below the using player.
    self.container.itemDropEvent:Connect(function(fromSlotIndex, toSlotIndex)
        local droppedItem = self.container:GetItem(fromSlotIndex)
        if self.usingPlayer then
            Events.Broadcast("OnDropSpecificHashLoot", droppedItem:RuntimeHash(), 
                self.usingPlayer:GetWorldPosition() - Vector3.UP * 100)
        end
    end)

    -- Event Setup
    -- Called when the client is done using the stash
    self.unlockStashEvent = Events.ConnectForPlayer("UnlockStash",function(player,stashID)
        if tostring(stashID) == self.id then
            self.inUse = false
        end
    end)

    -- Called when the client is done using the stash
    self.serverUnlockStashEvent = Events.Connect("ServerUnlockStash",function(stashID)
        if tostring(stashID) == self.id then
            self.inUse = false
        end
    end)
    
    -- Called when the client wants to use the stash
    self.onStashUseEvent = Events.ConnectForPlayer("OnStashUse",function(player,stashID)
        if tostring(stashID) == self.id then

            -- TODO: Allow multiple players to interact with a stash that is marked as saveable

            -- Is the current player using it again and it's locked? If so then just unlock it.
            if player == self.usingPlayer then
                self.inUse = false
            end

            -- Is the last player that used this nearby?
            if Object.IsValid(self.usingPlayer) then
                local dist = (self.lastPosition - self.usingPlayer:GetWorldPosition()).sizeSquared
                if dist > self.maxUsageDistanceSquared then
                    self.inUse = false
                end
            else
                self.inUse = false
            end

            -- If the stash is already in use then let the player know.
            if self.inUse then
                Events.BroadcastToPlayer(player, "SHOWTEXT", "Stash is in use") 
                return 
            end

            self:_onUseStash(player)

            -- If the player leaves while interacting then the stash will be usable again.
            local handle = Game.playerLeftEvent:Connect(function(playerLeft)
                if playerLeft == player then
                    self.inUse = false
                end
            end)

            -- If the player exceeds a certain distance from the stash the stash will unlock
            while self.inUse do
                Task.Wait()
                if Object.IsValid(self.usingPlayer) then
                    local dist = (self.lastPosition - self.usingPlayer:GetWorldPosition()).sizeSquared
                    if dist >= self.maxUsageDistanceSquared then
                        self.inUse = false
                    end
                else
                    self.inUse = false
                end
            end

            self.usingPlayer = nil

            if handle then
                handle:Disconnect()
            end
        end
    end)
end

-- Rolls a random number for the amount of items.
function Stash:_RngItemCount()
	if self.minCount and self.maxCount then
		return math.random(self.minCount, self.maxCount)
	end
	return self.itemCount
end

-- When a stash is used by a player
function Stash:_onUseStash(player)
    self.inUse = true
    self.usingPlayer = player
    self.lastPosition = player:GetWorldPosition()
    -- If it's a lootable container then we must wait for some time before regenerating the loot.
    if self.lootTable and self.minutesToReset and self.lastUsed < os.time()  then
        self.lastUsed = os.time() + self.minutesToReset
        self.container:GenerateLoot(self.lootTable, self:_RngItemCount())
    end
    StashReplicator.LoadStashOntoPlayerProperty(player,self.id) -- Loads the stash hash into the player stash state property.
end

return Stash