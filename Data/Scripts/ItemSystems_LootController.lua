--[[
    ItemSystems.LootController
    ================

    Listens for the incoming item hash and owner of a newly spawned loot and then registers it to
    the players inventory. This runs on both server and client.
]]

local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local LOOT = script:GetCustomProperty("Loot"):WaitForObject()

local LOOTDESTROY_TIME = 60 -- After a minute unregister the items

-- Wait for the networked property to be set.
local OWNER = nil
local ITEM_HASH = nil
while not OWNER do
    Task.Wait()
    local info = LOOT:GetCustomProperty("INFO")
    OWNER,ITEM_HASH = info:match("^(.+)/(.+)$")
end

-- Get the actual owning player.
for _,player in ipairs(Game.GetPlayers()) do
    if player.id:find(OWNER) then
        OWNER = player
        break
    end
end

-- Maybe a corner case where the owner is no longer in the game.
if not OWNER:IsA("Player") then return end

---------------------------------------------------------------------------------------------------------
if script.isServerOnly then
    local item = Item.FromHash(OWNER.serverUserData.inventory.database, ITEM_HASH)
    -- Server-side. Delete networked root object when claimed.
    local function OnLootClaimed() if Object.IsValid(LOOT) then LOOT:Destroy() end end
    local lootIndex = OWNER.serverUserData.inventory:RegisterLootItem(item, LOOT, OnLootClaimed)
    -- If the player leaves the game and does not claim the loot we will destroy all instances of their owned loot.
    Game.playerLeftEvent:Connect(function(player) 
        if player == OWNER then
            OWNER.serverUserData.inventory:UnRegisterLootItem(lootIndex) 
        end
    end)
    Task.Wait(LOOTDESTROY_TIME)
    -- If it's not claimed for some time we should unregister it.
    OWNER.serverUserData.inventory:UnRegisterLootItem(lootIndex)
else
    local item = Item.FromHash(OWNER.clientUserData.inventory.database, ITEM_HASH)
    local lootIndex = OWNER.clientUserData.inventory:RegisterLootItem(item, LOOT)
    Task.Wait(LOOTDESTROY_TIME)
    -- If it's not claimed for some time we should unregister it.
    OWNER.clientUserData.inventory:UnRegisterLootItem(lootIndex)
end

