--[[
    ItemSystems.BackpackReplicator
    ================

    Handles the management of backpacks contents when the player manipulates the inventory.
]]

local Item = require(script:GetCustomProperty("Item"))
local Database = require(script:GetCustomProperty("Database"))
         
-- Whenever a client moves an item in their backpack
Events.ConnectForPlayer("BIM", function(player, fromSlotIndex, toSlotIndex, backpackIndex)
    local backpackItem = player.serverUserData.inventory:GetItem(backpackIndex)
    if not backpackItem and not backpackItem:GetBackpackInventory() then return end

    backpackItem:GetBackpackInventory():MoveItem(fromSlotIndex,toSlotIndex)
    Events.Broadcast("ForceSave",player)
end)

-- Whenever a client removes an item from their backpack
Events.ConnectForPlayer("BDI", function(player, fromSlotIndex, toSlotIndex, backpackIndex)
    local backpackItem = player.serverUserData.inventory:GetItem(backpackIndex)
    if not backpackItem and not backpackItem:GetBackpackInventory() then return end

    -- If the player drags and drops an item from their backpack outside any of the inventories.a
    -- Drop the item
    local droppedItem = backpackItem:GetBackpackInventory():GetItem(fromSlotIndex)
    if droppedItem and not toSlotIndex then
        Events.Broadcast("OnDropSpecificHashLoot", droppedItem:RuntimeHash(), 
            player:GetWorldPosition() - Vector3.UP * 100)
    end

    backpackItem:GetBackpackInventory():MoveItem(fromSlotIndex,nil)
    Events.Broadcast("ForceSave",player)
end)

-- Whenever a client adds an item to their backpack
Events.ConnectForPlayer("BSI", function(player, itemHash, quantity, toSlot, backpackIndex)
    local backpackItem = player.serverUserData.inventory:GetItem(backpackIndex)
    if not backpackItem and not backpackItem:GetBackpackInventory() then return end

    local item = Item.FromHash(Database,itemHash)
    if item and item:IsStackable() then
        item:SetStackSize(quantity or 1)
    end
    backpackItem:GetBackpackInventory():_SetSlotItem(toSlot,item)
    Events.Broadcast("ForceSave",player)
end)