--[[
    ItemSystems.Database
    ====================

    Reads and indexes the raw data scripts. Provides factory methods for creating items.
]]

local Item = require(script:GetCustomProperty("Item"))

local LOOT_TABLE = World.FindObjectByName("LootTables"):GetChildren()
local SALVAGE_TABLE = World.FindObjectByName("Salvagables"):GetChildren()
local REGISTERED_ITEMS = World.FindObjectByName("RegisteredItems")

--local LOOT_TABLE = script:GetCustomProperty("LootTable"):WaitForObject():GetChildren()
--local SALVAGE_TABLE = script:GetCustomProperty("SalvageTable"):WaitForObject():GetChildren()
--local REGISTERED_ITEMS = script:GetCustomProperty("RegisteredItems"):WaitForObject()


-- Load the database over a fixed number of frames.
local LOAD_FRAME_LIMIT = 10

-- If true, when the game loads it will log all the catalogs and their items that are registered to that catalog.
local DEBUGLOGLOAD = false 

local DATA_ITEMS = {}

local function HasRequiredProperties(item)
    if item:GetCustomProperty("Name") and
        item:GetCustomProperty("Icon") and
        item:GetCustomProperty("ItemType") and
        item:GetCustomProperty("Rarity") then
        return true
    else
        return false
    end
end

-- Recursively load the item database.
local function LoadItems_R(root)
    if not root then return end
    for _, item in pairs(root:GetChildren()) do
        if HasRequiredProperties(item) then
            table.insert(DATA_ITEMS,item)
        elseif #item:GetChildren() > 0 then
            LoadItems_R(item)
        end
    end
end
LoadItems_R(REGISTERED_ITEMS)

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
local Database = {}

function Database:WaitUntilLoaded()
    while not self.isLoaded do
        Task.Wait()
    end
end

-------------- Item Factory Methods --------------
-- These methods are for creating items without stats.
-- This is useful for adding items to the inventory or checking for items.

function Database:GetItemFromName(itemName)
    local itemData = Database:FindItemDataByName(itemName)
    local item = Item.New(itemData)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right name?",itemName))
    end
    return item
end

function Database:GetItemFromMUID(muid)
    local itemData = Database:FindItemDataByFullMUID(muid) or Database:FindItemDataByMUID(muid)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right muid?",muid))
    end
    local item = Item.New(itemData)
    return item
end

function Database:GetItemFromIndex(index)
    local itemData = Database:FindItemDataByIndex(index)
    local item = Item.new(itemData)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right index?",index))
    end
    return item
end

function Database:CreateItemFromHash(itemHash)
    local item = Item.FromHash(self, itemHash)
    if not item then
        warn(string.format("Failed to create item - %s from database. This may not be a valid hash.",itemHash))
    end
    return item
end

-------------- Loot Factory Methods ---------------
-- These methods are for creating items that roll for stats
-- This is useful for creating items that roll for stats.
-- This framework does not use stats on items.

function Database:CreateLootItemFromName(itemName)
    local itemData, min, max = Database:FindItemDataByName(itemName)
    local item = Item.New(itemData)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right name?",itemName))
    end
    if min and max then
        item:SetStackSize(math.random(min,max))
    end
    self:_RollItemStats(item)
    return item
end

function Database:CreateLootItemFromMUID(muid)
    local itemData, min, max = Database:FindItemDataByFullMUID(muid) or Database:FindItemDataByMUID(muid)
    local item = Item.New(itemData)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right muid?",muid))
    end
    if min and max then
        item:SetStackSize(math.random(min,max))
    end
    self:_RollItemStats(item)
    return item
end

function Database:CreateLootItemFromIndex(index)
    local itemData, min, max = Database:FindItemDataByIndex(index)
    local item = Item.new(itemData)
    if not itemData then
        warn(string.format("Failed to create item - %s from database. Are you sure this is the right index?",index))
    end
    if min and max then
        item:SetStackSize(math.random(min,max))
    end
    self:_RollItemStats(item)
    return item
end

function Database:CreateLootItemFromDropKey(dropKey)
    local itemData, min, max = self:_RollDrop(dropKey)
    if not itemData then
        warn(string.format([[ 
        Failed to create item from - %s loot table. Does this loot table exist in item registry?
        ]],dropKey))
        return nil
    end
    if itemData == nil or itemData == "Empty" then return end
    --assert(itemData, string.format("Could not drop an item from %s loot table as it does not exist.", dropKey))
    local item = Item.New(itemData)
    if min and max then
        item:SetStackSize(math.random(min,max))
    end
    self:_RollItemStats(item)
    return item 
end

function Database:CreateLootItemFromItemData(itemData)
    itemData._RollStats = self:_GetRollFunction(itemData.statKey)
    local item = Item.New(itemData)
    self:_RollItemStats(item)
    return item 
end
-----------------------------------------------

-- Returns a table containing the data of an item when provided with the name of the item. Example: 1
function Database:FindItemDataByIndex(itemIndex)
    return self.itemDatasByIndex[itemIndex]
end

-- Returns a table containing the data of an item when provided with the name of the item. Example: Wood
function Database:FindItemDataByName(itemName)
    return self.itemDatasByName[itemName]
end

-- Returns a table containing the data of an item when provided with a full MUID. Example: F2F89CB6DC0893B7:ITEM_Misc_Wood
function Database:FindItemDataByFullMUID(itemMUID)
    return self.itemDatasByMUIDFull[itemMUID]
end

-- Returns a table containing the data of an item when provided with a MUID. Example: F2F89CB6DC0893B7
function Database:FindItemDataByMUID(itemMUID)
    return self.itemDatasByMUID[itemMUID]
end

function Database:RandomDropKey()
    return self.itemDropKeys[math.random(#self.itemDropKeys)]
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function Database:_Init()
    self.itemStatRollInfos = {}
    Task.Spawn(function()
        self:_LoadItems()
        self:_LoadDrops()
        self.isLoaded = true
    end)
end

-- Finds the stats folder of an item and loads it.
function Database:_LoadStats(item,itemPropName)
    local stats = item:FindChildByName("Stats")
    if stats == nil then return end
    self.itemStatRollInfos[itemPropName] = self.itemStatRollInfos[itemPropName] or { base = {}, bonus = {} }
    local statRollInfos = self.itemStatRollInfos[itemPropName]
    for _,statFolder in ipairs(stats:GetChildren()) do
        if statFolder.name == "Base" then
            for _, stat in ipairs(statFolder:GetChildren()) do
                local min = stat:GetCustomProperty("Min")
                local max = stat:GetCustomProperty("Max")
                local likelihood = stat:GetCustomProperty("Likelihood")
                local rollInfo = { statName = stat.name, rollMin = tonumber(min), rollMax = tonumber(max), likelihood = tonumber(likelihood) }
                table.insert(statRollInfos.base, rollInfo)
            end
        else
            for _, stat in ipairs(statFolder:GetChildren()) do
                local min = stat:GetCustomProperty("Min")
                local max = stat:GetCustomProperty("Max")
                local likelihood = stat:GetCustomProperty("Likelihood")
                statRollInfos.bonus[statFolder.name] = statRollInfos.bonus[statFolder.name] or { cumulativeLikelihood = 0 }
                local bonusGroup = statRollInfos.bonus[statFolder.name]
                bonusGroup.cumulativeLikelihood = bonusGroup.cumulativeLikelihood + likelihood
                local rollInfo = { statName = stat.name, rollMin = tonumber(min), rollMax = tonumber(max), likelihood = tonumber(likelihood) }
                table.insert(bonusGroup, rollInfo)
            end
        end
    end
end

-- Finds the assiociated salvage components folder for the item and loads the componenents into a table
function Database:_LoadSalvageComponents(itemTemplate)
    for _, salvagableItem in pairs(SALVAGE_TABLE) do
        if salvagableItem:GetCustomProperty("ItemToSalvage") == itemTemplate then
            local resources = {}
            for i, component in pairs(salvagableItem:GetChildren()) do
                local componentProperties = component:GetCustomProperties()
                assert(componentProperties["ItemProduct"],string.format("%s in salvagables folder contains a component that does not have an assigned item.",salvagableItem.name))
                local item = componentProperties["ItemProduct"] -- The item asset reference
                local amount = componentProperties["Amount"] or 1 -- The amount of that item
                table.insert(resources,{ item = item, amount = amount })
            end
            return resources ~= {} and resources or nil
        end
    end
end

function Database:_LoadItems()
    self.itemDatasByIndex = {}
    self.itemDatasByName = {}
    self.itemDatasByMUIDFull = {}
    self.itemDatasByMUID = {}
    local index = 1
    if DEBUGLOGLOAD then print("Loading Items ----------------------------------------------------- \n") end -- Debug
    for index, item in ipairs(DATA_ITEMS) do
        if index % LOAD_FRAME_LIMIT == 0 then Task.Wait() end
        local itemMUID = item:GetCustomProperty("Item")
        local propName = item:GetCustomProperty("Name")
        local propIcon = item:GetCustomProperty("Icon")
        local propMaxStackableSize = item:GetCustomProperty("MaxStackableSize")
        local propItemType = item:GetCustomProperty("ItemType")
        local propDescription = item:GetCustomProperty("Description")
        local propRarity = item:GetCustomProperty("Rarity")
        local propLevelRequirement = item:GetCustomProperty("LevelRequirement")
        local propEquipmentStance = item:GetCustomProperty("EquipmentStance")
        local propConsumptionEffect = item:GetCustomProperty("ConsumptionEffect")
        local propBackpackSlotCount = item:GetCustomProperty("BackpackSlotCount")
        local isBackpack = propBackpackSlotCount and true or false
        local salvageComponents = self:_LoadSalvageComponents(itemMUID) -- Load salvage components for the item
        self:_LoadStats(item,propName) -- Load stats from the item

        if DEBUGLOGLOAD then print(propName) end -- Debug
        if DEBUGLOGLOAD then print("|",itemMUID, "    =",propName) end -- Debug

        if propMaxStackableSize then
            assert(tonumber(propMaxStackableSize) <= 2^12, string.format("item stack size is too large - %s", propName))
        end

        if propConsumptionEffect then
            assert(require(propConsumptionEffect), "Could not require consumption effect script from item - %s", propName)
        end

        assert(not self.itemDatasByName[propName], string.format("duplicate item name is not allowed - %s check your registered items for duplicates", propName))
        assert(not self.itemDatasByMUIDFull[itemMUID], string.format("duplicate item MUID is not allowed - %s on item: %s", itemMUID, propName))
        assert(Item.SLOT_CONSTRAINTS[propItemType], string.format("unrecognized item type - %s from %s add your item type to the ItemTypes folder in ItemRegistry", propItemType, propName))
        assert(Item.RARITIES[propRarity], string.format("unrecognized item rarity - %s check ItemSystems_ItemThemes to make sure this rarity exist.", propRarity))

        local isEquippable = Item.SLOT_CONSTRAINTS[propItemType] and true or false
        local stance = propEquipmentStance or nil
        local maxStackSize = propMaxStackableSize ~= nil and propMaxStackableSize > 1 and propMaxStackableSize or nil
        local itemData = {
            index = index,
            name = propName,
            iconMUID = propIcon,
            type = propItemType,
            rarity = propRarity,
            levelRequirement = propLevelRequirement,
            stance = stance,
            isEquippable = isEquippable,
            isBackpack = isBackpack,
            backpackSlotCount = propBackpackSlotCount,
            maxStackSize = maxStackSize,
            muid = itemMUID:match("^(.+):"),
            description = propDescription or "",
            consumptionEffect = propConsumptionEffect,
            salvageComponents = salvageComponents,
            _RollStats = Database:_GetRollFunction(propName)
        }

        index = index + 1
        self.itemDatasByIndex[itemData.index] = itemData
        self.itemDatasByName[itemData.name] = itemData
        self.itemDatasByMUIDFull[itemMUID] = itemData
        self.itemDatasByMUID[itemMUID:match("^(.+):")] = itemData
        if DEBUGLOGLOAD then print("\n") end -- Debug
    end
    if DEBUGLOGLOAD then print("Loading Items Ended -----------------------------------------------\n") end -- Debug
end

function Database:_RollItemStats(item)
    item:RollStats()
end

function Database:_GetRollFunction(itemName)
    local _RollStats = function()
        local statRollInfos = self.itemStatRollInfos[itemName]
        if statRollInfos == nil then return end -- If the item does not have stats.
        local stats = {}
        for _,rollInfo in ipairs(statRollInfos.base) do
            local statInfo = Item._StatInfo{
                name = rollInfo.statName,
                value = math.random(rollInfo.rollMin, rollInfo.rollMax),
                isBase = true,
            }
            table.insert(stats, statInfo)
        end
        for _,bonusGroup in pairs(statRollInfos.bonus) do
            local roll = math.random() * bonusGroup.cumulativeLikelihood
            for _,rollInfo in ipairs(bonusGroup) do
                if roll <= rollInfo.likelihood then
                    local statInfo = Item._StatInfo{
                        name = rollInfo.statName,
                        value = math.random(rollInfo.rollMin, rollInfo.rollMax),
                        isBonus = true
                    }
                    table.insert(stats, statInfo)
                    break
                end
                roll = roll - rollInfo.likelihood
            end
        end
        return stats
    end
    return _RollStats
end

function Database:_LoadDrops()
    self.itemDropTables = {}
    self.itemDropKeys = {}
    for _, lootTable in pairs(LOOT_TABLE) do
        if not self.itemDropTables[lootTable.name] then
            self.itemDropTables[lootTable.name] = { cumulativeLikelihood = 0 }
            table.insert(self.itemDropKeys, lootTable.name)
        end
        for _, lootDrop in pairs(lootTable:GetChildren()) do
            local propItem = lootDrop:GetCustomProperty("Item")
            local item = propItem and propItem:GetObject() or "Empty"
            local likelihood = lootDrop:GetCustomProperty("Likelihood")
            local minQuantity = lootDrop:GetCustomProperty("MinimumStackWhenDropped")
            local maxQuantity = lootDrop:GetCustomProperty("MaximumStackWhenDropped")
            if item == "Empty" and likelihood then
                local dropTable = self.itemDropTables[lootTable.name]
                local dropInfo = { itemName = "Empty", likelihood = tonumber(likelihood)}
                table.insert(dropTable, dropInfo)
                dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
            elseif item ~= "Empty" then
                local itemName = item:GetCustomProperty("Name")
                if not self:FindItemDataByName(itemName) then
                    warn(string.format("%s group inside the loot table - %s. The group's item property does not reference a registered item.",lootDrop.name,lootTable.name))
                end
                if not likelihood then
                    warn(string.format("Likelihood property is missing from %s in loot table %s",lootDrop.name,lootTable.name))
                end
                if itemName and likelihood then
                    local dropTable = self.itemDropTables[lootTable.name]
                    local dropInfo = { itemName = itemName, likelihood = tonumber(likelihood), min = minQuantity, max = maxQuantity }
                    table.insert(dropTable, dropInfo)
                    dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
                end
            end
        end
    end
end

function Database:_RollDrop(dropKey)
    local dropTable = self.itemDropTables[dropKey]
    if dropTable then
        local roll = math.random() * dropTable.cumulativeLikelihood
        for _,dropInfo in ipairs(dropTable) do
            if roll <= dropInfo.likelihood then
                local item, min, max = self:FindItemDataByName(dropInfo.itemName), dropInfo.min, dropInfo.max 
                if dropInfo.itemName == "Empty" then
                    return "Empty", min, max
                end
                return item, min, max
            end
            roll = roll - dropInfo.likelihood
        end
    end
end

function Database:__tostring()
    return ""
end

return Database