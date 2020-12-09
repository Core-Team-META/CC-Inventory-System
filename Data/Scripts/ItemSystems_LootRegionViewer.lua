--[[
    ItemSystems.LootRegionViwer
    ================
    Listens for incoming children inserted and removed from the loot folder.
    Inserts the receiving children into the region it spawned in.
]]

local lootRegions = require(script:GetCustomProperty("Inventory_Regions"))
local LOOT_FOLDER = script:GetCustomProperty("LootFolder"):WaitForObject()
local DEBUG_DISTCHECKS = script:GetCustomProperty("DEBUG_DrawDistanceChecks")
local SEARCHSIZE = 3 -- 3x3 How many regions around the player we should search?
local MAX_DISTANCE = 300 -- How far we can be to loot items
local SIZE = lootRegions.GetRegionSize()
local LOCALPLAYER = Game.GetLocalPlayer()

-- Wait for the inventory to fully load.
while not LOCALPLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCALPLAYER.clientUserData.inventory
inventory:WaitUntilLoaded()

lootRegions.init() -- Create loot regions

-- Adds an item to regions
-- @param Item item
local function AddItemToRegion(item)
    lootRegions.AddItemToRegion(item)
end

-- Removes an item from regions
-- @param Item item
local function RemoveItemFromRegion(item)
    lootRegions.RemoveItemFromRegion(item)
end

-- When a loot is destroyed the item will be removed from the region
-- @param _ event
-- @param Item item
local function OnLootRemovedFromFolder(_,item)
    inventory:UnRegisterLootItem(item)
    lootRegions.RemoveItemFromRegion(item)
end

-- When a loot is added to the world it will be added to regions.
-- @param _ event
-- @param Item item
local function OnLootAddedToFolder(_,item)
    Task.Wait(0.15) -- I guess we have to wait for the object to move into position...
    lootRegions.AddItemToRegion(item)
end

function Tick()
    local playerPos = LOCALPLAYER:GetWorldPosition()
    -- This iterates through the neihboring regions relative to the player to see if there is nearby loot.
    for x=1,SEARCHSIZE do
        for y=1,SEARCHSIZE do
            local lootPickups = lootRegions.GetLootsAtLocation(Vector2.New(playerPos.x + (x-SEARCHSIZE/2-0.5) * SIZE,playerPos.y + (y-SEARCHSIZE/2-0.5) * SIZE))
            if #lootPickups > 0 then
                for _, lootDrop in pairs(lootPickups) do
                    if Object.IsValid(lootDrop) then
                        local lootInfo = lootDrop:GetCustomProperty("LOOTINFO")
                        -- We must wait for the loot info to populate as the object may exist, but the loot info has not yet.
                        if lootInfo ~= "" and (lootDrop:GetWorldPosition() - playerPos).size < MAX_DISTANCE then
                            inventory:RegisterLootItem(lootInfo)
                            if DEBUG_DISTCHECKS then
                                CoreDebug.DrawLine(lootDrop:GetWorldPosition(), playerPos, {
                                    duration = 0.01,
                                    color = Color.GREEN,
                                    thickness = 5
                                })
                            end
                        elseif lootInfo ~= "" then
                            local id = lootInfo:match("^(.*)@(.*)$")
                            inventory:UnRegisterLootItem(id)
                            if DEBUG_DISTCHECKS then
                                CoreDebug.DrawLine(lootDrop:GetWorldPosition(), playerPos, {
                                    duration = 0.01,
                                    color = Color.RED,
                                    thickness = 4
                                })
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Inital setup when joining the world.
for _, item in pairs(LOOT_FOLDER:GetChildren()) do
    AddItemToRegion(item)
end

-- Anytime a new piece of loot is created in the world it'll be added to a region so it can be searched.
LOOT_FOLDER.childAddedEvent:Connect(OnLootAddedToFolder)
LOOT_FOLDER.childRemovedEvent:Connect(OnLootRemovedFromFolder)