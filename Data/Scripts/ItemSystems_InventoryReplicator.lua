--[[
    ItemSystems.InventoryReplicator
    ===============================
    Manages the replication of inventories across client/server.
]]

local Inventory = require(script:GetCustomProperty("ItemSystems_Inventory"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))
local COMPONENT = script:GetCustomProperty("InventoryComponent"):WaitForObject()

-- TODO: Move this to the Hierarchy as this would be easier to edit later.
local equipSlotTypes = {
    { slotType = "MainHand" },
    { slotType = "OffHand" },
    { slotType = "Head" },
    { slotType = "Chest" },
    { slotType = "Feet" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
}

---------------------------------------------------------------------------------------------------------
local OWNER = nil
while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT:GetCustomProperty("PlayerId") then
            OWNER = player
            break
        end
    end
end

---------------------------------------------------------------------------------------------------------
-- Wait until the database has fully loaded to proceed.
Database:WaitUntilLoaded()

---------------------------------------------------------------------------------------------------------
-- Server loads the hash from storage, loads the hash into a server inventory, and sets the network property so the client retrieves it.
local function ServerLoadInventory()
    local playerData = Storage.GetPlayerData(OWNER)
    OWNER.serverUserData.inventory:LoadHash(playerData.inventoryHash)
    COMPONENT:SetNetworkedCustomProperty("LOAD", OWNER.serverUserData.inventory:RuntimeHash())
    local currentHash = OWNER.serverUserData.inventory:RuntimeHash()
    while Task.Wait(1) do
        local newHash = OWNER.serverUserData.inventory:RuntimeHash()
        if currentHash ~= newHash then
            currentHash = newHash
            COMPONENT:SetNetworkedCustomProperty("LOAD", OWNER.serverUserData.inventory:RuntimeHash())
        end
    end
end

-- Client loads the inventory with the server provided hash
local function ClientLoadInventory()
    local loadHash = nil
    while not loadHash do
        Task.Wait()
        loadHash = COMPONENT:GetCustomProperty("LOAD")
    end
    OWNER.clientUserData.inventory:LoadHash(loadHash)
    local currentHash = loadHash
    while Task.Wait() do
        local newHash = COMPONENT:GetCustomProperty("LOAD")
        if currentHash ~= newHash then
            currentHash = newHash
            OWNER.clientUserData.inventory:LoadHash(newHash)
        end
    end
end

---------------------------------------------------------------------------------------------------------
local function ServerUpdateStatSheet(inventory, modifiers)
    local statSheet = OWNER.serverUserData.statSheet
    -- First time through, make sure all modifiers are present.
    local isFromItem = true
    modifiers.Health        = modifiers.Health          or statSheet:NewStatModifierAdd("Health",       0, isFromItem)
    modifiers.HealthPercent = modifiers.HealthPercent   or statSheet:NewStatModifierMul("Health",       1, isFromItem)
    modifiers.Defense       = modifiers.Defense         or statSheet:NewStatModifierAdd("Defense",      0, isFromItem)
    modifiers.Attack        = modifiers.Attack          or statSheet:NewStatModifierAdd("Attack",       0, isFromItem)
    modifiers.Magic         = modifiers.Magic           or statSheet:NewStatModifierAdd("Magic",        0, isFromItem)
    modifiers.CritChance    = modifiers.CritChance      or statSheet:NewStatModifierAdd("CritChance",   0, isFromItem)
    modifiers.CDR           = modifiers.CDR             or statSheet:NewStatModifierAdd("CDR",          0, isFromItem)
    modifiers.Haste         = modifiers.Haste           or statSheet:NewStatModifierAdd("Haste",        0, isFromItem)
    modifiers.Tenacity      = modifiers.Tenacity        or statSheet:NewStatModifierAdd("Tenacity",     0, isFromItem)
    -- Read total item stats and apply to stat sheet.
    local itemStatTotals = inventory:GetStatTotals()
    modifiers.Health.addend             = itemStatTotals.Health
    modifiers.HealthPercent.multiplier  = (itemStatTotals.HealthPercent / 100)+ 1
    modifiers.Defense.addend            = itemStatTotals.Defense
    modifiers.Attack.addend             = itemStatTotals.Attack
    modifiers.Magic.addend              = itemStatTotals.Magic
    modifiers.CritChance.addend         = itemStatTotals.CritChance
    modifiers.CDR.addend                = itemStatTotals.CDR
    modifiers.Haste.addend              = itemStatTotals.Haste
    modifiers.Tenacity.addend           = itemStatTotals.Tenacity
    -- Tell the stat sheet to recalculate.
    statSheet:Update()
end

---------------------------------------------------------------------------------------------------------
-- Saves the players inventory.
-- @param Inventory inventory
local function ServerSaveInventory(inventory)
    local playerData = Storage.GetPlayerData(OWNER)
    playerData.inventoryHash = inventory:PersistentHash()
    Storage.SetPlayerData(OWNER, playerData)
end

-- If the client is observed to have unsual requests then resync them.
local function ResyncClient()

end

---------------------------------------------------------------------------------------------------------
-- Initalizes the server-side inventory replication events.
local function ServerInitInventory()
    OWNER.serverUserData.inventory = Inventory.New(Database, OWNER, nil, equipSlotTypes)
    local inventory = OWNER.serverUserData.inventory
    -- Prepare a set of stat modifiers for each equipped item.
    local statModifiers = {}
    -- Whenever an item is equipped by the server inventory, replicate to all clients.
    inventory.itemEquippedEvent:Connect(function(equipIndex, equipItem)   
        if not equipIndex and not equipItem then
            COMPONENT:SetNetworkedCustomProperty("E1", "")
            ServerUpdateStatSheet(inventory, statModifiers)
            return
        end
        local itemHash = equipItem and equipItem:RuntimeHash() or ""
        local prop = string.format("E%d", equipIndex)
        COMPONENT:SetNetworkedCustomProperty(prop, itemHash)
        -- Update the player's stat sheet.
        ServerUpdateStatSheet(inventory, statModifiers)
        -- Update the player's animation stance depending on the item.
        if equipItem and equipItem:IsEquippable() and prop == "E1" then
            OWNER.animationStance = equipItem and equipItem:GetAnimationStance() or "unarmed_stance"
        end
    end)
    -- Whenever an item is added to the players server inventory, replicate it to the client
    inventory.itemAdded:Connect(function(itemHash,quantity)
        ReliableEvents.BroadcastToPlayer(OWNER,"IAI",itemHash,quantity)
        ServerSaveInventory(inventory)
    end)
    -- Whenever an item is set to a slot in the playesr server inventory, replicate it to the client
    inventory.itemSetToSlot:Connect(function(itemHash,quantity,slot) 
        ReliableEvents.BroadcastToPlayer(OWNER,"ISS",itemHash,quantity,slot)
        ServerSaveInventory(inventory)
    end)
    -- Whenever an item is added to the players server inventory, replicate it to the client
    inventory.itemRemoved:Connect(function(itemHash,quantity)
        ReliableEvents.BroadcastToPlayer(OWNER,"IRI",itemHash,quantity)
        ServerSaveInventory(inventory)
    end)
    -- Whenever the server removes a percentage of their inventory.
    inventory.itemRemoveByPercentage:Connect(function(percent,seed) 
        ReliableEvents.BroadcastToPlayer(OWNER,"IRP",percent,seed)
        ServerSaveInventory(inventory)
    end)
    -- Whenever the server removes everything
    inventory.itemRemoveAll:Connect(function() 
        ReliableEvents.BroadcastToPlayer(OWNER,"IRA")
        ServerSaveInventory(inventory)
    end)
    -- Whenever the client wants to add items it'll add them into the server inventory
    Events.ConnectForPlayer("IAI", function(player, itemHash, quantity)
        if player == OWNER then
            local item = Database:CreateItemFromHash(itemHash)
            if item:IsStackable() then
                item:SetStackSize(quantity)
            end
            inventory:AddItem(item,item:GetStackSize(),true)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever the client wants to add items it'll add them into the server inventory
    Events.ConnectForPlayer("IRA", function(player)
        if player == OWNER then
            inventory:RemoveAllItems(true)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever the client wants to assign a slot with an item it'll set it on server inventory
    Events.ConnectForPlayer("ISS", function(player, itemHash, quantity, slot)
        if player == OWNER then
            local item = Database:CreateItemFromHash(itemHash)
            if item:IsStackable() then
                item:SetStackSize(quantity)
            end
            inventory:SetItemToSlot(item,item:GetStackSize(),slot,true)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever the client wants to remove items it'll remove them from the servers inventory
    Events.ConnectForPlayer("IRI", function(player, itemHash, quantity)
        if player == OWNER then
            local item = Database:CreateItemFromHash(itemHash)
            if item:IsStackable() then
                item:SetStackSize(quantity)
            end
            inventory:RemoveItem(item,item:GetStackSize(),true)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever the client requests to remove items by a percentage
    Events.ConnectForPlayer("IRP", function(player,percent,seed)
        if player == OWNER then
            inventory:RemoveItemsByPercentage(percent,seed,true)
            ServerSaveInventory(inventory)
        end
    end)
    -- -- Whenever a client equips an item in the loadout, equip the item.
    -- Events.ConnectForPlayer("IFE", function(player, equipSlot)
    --     if player == OWNER then
    --         local item = inventory:GetItem(equipSlot)
    --         if item then
    --             COMPONENT:SetNetworkedCustomProperty("E1", item:RuntimeHash())
    --         else
    --             COMPONENT:SetNetworkedCustomProperty("E1", "")
    --         end
    --     end
    -- end)
    -- Whenever a client rearranges their local inventory, update the server inventory and persist.
    Events.ConnectForPlayer("IIM", function(player, fromSlotIndex, toSlotIndex)
        if player == OWNER then
            inventory:MoveItem(fromSlotIndex, toSlotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client wants to drop an item from their inventory into the world for others to loot.
    Events.ConnectForPlayer("IID", function(player, fromSlotIndex, toSlotIndex)
        if player == OWNER then
            local item = inventory:GetItem(fromSlotIndex)
            -- Refer to ItemSystems_LootSpawner for more information about this event.
            if item then
                Events.Broadcast("OnDropSpecificHashLoot", item:RuntimeHash(), player:GetWorldPosition() - Vector3.UP * 100)
                inventory:MoveItem(fromSlotIndex, nil)
                ServerSaveInventory(inventory)
            end
        end
    end)
    -- Whenever a client consumes an item, update the server inventory.
    Events.ConnectForPlayer("IIC", function(player, slotIndex)
        if player == OWNER then
            inventory:ConsumeItem(slotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client claims a loot item, update the server inventory and persist.
    Events.ConnectForPlayer("ILC", function(player, lootID)
        if player == OWNER then
            inventory:ClaimLoot(lootID)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client salvages a item, update the server inventory and persist.
    Events.ConnectForPlayer("IIS", function(player, slotIndex)
        if player == OWNER then
            inventory:SalvageItem(slotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever the client wants to lock their abilities
    Events.ConnectForPlayer("SLA", function(player, isLocked)
        if player == OWNER then
            for _, ability in pairs(player:GetAbilities()) do
                ability.isEnabled = isLocked
            end
        end
    end)

    Events.Connect("ForceSave",function(player) 
        if player == OWNER then
            ServerSaveInventory(inventory)
        end
    end)
end

-- Initalizes the client-side inventory replication events.
local function ClientInitInventoryLocal()
    OWNER.clientUserData.inventory = Inventory.New(Database, OWNER, nil, equipSlotTypes)
    local inventory = OWNER.clientUserData.inventory
    -- -- When the server forces the client to set an equip loadout.
    -- Events.Connect("IFE",function(itemSlot)
    --     inventory:SetEquipedLoadout(itemSlot)
    -- end)
    -- When the server adds an item to the players inventory replicate that to the client.
    Events.Connect("IAI",function(itemHash, quantity)
        local item = Database:CreateItemFromHash(itemHash)
        if item:IsStackable() then
            item:SetStackSize(quantity)
        end
        inventory:AddItem(item, quantity, true)
    end)
    -- When the server sets an item into a slot replicate that to the client.
    Events.Connect("ISS",function(itemHash, quantity, slot)
        local item = Database:CreateItemFromHash(itemHash)
        if item:IsStackable() then
            item:SetStackSize(quantity)
        end
        inventory:SetItemToSlot(item, quantity, slot, true)
    end)
    -- When the server removes an item from the inventory replicate that to the client.
    Events.Connect("IRI",function(itemHash, quantity)
        local item = Database:CreateItemFromHash(itemHash)
        if item:IsStackable() then
            item:SetStackSize(quantity)
        end
        inventory:RemoveItem(item, quantity, true)
    end)
    -- When the server removes all items from the inventory replciate that to the client.
    Events.Connect("IRA", function(player)
        inventory:RemoveAllItems(true)
    end)
    -- When the server removes items by percentage replicate that to the client.
    Events.Connect("IRP",function(percent, seed)
        inventory:RemoveItemsByPercentage(percent,seed,true)
    end)
    -- Whenever the client wants to add an item it'll be added. This is a client authorative event as the client could add their own items.
    inventory.itemAdded:Connect(function(itemHash,quantity)
        ReliableEvents.BroadcastToServer("IAI",itemHash,quantity)
    end)
    -- Whenever an item is set to a slot in the playesr server inventory, replicate it to the client.
    inventory.itemSetToSlot:Connect(function(itemHash,quantity,slot)
        ReliableEvents.BroadcastToServer("ISS",itemHash,quantity,slot)
    end)
    -- Whenever the client wants to add an item it'll be added. This is a client authorative event as the client could add their own items.
    inventory.itemRemoved:Connect(function(itemHash,quantity)
        ReliableEvents.BroadcastToServer("IRI",itemHash,quantity)
    end)
    -- Whenever the client removes a percentage of their inventory.
    inventory.itemRemoveByPercentage:Connect(function(percent,seed) 
        ReliableEvents.BroadcastToServer("IRP",percent,seed)
    end)
    -- Whenever the client wants to remove everything.
    inventory.itemRemoveAll:Connect(function() 
        ReliableEvents.BroadcastToServer("IRA")
    end)
    -- -- Whenever an item is equipped, Broadcast to server.
    -- inventory.itemEquippedEvent:Connect(function(equipIndex, equipItem)
    --     ReliableEvents.BroadcastToServer("IFE", equipIndex)
    -- end)
    -- Whenever a local rearrangement is made, broadcast to server.
    inventory.itemMovedEvent:Connect(function(fromSlotIndex, toSlotIndex)
        ReliableEvents.BroadcastToServer("IIM", fromSlotIndex, toSlotIndex)
    end)
    -- Whenever an item is dropped, Broadcast to server.
    inventory.itemDropEvent:Connect(function(fromSlotIndex, toSlotIndex)
        ReliableEvents.BroadcastToServer("IID", fromSlotIndex, toSlotIndex)
    end)
    -- Whenever an item is consumed, broadcast to server.
    inventory.itemConsumedEvent:Connect(function(slotIndex)
        ReliableEvents.BroadcastToServer("IIC", slotIndex)
    end)
    -- Whenever a loot item is claimed, broadcast to server.
    inventory.lootClaimedEvent:Connect(function(lootObject)
        ReliableEvents.BroadcastToServer("ILC", lootObject)
    end)
    -- Whenever an item is salvaged.
    inventory.itemSalvage:Connect(function(slotIndex)
        ReliableEvents.BroadcastToServer("IIS",slotIndex)
    end)
    -- Whenever the client wants to lock abilities.
    inventory.SetLockAbilities:Connect(function(isLocked)
        ReliableEvents.BroadcastToServer("SLA",isLocked)
    end)
end

-- Whenever an equipment change is received from the server, update the local inventory.
local function ClientInitInventoryReplicated()
    OWNER.clientUserData.inventory = Inventory.New(Database)
    local inventory = OWNER.clientUserData.inventory
    COMPONENT.networkedPropertyChangedEvent:Connect(function(_, prop)
        if OWNER == Game.GetLocalPlayer() then
            local equipIndex = tonumber(prop:match("E(%d)"))
            if equipIndex then
                local equipItemHash = COMPONENT:GetCustomProperty(prop)
                inventory:UpdateEquipSlotFromHash(equipIndex, equipItemHash)
            end
        end
    end)
end

---------------------------------------------------------------------------------------------------------
-- Init server inventory
local function InitServer()
    ServerInitInventory()
    ServerLoadInventory()
end

-- Init client inventory
local function InitClient()
    if OWNER == Game.GetLocalPlayer() then
        ClientInitInventoryLocal()
    else
        ClientInitInventoryReplicated()
    end
    ClientLoadInventory()
end

if script.isServerOnly then InitServer() end
if script.isClientOnly then InitClient() end