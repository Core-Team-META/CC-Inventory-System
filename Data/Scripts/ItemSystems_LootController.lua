local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local LOOT = script:GetCustomProperty("Loot"):WaitForObject()

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
    local function OnLootClaimed() LOOT:Destroy() end
    OWNER.serverUserData.inventory:RegisterLootItem(item, LOOT, OnLootClaimed)
else
    local item = Item.FromHash(OWNER.clientUserData.inventory.database, ITEM_HASH)
    OWNER.clientUserData.inventory:RegisterLootItem(item, LOOT)
end

