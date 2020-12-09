--[[
    ItemSystems.Inventory
    ====================
    Logical representation of an inventory that contains numerous methods that allow you to manage
    the players inventory. Please refer to the ItemSystems_README for detailed information.
]]
local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local Base64 = require(script:GetCustomProperty("Base64"))

local Inventory = {}
Inventory.__index = Inventory

---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end end

-- When enabled on the script it will allow the client to drop items into the world without trashing the item.
Inventory.DROP_ITEM_INSTEAD_OF_DELETE = script:GetCustomProperty("DropItemInsteadOfDelete")

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------

-- Inventory Constructor
function Inventory.New(database, owner, backpackSize, equipSlots)
    local o = {}
    setmetatable(o, Inventory)
    o.EQUIP_SLOTS = not equipSlots and {} or equipSlots
    o.BACKPACK_CAPACITY = backpackSize or 32
    o.TOTAL_CAPACITY = #o.EQUIP_SLOTS + o.BACKPACK_CAPACITY
    assert(o.TOTAL_CAPACITY <= 64, "inventory size limit is 64 for compression reasons")
    o:_Init(database, owner)
    o:_DefineEvent("lootClaimedEvent")
    o:_DefineEvent("itemEquippedEvent")
    o:_DefineEvent("itemUnequippedEvent")
    o:_DefineEvent("itemMovedEvent")
    o:_DefineEvent("itemConsumedEvent")
    o:_DefineEvent("itemDropEvent")
    o:_DefineEvent("itemAdded")
    o:_DefineEvent("itemSetToSlot")
    o:_DefineEvent("itemRemoved")
    o:_DefineEvent("itemRemoveByPercentage")
    o:_DefineEvent("itemRemoveAll")
    o:_DefineEvent("itemSalvage")
    o:_DefineEvent("backpackRemoved")
    o:_DefineEvent("SetLockAbilities")
    o:_DefineEvent("OnInventoryChanged")
    return o
end

-- Load an inventory hash onto the inventory.
function Inventory:LoadHash(hash)
    self:_ClearSlots()
    if hash then
        self:_LoadHash(hash)
    end
    self.hasLoaded = true
end

-- Wait until the inventory hash has loaded.
function Inventory:WaitUntilLoaded()
    while not self.hasLoaded do 
        Task.Wait() 
    end
end

------------------------------------------------------------------------------------------------
-- Inventory Management Methods
------------------------------------------------------------------------------------------------
-- These methods can be called on either the client or server and it will sync with the opposite context.
-- Use get methods from ItemSystems_Database to get construct items and pass them into these functions when needed.
-- The purpose of _hasRepeated is to prevent an infinite context loop since the methods commuinciate to the opposite context.

-- Adds an item to the backpack. With an optional quantity.
function Inventory:AddItem(item, quantity, _hasRepeated) -- item, int, bool (ignore)
    assert(item:GetName(),string.format("%s is not of type ItemSystems_Item. Use the item database to create an item then call this method with your item.",item))
    local storedQuantity = quantity or 1
    local emptySlotIndex = self:GetFreeBackpackSlot()
    if item:IsStackable() then
        quantity = quantity or 1
        item:SetStackSize(quantity)
        self:_AddItemToBackpack(item)
    elseif item:IsBackpack() then
        item:ClearStats()
        item:NewBackpackInventory(Inventory,self.database,self.owner,item:RuntimeHash())
        self:_AddItemToBackpack(item)
    elseif emptySlotIndex then
        self:_SetSlotItem(emptySlotIndex, item) 
    end
    if not _hasRepeated then -- Prevents an infinite context loop.
        -- Replicate the state of the inventory to either client or server.
        self:_FireEvent("itemAdded",item:RuntimeHash(),storedQuantity)
    end
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Sets a slot in the inventory to have an item
function Inventory:SetItemToSlot(item,quantity,slot,_hasRepeated) -- Item item, int quantity, int slot, bool _hasRepeated (ignore)
    assert(item:GetName(),string.format("%s is not of type ItemSystems_Item. Use the item database to create an item then call this method with your item.",item))
    local storedQuantity = quantity or 1
    if item:IsStackable() then
        item:SetStackSize(quantity)
    end
    if item:IsBackpack() then
        item:ClearStats()
        item:NewBackpackInventory(Inventory,self.database,self.owner,item:RuntimeHash())
        self:_AddItemToBackpack(item)
    end
    self:_SetSlotItem(slot, item)
    if not _hasRepeated then -- Prevents an infinite context loop.
        -- Replicate the state of the inventory to either client or server.
        self:_FireEvent("itemSetToSlot",item:RuntimeHash(),storedQuantity,slot)
    end
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Remove an item from the inventory with an optional quantity
function Inventory:RemoveItem(item, quantity, _hasRepeated) -- Item item, int quantity (optional), bool (ignore)
    assert(item:GetName(),string.format("%s is not of type ItemSystems_Item. Use the item database to create an item then call this method with your item.",item))
    assert(quantity > 0,"Quantity can not be less than or equal to zero.")
    local storedQuantity = quantity > 0 and quantity or 1
    local hasItem, slotIndex, _ = self:HasItem(item)
    if hasItem and item:IsStackable() then
        quantity = quantity > 0 and quantity or 1
        item:SetStackSize(quantity)
        self:_RemoveItemFromBackpack(item)
    end
    if not _hasRepeated then -- Prevents an infinite context loop.
        -- Replicate the state of the inventory to either client or server.
        self:_FireEvent("itemRemoved",item:RuntimeHash(),storedQuantity)
    end
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Removes everything from the inventory
function Inventory:RemoveAllItems(_hasRepeated) -- bool _hasRepeated (ignore)
    self:LoadHash("R")
    if not _hasRepeated then -- Prevents an infinite context loop.
        self:_FireEvent("itemRemoveAll",self.owner)
    end
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Removes a percentage of items from the inventory
function Inventory:RemoveItemsByPercentage(percent,_seed,_hasRepeated) -- int percent( 1 - 100 ), int _seed (Ignore), bool _hasRepeated (Ignore)
    assert(percent > 0 and percent <= 100, string.format("provided percentage is not valid. - %d",percent))
    local itemsSum = self:GetItemsSum()
    local items = self:GetAllItems()
    local itemsToRemove = math.ceil(itemsSum*(percent/100))
    local seed = _seed or os.time()
    local function RemoveItems_R(items,removeAmount,seed)
        Task.Wait()
        math.randomseed(seed)
        if #items == 0 then return end
        local itemIndex = math.random(1,#items)
        local randomItem = items[itemIndex].item
        local randomSlot = items[itemIndex].slot
        if randomItem:IsStackable() then
            local randomAmount
            randomAmount = math.random(1,randomItem:GetStackSize())
            removeAmount = CoreMath.Clamp(removeAmount - randomAmount,0,math.huge)
            local newItem = self.database:GetItemFromName(randomItem:GetName())
            newItem:SetStackSize(randomAmount)
            if newItem:GetStackSize() == randomItem:GetStackSize() then
                table.remove(items,itemIndex)
                self:_RemoveItemFromBackpack(newItem)
            elseif removeAmount <= 1 then
                table.remove(items,itemIndex)
                self:_SetSlotItem(randomSlot,nil)
            end
        else
            removeAmount = removeAmount - 1
            table.remove(items,itemIndex)
            self:_SetSlotItem(randomSlot,nil)
        end
        if removeAmount > 0 then
            RemoveItems_R(items,removeAmount,seed+1)
        end
    end
    RemoveItems_R(items,itemsToRemove,seed)
    if not _hasRepeated then -- Prevents an infinite context loop.
        -- Replicate the state of the inventory to either client or server.
        self:_FireEvent("itemRemoveByPercentage",percent,seed)
    end
    self:_FireEvent("OnInventoryChanged",self.owner)
end


-- Returns true if the the inventory has the item and a slotindex of the item in the inventory. Returns nil if nothing is found.
function Inventory:HasItem(item,quantity) -- item, int
    quantity = quantity or 1
    for i, inventoryItem in self:IterateEntireInventory() do
        if inventoryItem and inventoryItem:GetMUID() == item:GetMUID() and self:GetItemStackSum(inventoryItem) >= quantity then
            return true, i, self:GetItemStackSum(inventoryItem)
        end
    end
    return false, nil, 0
end

-- Returns the sum of all the stacks of a particular item
function Inventory:GetItemStackSum(item) -- item
    local stackSize = 0
    for i, inventoryItem in self:IterateEntireInventory() do
        if inventoryItem and inventoryItem:GetMUID() == item:GetMUID() and inventoryItem:GetStackSize() then
            stackSize = stackSize + inventoryItem:GetStackSize()
        end
    end
    return stackSize
end

-- Returns the sum of all items in the inventory
function Inventory:GetItemsSum()
    local sum = 0
    for i, inventoryItem in self:IterateEntireInventory() do
        if inventoryItem then
            sum = sum + inventoryItem:GetStackSize()
        end
    end
    return sum
end

-- Returns a table of all the items along with their slot index and quantity
function Inventory:GetAllItems()
    local items = {}
    for i, inventoryItem in self:IterateEntireInventory() do
        if inventoryItem then
            table.insert(items,{
                slot = i,
                item = inventoryItem,
                quantity = inventoryItem:GetStackSize()
            })
        end
    end
    return items
end

------------------------------------------------------------------------------------------------
-- Inventory Iterators
------------------------------------------------------------------------------------------------
-- These methods are used for iterating through specific parts of the inventory.
--
-- This is an example of iterating through the backpack slots.
-- for slotIndex, item in self:IterateBackpackSlots() do end

-- Get a table of equipped items
function Inventory:IterateEquipSlots()
    local function iter(_, slotIndex)
        slotIndex = slotIndex + 1
        if slotIndex <= #self.EQUIP_SLOTS then
            return slotIndex, self:GetItem(slotIndex)
        end
    end
    return iter, nil, 0 
end

-- Get a table of backpack items
function Inventory:IterateBackpackSlots()
    local startingSlot = #self.EQUIP_SLOTS
    local function iter(_, slotIndex)
        slotIndex = slotIndex == 0 and startingSlot or slotIndex
        slotIndex = slotIndex + 1
        if slotIndex <= self.BACKPACK_CAPACITY + startingSlot then
            return slotIndex, self:GetItem(slotIndex)
        end
    end
    return iter, nil, 0 
end

-- Get a table of all items
function Inventory:IterateEntireInventory()
    local function iter(_, slotIndex)
        slotIndex = slotIndex + 1
        if slotIndex <= self.TOTAL_CAPACITY then
            return slotIndex, self:GetItem(slotIndex)
        end
    end
    return iter, nil, 0 
end
------------------------------------------------------------------------------------------------

-- Converts the 1-based backpack index into the correct inventory slot index.
function Inventory:ConvertBackpackSlotIndex(backpackIndex)
    assert(1 <= backpackIndex and backpackIndex <= self.BACKPACK_CAPACITY)
    return #self.EQUIP_SLOTS + backpackIndex
end

-- Converts the slot type (and optional offset) into the correct inventory slot index.
function Inventory:ConvertEquipSlotIndex(slotType, slotNumber)
    slotNumber = slotNumber or 1
    local number = 0
    for i,equipSlot in ipairs(self.EQUIP_SLOTS) do
        if equipSlot.slotType == slotType then
            number = number + 1
            if number == slotNumber then return i end
        end
    end
end

-- True if the slot represents a backpack item.
function Inventory:IsBackpackSlot(slotIndex)
    return slotIndex and #self.EQUIP_SLOTS < slotIndex and slotIndex <= self.TOTAL_CAPACITY
end

-- True if the slot represents an equipped item.
function Inventory:IsEquipSlot(slotIndex)
    return slotIndex and 1 <= slotIndex and slotIndex <= #self.EQUIP_SLOTS
end

-- True if the slot accepts the given type.
function Inventory:IsEquipSlotType(slotIndex, slotType)
    return self:IsEquipSlot(slotIndex) and self.EQUIP_SLOTS[slotIndex].slotType == slotType
end

-- True if the slot is empty.
function Inventory:IsEmptySlot(slotIndex)
    return self.slotItems[slotIndex] == nil
end

-- True if the slot is the primary weapon slot.
function Inventory:IsMainHandSlot(slotIndex)
    return slotIndex == 1
end

-- True if the slot is the offhand weapons slot.
function Inventory:IsOffHandSlot(slotIndex)
    return slotIndex == 2
end 

-- True if the slot is a trinket slot.
function Inventory:IsTrinketSlot(slotIndex)
    return slotIndex >= 6 and slotIndex <= 8
end 

-- True if the offhand slot is disabled.
function Inventory:IsSlotEnabled(slotIndex)
    if self:IsOffHandSlot(slotIndex) then
        return not self.isOffHandDisabled
    else
        return true
    end
end

-- True if the slot is the primary weapon slot.
function Inventory:IsPrimaryWeaponSlot(slotIndex)
    return slotIndex == 1
end

-- True if the backpack is full.
function Inventory:IsBackpackFull()
    return self:GetFreeBackpackSlot() == nil
end

-- Get the item at the given slot index.
function Inventory:GetItem(slotIndex)  -- int slotIndex
    return self.slotItems[slotIndex]
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

-- Gets the first free backpack slot and returns the slot index.
function Inventory:GetFreeBackpackSlot()
    for slotIndex = #self.EQUIP_SLOTS+1,self.TOTAL_CAPACITY do
        if self:IsBackpackSlot(slotIndex) and self:IsEmptySlot(slotIndex) then
            return slotIndex
        end
    end
end

-- Gets the first free matching equip slot and returns the slot index.
function Inventory:GetFreeEquipSlot(slotType) -- string slotType
    for slotIndex = 1,#self.EQUIP_SLOTS do
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
function Inventory:GetStatDeltas(compareItem) -- Item compareItem
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

-- Move an item. If there is an item in the destination slot the items will swap. Acts as delete if destination slot is zero.
-- If the destination is nil then it will drop the item.
function Inventory:MoveItem(fromSlotIndex, toSlotIndex) -- int fromSlotIndex, int toSlotIndex
    -- If it's being thrown out of the inventory and we allowed item drops.
    if self.DROP_ITEM_INSTEAD_OF_DELETE and toSlotIndex == nil then
        if self.owner and (self.owner:IsA("Player")) then if(self.owner.isDead) then return end end
        self:_FireEvent("itemDropEvent", fromSlotIndex, toSlotIndex)
        self:_FireEvent("OnInventoryChanged",self.owner)
        self:_SetSlotItem(fromSlotIndex, nil)
        return
    elseif not self.DROP_ITEM_INSTEAD_OF_DELETE and toSlotIndex == nil then
        self:_SetSlotItem(fromSlotIndex, nil)
    -- If zero is provided then the item is not dropped and it will instead be deleted.
    elseif toSlotIndex == 0 then
        self:_SetSlotItem(fromSlotIndex, nil)
    end
    if not self:CanMoveItem(fromSlotIndex, toSlotIndex) then return end

    -- Item stack fill when dropping on a matching item
    local hasStacked = self:_StackSlotOntoSlot(fromSlotIndex,toSlotIndex)

    -- Item swapping
    local swapItem = nil
    if toSlotIndex and not hasStacked then
        swapItem = self.slotItems[toSlotIndex]
        self:_SetSlotItem(toSlotIndex, self.slotItems[fromSlotIndex])
    end

    if not hasStacked then
        self:_SetSlotItem(fromSlotIndex, swapItem)
    end

    
    self:_FireEvent("itemMovedEvent", fromSlotIndex, toSlotIndex)
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Registers a loot item with the inventory. This will display the loot item in the loot window.
function Inventory:RegisterLootItem(lootInfo, onLootClaimed) -- string itemHash, function onLootClaimed
    local lootID, lootHash = lootInfo:match("^(.*)@(.*)$")
    if self.lootInfos[lootID] then return end -- If already registered don't reregister.
    local lootInfo = {
        isClaimed = false,
        id = lootID,
        hash = lootHash,
        item = self.database:CreateItemFromHash(lootHash),
        onLootClaimed = onLootClaimed, -- Callback
    }
    self.lootInfos[lootID] = lootInfo
end

-- Unregister the loot item with the inventory. This will remove it from the loot window.
function Inventory:UnRegisterLootItem(lootID) -- CoreObject lootWorldObject
    self.lootInfos[lootID] = nil
end

-- True if the claim operation is valid.
function Inventory:CanClaimLoot(lootID) -- int lootID
    local lootInfo = self.lootInfos[lootID]
    if lootInfo and not lootInfo.isClaimed then
        if lootInfo.item:IsStackable() then
            return self:_CanAccommodateStackableItem(lootInfo.item)
        else
            return self:GetFreeBackpackSlot() ~= nil
        end
    end
end

-- True if the claim operation is valid.
function Inventory:CanClaimLootIgnoreOverflow(lootID) -- int lootID
    local lootInfo = self.lootInfos[lootID]
    if lootInfo and not lootInfo.isClaimed then
        if lootInfo.item:IsStackable() then
            return self:_CanAccommodateStackableIgnoringOverflow(lootInfo.item) > 0
        else
            return self:GetFreeBackpackSlot() ~= nil
        end
    end
end

-- Transfer a loot item into inventory and mark as claimed.
function Inventory:ClaimLoot(lootID) -- int lootID
    local lootInfo = self.lootInfos[lootID]
    if lootInfo and not lootInfo.isClaimed then
        lootInfo.isClaimed = true
        if lootInfo.item:IsStackable() then
            self:_AddItemToBackpack(lootInfo.item)
        elseif lootInfo.item:IsBackpack() then
            lootInfo.item:ClearStats()
            lootInfo.item:NewBackpackInventory(Inventory,self.database,self.owner,lootInfo.hash)
            self:_AddItemToBackpack(lootInfo.item)
        else
            local slotIndex = self:GetFreeBackpackSlot()
            self:_SetSlotItem(slotIndex, lootInfo.item)
        end
        self:_FireEvent("lootClaimedEvent", lootInfo.id)
        self:_FireEvent("OnInventoryChanged",self.owner)
        if lootInfo.onLootClaimed then lootInfo.onLootClaimed() end
    end
end

-- Get a specific loot item.
function Inventory:GetLootItem(lootID) -- int lootID
    return self.lootInfos[lootID] and self.lootInfos[lootID].item or nil
end

-- Get information for all loots registered to this inventory.
function Inventory:GetLootInfos()
    return self.lootInfos
end

-- Salvages an item from a slot.
function Inventory:SalvageItem(slotIndex) -- int slotIndex
    local item = self:GetItem(slotIndex)
    if not item then return end
    self:_FireEvent("itemSalvage",slotIndex)
    self:_FireEvent("OnInventoryChanged",self.owner)
    if item:IsStackable() then
        local newItem = Inventory:_Copy(item)
        newItem:SetStackSize(1)
        self:_RemoveItemFromBackpack(newItem)
    else
        self:_SetSlotItem(slotIndex,nil)
    end

    local components = item:GetSalvageComponents()
    for _, component in pairs(components) do
        local item = self.database:GetItemFromMUID(component.item)
        if item:IsStackable() then
            item:SetStackSize(component.amount)
        end
        self:_AddItemToBackpack(item)
    end
end

-- Checks if the item in a given slot can be salvaged.
function Inventory:CanAddSalvageProducts(slotIndex) -- int slotIndex
    -- Check to see if we can stack with an existing item and if not then insert it into an empty space
    local components = self:GetItem(slotIndex):GetSalvageComponents()
    local willTakeItemSlot = true
    local freeSlots = {}
    local takenSlots = {}

    -- Mark all slots as free initally
    for backpackSlotIndex, _ in self:IterateBackpackSlots() do
        table.insert(freeSlots,backpackSlotIndex)
    end

    for _, component in pairs(components) do
        local componentItem = self.database:GetItemFromMUID(component.item)
        local canAdd = false
        -- If the component is stackable then check to see if it can be added to an existing stack.
        if componentItem:IsStackable() then
            componentItem:SetStackSize(component.amount)
            local allowAdd, hasReplacedSalvagedItem, filledSlotIndexs = self:_CanAccommodateStackableItemAfterSalvage(componentItem, slotIndex, willTakeItemSlot, takenSlots)
            canAdd = allowAdd
            
            -- Remove any taken slots.
            if filledSlotIndexs then
                for i, freeSlotIndex in ipairs(freeSlots) do
                    for _, takenSlotIndex in pairs(filledSlotIndexs) do
                        if freeSlotIndex == takenSlotIndex then
                            freeSlots[i] = nil
                        end
                    end
                end
            end

            if canAdd then
                canAdd = true
                -- if our stackable item has taken the salvaged item slot then don't allow anything else to replace it.
                if hasReplacedSalvagedItem then
                    willTakeItemSlot = false
                end
            end
        end
        if not componentItem:IsStackable() and not canAdd then
            -- Check for empty spot since the item is not stackable.
            for i, backpackIndex in pairs(freeSlots) do
                local slotItem = self:GetItem(backpackIndex)
                -- If the item we're salvaging is the slot index then mark it as we're replacing it.
                if backpackIndex == slotIndex and willTakeItemSlot then
                    freeSlots[i] = nil
                    canAdd = true
                    willTakeItemSlot = false
                    break
                -- If there is an open slot
                elseif not slotItem then 
                    freeSlots[i] = nil
                    canAdd = true
                    break
                end
            end
        end
        if not canAdd then
            -- If a single component can not be added then return false.
            return false
        end
    end
    -- If all components can be added then return true.
    return true
end

-- Consume one item at the specified index.
function Inventory:ConsumeItem(slotIndex) -- int slotIndex
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
        self:_FireEvent("OnInventoryChanged",self.owner)
    end
end

-- Opens a backpack at a slot index
function Inventory:OpenBackpack(slotIndex)
    local item = self:GetItem(slotIndex)
    if item:IsBackpack() then
        Events.Broadcast("BackpackOpen",item:GetBackpackInventory(),slotIndex)
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
function Inventory:UpdateEquipSlotFromHash(slotIndex, itemHash) -- int slotIndex, string itemHash
    assert(self:IsEquipSlot(slotIndex))
    local item = nil
    if #itemHash > 0 then
        item = self.database:CreateItemFromHash(itemHash)
    end
    self:_SetSlotItem(slotIndex, item)
    self:_FireEvent("OnInventoryChanged",self.owner)
end

-- Sets the lock of the players abilities
function Inventory:UpdateLockAbilities(isLocked) -- bool isLocked
    self:_FireEvent("SetLockAbilities",isLocked)
end


---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function Inventory:_Init(database, owner)
    self.hasLoaded = false
    self.database = database
    self.owner = owner
    self.lootInfos = {}
    self:_ClearSlots()
    self:_UpdateSlotStatus()
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
    for slotIndex = 1,self.TOTAL_CAPACITY do
        local item = self:GetItem(slotIndex)
        if item then
            local slotId = Base64.Encode6(slotIndex)
            if not isRuntime then
                if self:IsEquipSlot(slotIndex) then
                    slotId = "E" .. self.EQUIP_SLOTS[slotIndex].slotType
                else
                    slotId = "B" .. Base64.Encode6(slotIndex - #self.EQUIP_SLOTS)
                end
            end
            table.insert(hashParts, string.format("<%s>", slotId))
            table.insert(hashParts, item:_IntoHash(isRuntime))
            table.insert(hashParts, ";")
        end
    end
    return table.concat(hashParts)
end

local SLOT_PATTERN = "<([^<>;]+)>([^<>;]+)<([^<>;]+)>;"
function Inventory:_LoadHash(hash)
    local hashType = hash:sub(1,1)
    local hashData = hash:sub(2)
    local isRuntime = hashType == "R"
    local currentBackpack = self
    local currentCount = 0
    for slotId,itemHash,subItemCount in hashData:gmatch(SLOT_PATTERN) do
        if currentCount > 0 then -- Populate current backpack and not the inventory
            currentCount = currentCount - 1
        else
            currentBackpack = self
        end

        local slotIndex = nil
        if isRuntime then
            slotIndex = Base64.Decode6(slotId)
        elseif slotId:sub(1,1) == "B" then
            slotIndex = #currentBackpack.EQUIP_SLOTS + Base64.Decode6(slotId:sub(2))
        elseif slotId:sub(1,1) == "E" then
            slotIndex = currentBackpack:GetFreeEquipSlot(slotId:sub(2))
        end

        local newItem = Item.FromHash(self.database, itemHash)
        local copyItem = nil
        if not newItem then
            warn("The inventory has failed to load an item. This item may not exist in the item registry. The item has been deleted from the inventory.")
            currentBackpack:_SetSlotItem(slotIndex, nil)
        elseif currentBackpack then
            copyItem = self:_Copy(newItem)
            currentBackpack:_SetSlotItem(slotIndex, copyItem)
        elseif currentBackpack == nil then
            currentBackpack = self
        end


        if newItem and copyItem and copyItem:IsBackpack() then -- Constructs an inventory for the backpack
            copyItem:ClearStats() -- Backpacks can not have stats.
            copyItem:NewBackpackInventory(Inventory,self.database,self.owner,itemHash)
            currentBackpack = copyItem:GetBackpackInventory()
            currentCount = tonumber(subItemCount) 
        end
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
            return self[eventName]
        end,
        Disconnect = function(_, handler)
            table.remove(self.eventHandlers[eventName], handler)
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

function Inventory:_CanAccommodateItem(item)
   if self:GetFreeBackpackSlot() or
        self:_CanAccommodateStackableItem(item) then
        return true
    else
        return false
    end
end

function Inventory:_StackSlotOntoSlot(fromSlotIndex, toSlotIndex)
    local fromItem, toItem = self:GetItem(fromSlotIndex), self:GetItem(toSlotIndex)
    if fromItem and toItem then
        if toItem:WillStackWith(fromItem) and not toItem:IsFullStack() and not fromItem:IsFullStack() then
            local amountToAdd = math.min(fromItem:GetStackSize(), toItem:GetAvailableStackSpace())
            toItem:SetStackSize(toItem:GetStackSize() + amountToAdd)
            local newStackSize = fromItem:GetStackSize() - amountToAdd
            if newStackSize > 0 then
                fromItem:SetStackSize(newStackSize)
            else
                self:_SetSlotItem(fromSlotIndex,nil)
            end
            return true
        end
    end
    return false
end

function Inventory:_StackItemOntoSlot(item, toSlotIndex)
    local toItem = self:GetItem(toSlotIndex)
    if item and toItem then
        if toItem:WillStackWith(item) and not toItem:IsFullStack() then
            local amountToAdd = math.min(item:GetStackSize(), toItem:GetAvailableStackSpace())
            toItem:SetStackSize(toItem:GetStackSize() + amountToAdd)
            local newStackSize = item:GetStackSize() - amountToAdd
            if newStackSize > 0 then
                item:SetStackSize(newStackSize)
            else
                item:SetStackSize(0)
            end
            return item, toItem:GetStackSize()
        end
    end
    return item, nil
end

function Inventory:_CanAccommodateAfterRemovalOfItems(tableOfItems)
    local items = self:GetAllItems()
    for _, index in pairs(tableOfItems) do
        for _, itemSlot in pairs(items) do
            if (itemSlot.item:GetName() == index.item:GetName()) then
                if(index.quantity >= itemSlot.quantity) then return true else
                    itemSlot.quantity = itemSlot.quantity - index.quantity
                    index.quantity = 0
                end
            end
        end
    end
end


function Inventory:_CanAccommodateStackableItem(item)
    if not item:IsStackable() then return end
    local stackSpace = 0
    for slotIndex, _ in self:IterateBackpackSlots() do
        assert(self:IsBackpackSlot(slotIndex))
        if self:IsEmptySlot(slotIndex) then
            stackSpace = stackSpace + item:GetMaxStackSize()
        elseif item:WillStackWith(self:GetItem(slotIndex)) then
            stackSpace = stackSpace + self:GetItem(slotIndex):GetAvailableStackSpace()
        end
        -- Check if we have enough and exit early.
        if stackSpace >=  item:GetStackSize() then return true end
    end
end

function Inventory:_CanAccommodateStackableItemAfterSalvage(item, salvagedSlotIndex, willTakeSalvagedSlot, alreadyFilledSlotIndexs)
    if not item:IsStackable() then return end
    local stackSpace = 0
    local hasReplacedSalvageSlot = false
    local filledSlotIndexs = alreadyFilledSlotIndexs or {}
    for slotIndex, _ in self:IterateBackpackSlots() do
        assert(self:IsBackpackSlot(slotIndex))
        local isOpen = true
        -- Make sure the slot is not already waiting to be assigned.
        for i, filledIndex in pairs(filledSlotIndexs) do
            if filledIndex == slotIndex then
                isOpen = false
            end
        end

        -- If the slot is open and has not already been taken when provided the already filled slot indexs.
        if isOpen then
            if self:IsEmptySlot(slotIndex) or slotIndex == salvagedSlotIndex then
                stackSpace = stackSpace + item:GetMaxStackSize()
                if slotIndex == salvagedSlotIndex and willTakeSalvagedSlot then
                    hasReplacedSalvageSlot = true
                end
                table.insert(filledSlotIndexs,slotIndex)
            elseif item:WillStackWith(self:GetItem(slotIndex)) then
                stackSpace = stackSpace + self:GetItem(slotIndex):GetAvailableStackSpace()
            end
        end

        -- Check if we have enough and exit early.
        if stackSpace >=  item:GetStackSize() then return true, hasReplacedSalvageSlot, filledSlotIndexs end
    end
end


function Inventory:_CanAccommodateStackableIgnoringOverflow(item)
    if not item:IsStackable() then return end
    local stackSpace = 0
    for slotIndex, _ in self:IterateBackpackSlots() do
        assert(self:IsBackpackSlot(slotIndex))
        if self:IsEmptySlot(slotIndex) then
            stackSpace = stackSpace + item:GetMaxStackSize()
        elseif item:WillStackWith(self:GetItem(slotIndex)) then
            stackSpace = stackSpace + self:GetItem(slotIndex):GetAvailableStackSpace()
        end
    end
    -- Return Overflow Amount
    return stackSpace
end

function Inventory:_AddItemToBackpack(itemToAdd)
    -- First add to existing stacks where possible.
    for slotIndex, itemInSlot in self:IterateBackpackSlots() do
        if itemInSlot and itemToAdd:WillStackWith(itemInSlot) and not itemInSlot:IsFullStack() then
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
    -- Second add the item to an empty slot if there is nothing to stack into
    if itemToAdd:IsStackable() then
        for slotIndex, itemInSlot in self:IterateBackpackSlots() do
            if not itemInSlot then
                local copyItem = self:_Copy(itemToAdd)
                local amountToAdd = math.min(itemToAdd:GetStackSize(), itemToAdd:GetMaxStackSize())
                itemToAdd:SetStackSize(itemToAdd:GetStackSize() - amountToAdd)
                copyItem:SetStackSize(amountToAdd)
                self:_SetSlotItem(slotIndex, copyItem)
                if itemToAdd:GetStackSize() == 0 then
                    return
                end
            end
        end
    else
        for slotIndex, item in self:IterateBackpackSlots() do
            if not item then
                self:_SetSlotItem(slotIndex, itemToAdd)
                return
            end
        end
    end
end

function Inventory:_RemoveItemFromBackpack(itemToRemove)
    -- First remove from existing stacks where possible.
    for slotIndex = #self.EQUIP_SLOTS+1,self.TOTAL_CAPACITY do
        local itemInSlot = self:GetItem(slotIndex)
        if itemInSlot and itemToRemove:GetMUID() == itemInSlot:GetMUID() then
            local slotStackSize = itemInSlot:GetStackSize()
            if slotStackSize <= itemToRemove:GetStackSize() then
                itemToRemove:SetStackSize(itemToRemove:GetStackSize() - slotStackSize)
                self:_SetSlotItem(slotIndex,nil)
            else
                itemInSlot:SetStackSize(slotStackSize - itemToRemove:GetStackSize())
                return
            end
        end
    end
end

function Inventory:_Clear()
    for i=1,self.BACKPACK_CAPACITY do
        self.slotItems[i] = nil
    end
end

function Inventory:_SetSlotItem(slotIndex, item)
    -- Assumes validation has been done already.
    local itemBeforeSet = self:GetItem(slotIndex)
    -- If the backpack item is removed then fire the event.
    if itemBeforeSet and itemBeforeSet:IsBackpack() and not item then
        self:_FireEvent("backpackRemoved",slotIndex)
    end

    self.slotItems[slotIndex] = item
    if self:IsEquipSlot(slotIndex) then
        self.equippedItems[slotIndex] = item
        self.isOffhandDisabled = false
        if item then
            local constraints = Item.SLOT_CONSTRAINTS[item:GetType()]
            self.isOffhandDisabled = constraints.isOffhandDisabled or false
        end
        self:_UpdateSlotStatus()
        self:_RecalculateStatTotals()
        self:_FireEvent("itemEquippedEvent", slotIndex, item)
    end
end

function Inventory:_UpdateSlotStatus()
    self.isOffHandDisabled = false
    local mainHandItem = self:GetItem(1)
    if mainHandItem and mainHandItem:IsTwoHanded() then
        self.isOffHandDisabled = true
    end
end

function Inventory:_RecalculateStatTotals()
    self.statTotals = self.statTotals or {}
    for _,statName in ipairs(Item.STATS) do
        self.statTotals[statName] = 0
    end
    for slotIndex = 1,#self.EQUIP_SLOTS do
        local item = self:GetItem(slotIndex)
        if item then
            if self.EQUIP_SLOTS[slotIndex].slotType == "OffHand" and self.isOffHandDisabled then
                return
            else
                -- Accumulate stat contribution.
                for _,statName in ipairs(Item.STATS) do
                    local itemStatAmount = item:GetStatTotal(statName)
                    self.statTotals[statName] = self.statTotals[statName] + itemStatAmount
                end
            end
        end
    end
end

-- Used for copying an item table by value.
-- Credit: https://stackoverflow.com/questions/640642/how-do-you-copy-a-lua-table-by-value
function Inventory:_Copy(obj, seen)
    if type(obj) ~= 'table' then return obj end
    if seen and seen[obj] then return seen[obj] end
    local s = seen or {}
    local res = setmetatable({}, getmetatable(obj))
    s[obj] = res
    for k, v in pairs(obj) do res[self:_Copy(k, s)] = self:_Copy(v, s) end
    return res
end

function Inventory:__tostring()
    local parts = { "Inventory:\n" }
    for slotIndex = 1,self.TOTAL_CAPACITY do
        local item = self.slotItems[slotIndex]
        if self:IsEquipSlot(slotIndex) then
            table.insert(parts, string.format("\t%-10s = %s\n", self.EQUIP_SLOTS[slotIndex].slotType, item and item:GetName() or ""))
        elseif not self:IsEmptySlot(slotIndex) then
            table.insert(parts, string.format("\tpack %02d    = %4dx %s\n",
                slotIndex - #self.EQUIP_SLOTS,
                item and item:GetStackSize(),
                item and item:GetName() or ""))
        end
    end
    return table.concat(parts)
end

return Inventory