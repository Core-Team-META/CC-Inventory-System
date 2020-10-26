--[[
    ItemSystems.Database
    ====================

    Reads and indexes the raw data scripts. Provides factory methods for creating items.
]]
local Item = require(script:GetCustomProperty("Item"))
local LOOT_TABLE = script:GetCustomProperty("LootTable"):WaitForObject()
local REGISTERED_ITEMS = script:GetCustomProperty("RegisteredItems"):WaitForObject()


-- Load the database over a fixed number of frames.
local LOAD_FRAME_LIMIT = 10

-- If true, when the game loads it will log all the catalogs and their items that are registered to that catalog.
local DEBUGLOGLOAD = true 

local DATA_ITEMS = {}

for _, item in pairs(REGISTERED_ITEMS:GetCustomProperties()) do
    table.insert(DATA_ITEMS,item)
end

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
local Database = {}

function Database:WaitUntilLoaded()
    while not self.isLoaded do
        Task.Wait()
    end
end

function Database:CreateItemDropFromName(itemName)
    local itemData = Database:FindItemDataByName(itemName)
    local item = Item.New(itemData)
    self:_RollItemStats(item)
    return item
end

function Database:CreateItemFromDrop(dropKey)
    local itemData = self:_RollDrop(dropKey)
    assert(itemData, string.format("Could not drop item from %s group as the group may not exist in LootTables group.", dropKey))
    local item = Item.New(itemData)
    self:_RollItemStats(item)
    return item 
end

function Database:CreateItemFromHash(itemHash)
    return Item.FromHash(self, itemHash)
end

function Database:CreateItemFromItemData(itemData)
    itemData._RollStats = self:_GetRollFunction(itemData.statKey)
    local item = Item.New(itemData)
    self:_RollItemStats(item)
    return item 
end

function Database:FindItemDataByIndex(itemIndex)
    return self.itemDatasByIndex[itemIndex]
end

function Database:FindItemDataByName(itemName)
    return self.itemDatasByName[itemName]
end

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
        self:_LoadAssetDerivedInformation()
        self.isLoaded = true
    end)
end

-- Finds the stats folder of an item and loads it.
function Database:_LoadStats(item)
    local stats = item:FindChildByName("Stats")
    if stats == nil then return end
    --assert(stats,string.format("%s does not have a stats folder. Add a stats folder and populate it with stats. Use example items as a reference.",item.name))
    self.itemStatRollInfos[item.name] = self.itemStatRollInfos[item.name] or { base = {}, bonus = {} }
    local statRollInfos = self.itemStatRollInfos[item.name]
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

function Database:_LoadItems()
    self.itemDatasByIndex = {}
    self.itemDatasByName = {}
    self.itemDatasByMUID = {}
    local index = 1
    if DEBUGLOGLOAD then print("Loading Items ----------------------------------------------------- \n") end -- Debug
    for _, itemTemplate in ipairs(DATA_ITEMS) do
        local tempItem = World.SpawnAsset(itemTemplate)
        local muid = tempItem.sourceTemplateId
        local name = tempItem.name
        local propName = tempItem:GetCustomProperty("Name")
        local propIcon = tempItem:GetCustomProperty("Icon")
        local propMaxStackableSize = tempItem:GetCustomProperty("MaxStackableSize")
        local propItemType = tempItem:GetCustomProperty("ItemType")
        local propDescription = tempItem:GetCustomProperty("Description")
        local propRarity = tempItem:GetCustomProperty("Rarity")
        local propLevelRequirement = tempItem:GetCustomProperty("LevelRequirement")
        local propEquipmentStance = tempItem:GetCustomProperty("EquipmentStance")
        local propConsumptionEffect = tempItem:GetCustomProperty("ConsumptionEffect")
        self:_LoadStats(tempItem)
        tempItem:Destroy()

        if DEBUGLOGLOAD then print(name) end -- Debug
        if DEBUGLOGLOAD then print("|",muid, "    =",propName) end -- Debug

        if propMaxStackableSize then
            assert(tonumber(propMaxStackableSize) <= 2^12, string.format("item stack size is too large - %s", propName))
        end

        if propConsumptionEffect then
            assert(require(propConsumptionEffect), "Could not require consumption effect script from item - %s", propName)
        end

        assert(not self.itemDatasByName[propName], string.format("duplicate item name is not allowed - %s check your registered items for duplicates", propName))
        assert(not self.itemDatasByMUID[muid], string.format("duplicate item MUID is not allowed - %s", muid))
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
            maxStackSize = maxStackSize,
            muid = muid,
            description = propDescription or "",
            consumptionEffect = propConsumptionEffect,
            _RollStats = Database:_GetRollFunction(name)
        }
        index = index + 1
        self.itemDatasByIndex[itemData.index] = itemData
        self.itemDatasByName[itemData.name] = itemData
        self.itemDatasByMUID[itemData.muid] = itemData
        if DEBUGLOGLOAD then print("\n") end -- Debug
    end
    if DEBUGLOGLOAD then print("Loading Items Ended -----------------------------------------------\n") end -- Debug
end

function Database:_RollItemStats(item)
    item:RollStats()
end

function Database:_GetRollFunction(StatKey)
    local _RollStats = function()
        local statRollInfos = self.itemStatRollInfos[StatKey]
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
    for _, lootTable in pairs(LOOT_TABLE:GetChildren()) do
        if not self.itemDropTables[lootTable.name] then
            self.itemDropTables[lootTable.name] = { cumulativeLikelihood = 0 }
            table.insert(self.itemDropKeys, lootTable.name)
        end
        for _, lootDrop in pairs(lootTable:GetChildren()) do
            local item = lootDrop:GetCustomProperty("Item")
            local likelihood = lootDrop:GetCustomProperty("Likelihood")
            local tempObject = World.SpawnAsset(item)
            local itemName = tempObject:GetCustomProperty("Name")
            assert(self:FindItemDataByName(itemName), string.format("loot drop references unknown item - %s at loot table - %s make sure your item is registered.", itemName, lootTable.name))
            assert(likelihood, string.format("loot drop missing likelihood custom property - %s at loot table - %s", itemName, lootTable.name))
            local dropTable = self.itemDropTables[lootTable.name]
            local dropInfo = { itemName = itemName, likelihood = tonumber(likelihood) }
            table.insert(dropTable, dropInfo)
            dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
            tempObject:Destroy()
        end
    end

    -- for dropKey,lootTable in pairs() do

    --     if not self.itemDropTables[dropKey] then
    --         self.itemDropTables[dropKey] = { cumulativeLikelihood = 0 }
    --         table.insert(self.itemDropKeys, dropKey)
    --     end
    --     for i, row in pairs(lootTable) do
    --         assert(row.ItemName, string.format("loot drop missing name at row - %d at loot table - %s", i, dropKey))
    --         assert(self:FindItemDataByName(row.ItemName), string.format("loot drop references unknown item - %s at loot table - %s", row.ItemName, dropKey))
    --         assert(row.Likelihood, string.format("loot drop missing likelihood - %s at loot table - %s", row.ItemName, dropKey))

    --         local dropTable = self.itemDropTables[dropKey]
    --         local dropInfo = { itemName = row.ItemName, likelihood = tonumber(row.Likelihood) }
    --         table.insert(dropTable, dropInfo)
    --         dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
    --     end
    -- end
end

function Database:_LoadAssetDerivedInformation()
    local itemCount = #self.itemDatasByIndex
    local itemsPerFrame = math.ceil(itemCount / LOAD_FRAME_LIMIT)
    for index,itemData in ipairs(self.itemDatasByIndex) do
        if index % itemsPerFrame == 0 then
            Task.Wait()
        end
        local tempObject = World.SpawnAsset(itemData.muid)
        itemData.icon = tempObject:GetCustomProperty("Icon")
        assert(itemData.icon, string.format("item template %s missing icon property", itemData.muid))
        itemData.iconRotation = tempObject:GetCustomProperty("IconRotation")
        itemData.iconColorTint = tempObject:GetCustomProperty("IconColorTint")
        itemData.animationStance = tempObject:GetCustomProperty("AnimationStance")
        tempObject:Destroy()
    end
end

function Database:_RollDrop(dropKey)
    local dropTable = self.itemDropTables[dropKey]
    if dropTable then
        local roll = math.random() * dropTable.cumulativeLikelihood
        for _,dropInfo in ipairs(dropTable) do
            if roll <= dropInfo.likelihood then
                return self:FindItemDataByName(dropInfo.itemName)   
            end
            roll = roll - dropInfo.likelihood
        end
    end
end

function Database:__tostring()
    return ""
end

return Database