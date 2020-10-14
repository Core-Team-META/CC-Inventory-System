--[[
    ItemSystems.InventoryReplicator
    ===============================

    Manages the replication of inventories across client/server.
]]
local Inventory = require(script:GetCustomProperty("ItemSystems_Inventory"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))
local COMPONENT = script:GetCustomProperty("InventoryComponent"):WaitForObject()

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
local function ServerLoadInventory()
    local playerData = Storage.GetPlayerData(OWNER)
    print("Loading inventory: ", playerData.inventoryHash)
    OWNER.serverUserData.inventory:LoadHash(playerData.inventoryHash)
    COMPONENT:SetNetworkedCustomProperty("LOAD", OWNER.serverUserData.inventory:RuntimeHash())
end

local function ClientLoadInventory()
    local loadHash = nil
    while not loadHash do
        Task.Wait()
        loadHash = COMPONENT:GetCustomProperty("LOAD")
    end
    OWNER.clientUserData.inventory:LoadHash(loadHash)
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
local function ServerSaveInventory(inventory)
    local playerData = Storage.GetPlayerData(OWNER)
    playerData.inventoryHash = inventory:PersistentHash()
    Storage.SetPlayerData(OWNER, playerData)
end

---------------------------------------------------------------------------------------------------------
local function ServerInitInventory()
    OWNER.serverUserData.inventory = Inventory.New(Database, OWNER)
    local inventory = OWNER.serverUserData.inventory
    -- Prepare a set of stat modifiers for each equipped item.
    local statModifiers = {}
    -- Whenever an item is equipped by the server inventory, replicate to all clients.
    inventory.itemEquippedEvent:Connect(function(equipIndex, equipItem)
        local itemHash = equipItem and equipItem:RuntimeHash() or ""
        local prop = string.format("E%d", equipIndex)
        COMPONENT:SetNetworkedCustomProperty(prop, itemHash)
        -- Update the player's stat sheet.
        ServerUpdateStatSheet(inventory, statModifiers)
        -- Update the player's animation stance depending on the item.
        if inventory:IsPrimaryWeaponSlot(equipIndex) then
            OWNER.animationStance = equipItem and equipItem:GetAnimationStance() or "unarmed_stance"
        end
    end)
    -- Whenever a client rearranges their local inventory, update the server inventory and persist.
    Events.ConnectForPlayer("IIM", function(player, fromSlotIndex, toSlotIndex)
        if player == OWNER then
            inventory:MoveItem(fromSlotIndex, toSlotIndex)
            ServerSaveInventory(inventory)
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
    Events.ConnectForPlayer("ILC", function(player, lootIndex)
        if player == OWNER then
            if inventory:CanClaimLoot(lootIndex) then
                inventory:ClaimLoot(lootIndex)
                ServerSaveInventory(inventory)
            end
        end
    end)
end

local function ClientInitInventoryLocal()
    OWNER.clientUserData.inventory = Inventory.New(Database, OWNER)
    local inventory = OWNER.clientUserData.inventory
    -- Whenever a local rearrangement is made, broadcast to the server.
    inventory.itemMovedEvent:Connect(function(fromSlotIndex, toSlotIndex)
        ReliableEvents.BroadcastToServer("IIM", fromSlotIndex, toSlotIndex)
    end)
    -- Whenever an item is consumed, broadcast to server.
    inventory.itemConsumedEvent:Connect(function(slotIndex)
        ReliableEvents.BroadcastToServer("IIC", slotIndex)
    end)
    -- Whenever a loot item is claimed, broadcast to server.
    inventory.lootClaimedEvent:Connect(function(lootIndex)
        ReliableEvents.BroadcastToServer("ILC", lootIndex)
    end)
end

local function ClientInitInventoryReplicated()
    OWNER.clientUserData.inventory = Inventory.New(Database)
    local inventory = OWNER.clientUserData.inventory
    -- Whenever an equipment change is received from the server, update the local inventory.
    COMPONENT.networkedPropertyChangedEvent:Connect(function(_, prop)
        local equipIndex = tonumber(prop:match("E(%d)"))
        if equipIndex then
            local equipItemHash = COMPONENT:GetCustomProperty(prop)
            inventory:UpdateEquipSlotFromHash(equipIndex, equipItemHash)
        end
    end)
end

---------------------------------------------------------------------------------------------------------
local function InitServer()
    ServerInitInventory()
    ServerLoadInventory()
end

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