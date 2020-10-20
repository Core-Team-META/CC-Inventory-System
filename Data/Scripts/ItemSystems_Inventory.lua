--[[
    ItemSystems.Inventory
    ====================
    Logical representation of an inventory that contains numerous methods that allow you to manage
    and control it the players inventory. Please refer to the ItemSystems_README for detailed information.
]]

local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local Base64 = require(script:GetCustomProperty("Base64"))
local RuntimeContextDetection = require(script:GetCustomProperty("RuntimeContextDetection")) -- Used to change the speed of the player.

local Inventory = {}
Inventory.__index = Inventory
---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end end

Inventory.EQUIP_SLOTS = {
    { slotType = "MainHand" },
    { slotType = "OffHand" },
    { slotType = "Head" },
    { slotType = "Chest" },
    { slotType = "Feet" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
}

Inventory.BACKPACK_CAPACITY = 32
Inventory.NUM_ACCESSORY_SLOTS = 3 -- Add more slots if you plan on expanding. 

Inventory.TOTAL_CAPACITY = #Inventory.EQUIP_SLOTS + Inventory.BACKPACK_CAPACITY
assert(Inventory.TOTAL_CAPACITY <= 64, "inventory size limit is 64 for compression reasons")

-- When enabled on the script it will allow the client to drop items into the world without trashing the item.
Inventory.DROP_ITEM_INSTEAD_OF_DELETE = script:GetCustomProperty("DropItemInsteadOfDelete")

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
function Inventory.New(database, owner)
    local o = {}
    setmetatable(o, Inventory)
    o:_Init(database, owner)
    o:_DefineEvent("lootClaimedEvent")
    o:_DefineEvent("itemEquippedEvent")
    o:_DefineEvent("itemMovedEvent")
    o:_DefineEvent("itemConsumedEvent")
    o:_DefineEvent("itemDropEvent")
    return o
end

function Inventory:LoadHash(hash)
    self:_ClearSlots()
    if hash then
        self:_LoadHash(hash)
    end
end

-- Converts the 1-based backpack index into the correct inventory slot index.
function Inventory:ConvertBackpackSlotIndex(backpackIndex)
    assert(1 <= backpackIndex and backpackIndex <= Inventory.BACKPACK_CAPACITY)
    return #Inventory.EQUIP_SLOTS + backpackIndex
end

-- Converts the slot type (and optional offset) into the correct inventory slot index.
function Inventory:ConvertEquipSlotIndex(slotType, slotNumber)
    slotNumber = slotNumber or 1
    local number = 0
    for i,equipSlot in ipairs(Inventory.EQUIP_SLOTS) do
        if equipSlot.slotType == slotType then
            number = number + 1
            if number == slotNumber then return i end
        end
    end
end

-- True if the slot represents a backpack item.
function Inventory:IsBackpackSlot(slotIndex)
    return slotIndex and #Inventory.EQUIP_SLOTS < slotIndex and slotIndex <= Inventory.TOTAL_CAPACITY
end

-- True if the slot represents an equipped item.
function Inventory:IsEquipSlot(slotIndex)
    return slotIndex and 1 <= slotIndex and slotIndex <= #Inventory.EQUIP_SLOTS
end

-- True if the slot accepts the given type.
function Inventory:IsEquipSlotType(slotIndex, slotType)
    return self:IsEquipSlot(slotIndex) and Inventory.EQUIP_SLOTS[slotIndex].slotType == slotType
end

-- True if the slot is empty.
function Inventory:IsEmptySlot(slotIndex)
    return self.slotItems[slotIndex] == nil
end

-- True if the slot is the primary weapon slot.
function Inventory:IsPrimaryWeaponSlot(slotIndex)
    return slotIndex == 1
end

-- True if the backpack is full.
function Inventory:IsBackpackFull()
    return self:GetFreeBackpackSlot() == nil
end

-- Get the item at the given slot.
function Inventory:GetItem(slotIndex)
    return self.slotItems[slotIndex]
end

-- Get a table of equipped items, indexed by equipment slot name.
function Inventory:IterateEquipSlots()
    local function iter(_, slotIndex)
        slotIndex = slotIndex + 1
        if slotIndex <= #Inventory.EQUIP_SLOTS then
            return slotIndex, self:GetItem(slotIndex)
        end
    end
    return iter, nil, 0 
end

-- Returns true if the player has accessory slots that have no items in them.
function Inventory:HasAvaliableAccessorySlots()
    for _, item in self:IterateEquipSlots() do
        if item and item:GetEquipSlotType() == "Accessory"  then
            return true
        end
    end
    return false
end

-- Gets the weakest accessory from the equipped slots.
function Inventory:GetWeakestAccessory()
    local weakestAccessory = nil
    local weakestAcessorySlot = nil
    for slot, item in self:IterateEquipSlots() do
        if item and item:GetEquipSlotType() == "Accessory" then
            if not weakestAccessory then 
                weakestAccessory = item
                weakestAcessorySlot = slot
            end
            local weakScore = 0
            local stats = item:GetStats()
            for _, statName in pairs(stats) do
                if Item.StatGreaterThan(weakestAccessory,item,statName.name) then
                    weakScore = weakScore + 1
                else
                    weakScore = weakScore - 1
                end
            end
            -- It's considered weak if half the stats are better.
            if weakScore >= math.floor(#stats/2)+1 then
                weakestAccessory = item
                weakestAcessorySlot = slot
            end
        else
            if self:IsEquipSlotType(slot,"Accessory") then
                return nil, slot
            end
        end
    end
    return weakestAccessory, weakestAcessorySlot
end

-- Gets the first free backpack slot.
function Inventory:GetFreeBackpackSlot()
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        if self:IsBackpackSlot(slotIndex) and self:IsEmptySlot(slotIndex) then
            return slotIndex
        end
    end
end

-- Gets the first free matching equip slot.
function Inventory:GetFreeEquipSlot(slotType)
    for slotIndex = 1,#Inventory.EQUIP_SLOTS do
        if self:IsEquipSlotType(slotIndex, slotType) and self:IsEmptySlot(slotIndex) then
            return slotIndex
        end
    end
end

-- Get the cumulative stat totals from all equipped items.
function Inventory:GetStatTotals()
    return self.statTotals
end

-- Get the stat deltas if the given item is equipped instead of the currently equipped item (in corresponding slot).
function Inventory:GetStatDeltas(compareItem)
    local slotIndex = self:ConvertEquipSlotIndex(compareItem:GetEquipSlotType())
    local currentItem = self:GetItem(slotIndex)
    local statDeltas = {}
    for statName,_ in pairs(self.statTotals) do
        statDeltas[statName] = compareItem:GetStatTotal(statName)
        if currentItem then
            statDeltas[statName] = statDeltas[statName] - currentItem:GetStatTotal(statName)
        end
    end
    return statDeltas
end

-- True if the move operation is valid.
function Inventory:CanMoveItem(fromSlotIndex, toSlotIndex)
    return self:_CanMoveItemOneWay(fromSlotIndex, toSlotIndex) and self:_CanMoveItemOneWay(toSlotIndex, fromSlotIndex)
end

-- Move an item. If there is an item in the destination slot, the items will swap. Acts as delete if destination slot is nil.
function Inventory:MoveItem(fromSlotIndex, toSlotIndex)
    -- If it's being thrown out of the inventory and we allowed item drops.
    if self.DROP_ITEM_INSTEAD_OF_DELETE and toSlotIndex == nil then
        self:_FireEvent("itemDropEvent", fromSlotIndex, toSlotIndex)
        self:_SetSlotItem(fromSlotIndex, nil)
        return
    end
    if not self:CanMoveItem(fromSlotIndex, toSlotIndex) then return end
    local swapItem = nil
    if toSlotIndex then
        swapItem = self.slotItems[toSlotIndex]
        self:_SetSlotItem(toSlotIndex, self.slotItems[fromSlotIndex])
    end
    self:_SetSlotItem(fromSlotIndex, swapItem)
    self:_FireEvent("itemMovedEvent", fromSlotIndex, toSlotIndex)
end

-- Adds an item to the backpack.
function Inventory:AddItem(item)
    local emptySlotIndex = self:GetFreeBackpackSlot()
    if item:IsStackable() and emptySlotIndex then
        self:_AddStackableItemToBackpack(item)
    elseif emptySlotIndex then
        self:_SetSlotItem(emptySlotIndex, item)
    end
end

-- Register a new loot object dropped for the owner of this inventory. Optionally provide a callback for when the loot is claimed.
-- Returns an index of the registered item.
function Inventory:RegisterLootItem(lootItem, lootWorldObject, onLootClaimed)
    if not lootItem then return end
    local lootInfo = {
        isClaimed = false,
        item = lootItem,
        worldObject = lootWorldObject,
        onLootClaimed = onLootClaimed,
    }
    table.insert(self.lootInfos, lootInfo)
    return #self.lootInfos
end

-- Unregisters an item from dropped loot. This is useful if you want to destroy loot that has been registered and needs to be removed.
function Inventory:UnRegisterLootItem(lootIndex)
    local lootInfo = self.lootInfos[lootIndex]
    lootInfo.isClaimed = true
    self:_FireEvent("lootClaimedEvent", lootIndex)
    if lootInfo.onLootClaimed then lootInfo.onLootClaimed() end
end

-- True if the claim operation is valid.
function Inventory:CanClaimLoot(lootIndex)
    local lootInfo = self.lootInfos[lootIndex]
    if lootInfo and not lootInfo.isClaimed then
        if lootInfo.item:IsStackable() then
            return self:_CanAccommodateStackableItem(lootInfo.item)
        else
            return self:GetFreeBackpackSlot() ~= nil
        end
    end
end

-- Transfer a loot item into inventory and mark as claimed.
function Inventory:ClaimLoot(lootIndex)
    local lootInfo = self.lootInfos[lootIndex]
    if lootInfo and not lootInfo.isClaimed then
        lootInfo.isClaimed = true
        if lootInfo.item:IsStackable() then
            self:_AddStackableItemToBackpack(lootInfo.item)
        else
            local slotIndex = self:GetFreeBackpackSlot()
            self:_SetSlotItem(slotIndex, lootInfo.item)
        end
        self:_FireEvent("lootClaimedEvent", lootIndex)
        if lootInfo.onLootClaimed then lootInfo.onLootClaimed() end
    end
end

-- Get a specific loot item.
function Inventory:GetLootItem(lootIndex)
    return self.lootInfos[lootIndex] and self.lootInfos[lootIndex].item or nil
end

-- Get information for all loots registered to this inventory.
function Inventory:GetLootInfos()
    return self.lootInfos
end

-- Consume one item at the specified index.
function Inventory:ConsumeItem(slotIndex)
    local item = self:GetItem(slotIndex)
    if item and item:GetType() == "Consumable" then
        item:ApplyConsumptionEffect(self.owner)
        local itemAfterConsumption = nil
        if item:IsStackable() and item:GetStackSize() > 1 then
            item:SetStackSize(item:GetStackSize() - 1)
            itemAfterConsumption = item
        end
        self:_SetSlotItem(slotIndex, itemAfterConsumption)
        self:_FireEvent("itemConsumedEvent", slotIndex)
    end
end

-- Hash suitable for runtime use. Indexes are preferred over full MUIDs for compactness.
function Inventory:RuntimeHash()
    return self:_IntoHash(true)
end

-- Hash suitable for persistance. MUIDs are preferred over indexes for future-proofing.
function Inventory:PersistentHash()
    return self:_IntoHash(false)
end

-- Update an equipment slot from hash value. Used by replicated clients.
function Inventory:UpdateEquipSlotFromHash(slotIndex, itemHash)
    assert(self:IsEquipSlot(slotIndex))
    local item = nil
    if #itemHash > 0 then
        item = self.database:CreateItemFromHash(itemHash)
    end
    self:_SetSlotItem(slotIndex, item)
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function Inventory:_Init(database, owner)
    self.database = database
    self.owner = owner
    self.lootInfos = {}
    self:_ClearSlots()
    self:_RecalculateStatTotals()
end

function Inventory:_ClearSlots()
    self.slotItems = {}
    self.equippedItems = {}
    self.isOffhandDisabled = false
end

function Inventory:_IntoHash(isRuntime)
    local hashParts = {}
    table.insert(hashParts, isRuntime and "R" or "P")
    for slotIndex = 1,Inventory.TOTAL_CAPACITY do
        local item = self:GetItem(slotIndex)
        if item then
            local slotId = Base64.Encode6(slotIndex)
            if not isRuntime then
                if self:IsEquipSlot(slotIndex) then
                    slotId = "E" .. Inventory.EQUIP_SLOTS[slotIndex].slotType
                else
                    slotId = "B" .. Base64.Encode6(slotIndex - #Inventory.EQUIP_SLOTS)
                end
            end
            table.insert(hashParts, string.format("<%s>", slotId))
            table.insert(hashParts, item:_IntoHash(isRuntime))
            table.insert(hashParts, ";")
        end
    end
    return table.concat(hashParts)
end

local SLOT_PATTERN = "<([^<>;]+)>([^<>;]+);"
function Inventory:_LoadHash(hash)
    local hashType = hash:sub(1,1)
    local hashData = hash:sub(2)
    local isRuntime = hashType == "R"
    for slotId,itemHash in hashData:gmatch(SLOT_PATTERN) do
        local slotIndex = nil
        if isRuntime then
            slotIndex = Base64.Decode6(slotId)
        elseif slotId:sub(1,1) == "B" then
            slotIndex = #Inventory.EQUIP_SLOTS + Base64.Decode6(slotId:sub(2))
        elseif slotId:sub(1,1) == "E" then
            slotIndex = self:GetFreeEquipSlot(slotId:sub(2))
        end
        local item = Item.FromHash(self.database, itemHash)
        self:_SetSlotItem(slotIndex, item)
    end
end

function Inventory:_FireEvent(eventName, ...)
    for _,handler in ipairs(self.eventHandlers[eventName]) do
        handler(...)
    end
end

function Inventory:_DefineEvent(eventName)
    self.eventHandlers = self.eventHandlers or {}
    self.eventHandlers[eventName] = self.eventHandlers[eventName] or {}
    self[eventName] = {
        Connect = function(_, handler)
            table.insert(self.eventHandlers[eventName], handler)
        end
    }
end

function Inventory:_CanMoveItemOneWay(fromSlotIndex, toSlotIndex)
    if not toSlotIndex then
        return true
    end
    local item = self:GetItem(fromSlotIndex)
    if not item then
        return true
    end
    if self:IsBackpackSlot(toSlotIndex) then
        return true
    end
    if self:IsEquipSlotType(toSlotIndex, item:GetEquipSlotType()) then
        return true
    end
end

function Inventory:_CanAccommodateStackableItem(item)
    assert(item:IsStackable())
    local stackSpace = 0
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        assert(self:IsBackpackSlot(slotIndex))
        if self:IsEmptySlot(slotIndex) then
            stackSpace = stackSpace + item:GetMaxStackSize()
        elseif item:WillStackWith(self:GetItem(slotIndex)) then
            stackSpace = stackSpace + item:GetAvailableStackSpace()
        end
        -- Check if we have enough and exit early.
        if stackSpace >= item:GetStackSize() then return true end
    end
end

function Inventory:_AddStackableItemToBackpack(itemToAdd)
    assert(itemToAdd:IsStackable())
    -- First add to existing stacks where possible.
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        assert(self:IsBackpackSlot(slotIndex))
        local itemInSlot = self:GetItem(slotIndex)
        if itemToAdd:WillStackWith(itemInSlot) then
            local amountToAdd = math.min(itemToAdd:GetStackSize(), itemInSlot:GetAvailableStackSpace())
            itemInSlot:SetStackSize(itemInSlot:GetStackSize() + amountToAdd)
            local newStackSize = itemToAdd:GetStackSize() - amountToAdd
            if newStackSize > 0 then
                itemToAdd:SetStackSize(newStackSize)
            else
                return
            end
        end
    end
    -- An empty slot is assumed to exist since this should have been checked already.
    local emptySlotIndex = self:GetFreeBackpackSlot()
    if emptySlotIndex then
        self:_SetSlotItem(emptySlotIndex, itemToAdd)
    end
end

function Inventory:_SetSlotItem(slotIndex, item)
    -- Assumes validation has been done already.
    self.slotItems[slotIndex] = item
    if self:IsEquipSlot(slotIndex) then
        self.equippedItems[slotIndex] = item
        self.isOffhandDisabled = false
        if item then
            local constraints = Item.SLOT_CONSTRAINTS[item:GetType()]
            self.isOffhandDisabled = constraints.isOffhandDisabled or false
        end
        self:_RecalculateStatTotals()
        self:_FireEvent("itemEquippedEvent", slotIndex, item)
    end
end

function Inventory:_RecalculateStatTotals()
    self.statTotals = self.statTotals or {}
    for _,statName in ipairs(Item.STATS) do
        self.statTotals[statName] = 0
    end
    for slotIndex = 1,#Inventory.EQUIP_SLOTS do
        local item = self:GetItem(slotIndex)
        if item then
            if Inventory.EQUIP_SLOTS[slotIndex].slotType == "OffHand" and self.isOffhandDisabled then
                -- We have to be careful to not include offhand stats when they are disabled (by having a 2H weapon in mainhand).
            else
                -- Accumulate stat contribution.
                for _,statName in ipairs(Item.STATS) do
                    local itemStatAmount = item:GetStatTotal(statName)
                    self.statTotals[statName] = self.statTotals[statName] + itemStatAmount
                end
            end
        end
    end
    -- Apply haste stat to player
    if RuntimeContextDetection:IsServerSide() then
        self.owner.maxWalkSpeed = 640 + (self.statTotals["Haste"]*640)/100
    end
end

function Inventory:__tostring()
    local parts = { "Inventory:\n" }
    for slotIndex = 1,Inventory.TOTAL_CAPACITY do
        local item = self.slotItems[slotIndex]
        if self:IsEquipSlot(slotIndex) then
            table.insert(parts, string.format("\t%-10s = %s\n", Inventory.EQUIP_SLOTS[slotIndex].slotType, item and item:GetName() or ""))
        elseif not self:IsEmptySlot(slotIndex) then
            table.insert(parts, string.format("\tpack %02d    = %4dx %s\n",
                slotIndex - #Inventory.EQUIP_SLOTS,
                item and item:GetStackSize(),
                item and item:GetName() or ""))
        end
    end
    return table.concat(parts)
end

return Inventory