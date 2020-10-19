--[[
    ItemSystems.Database
    ====================

    Reads and indexes the raw data scripts. Provides factory methods for creating items.
]]
local Item = require(script:GetCustomProperty("Item"))

-- Load the database over a fixed number of frames.
local LOAD_FRAME_LIMIT = 10

local DATA_CATALOGS = {}
local DATA_STATS = {}
for _,itemType in ipairs(Item.TYPES) do
    assert(script:GetCustomProperty(string.format("%s_Catalog", itemType)), "Could not load ItemSystems_DATA_"..itemType.."_Catalog script as it does not exist as a property of the database")
    assert(script:GetCustomProperty(string.format("%s_Stats", itemType)), "Could not load ItemSystems_DATA_"..itemType.."_Stats script as it does not exist as a property of the database")
    table.insert(DATA_CATALOGS, require(script:GetCustomProperty(string.format("%s_Catalog", itemType))))
    table.insert(DATA_STATS, require(script:GetCustomProperty(string.format("%s_Stats", itemType))))
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
    Task.Spawn(function()
        self:_LoadStats()
        self:_LoadCatalog()
        self:_LoadDrops()
        self:_LoadAssetDerivedInformation()
        self.isLoaded = true
    end)
end

function Database:_LoadStats()
    self.itemStatRollInfos = {}
    for _,data in ipairs(DATA_STATS) do
        for _,row in ipairs(data) do
            assert(Item.STATS[row.Stat], string.format("unrecognized item stat %s", row.Stat))
            self.itemStatRollInfos[row.StatKey] = self.itemStatRollInfos[row.StatKey] or { base = {}, bonus = {} }
            local statRollInfos = self.itemStatRollInfos[row.StatKey]
            local rollInfo = { statName = row.Stat, rollMin = tonumber(row.Min), rollMax = tonumber(row.Max), likelihood = tonumber(row.Likelihood) }
            if row.Group == "Base" then
                table.insert(statRollInfos.base, rollInfo)
            else
                assert(rollInfo.likelihood, "bonus stat missing likelihood")
                statRollInfos.bonus[row.Group] = statRollInfos.bonus[row.Group] or { cumulativeLikelihood = 0 }
                local bonusGroup = statRollInfos.bonus[row.Group]
                bonusGroup.cumulativeLikelihood = bonusGroup.cumulativeLikelihood + rollInfo.likelihood
                table.insert(bonusGroup, rollInfo)
            end
        end
    end
end

function Database:_LoadCatalog()
    self.itemDatasByIndex = {}
    self.itemDatasByName = {}
    self.itemDatasByMUID = {}
    local index = 1
    for _,data in ipairs(DATA_CATALOGS) do
        for _,muid in pairs(data) do

            local tempItem = World.SpawnAsset(muid)
            local propName = tempItem:GetCustomProperty("Name")
            local propIcon = tempItem:GetCustomProperty("Icon")
            local propMaxStackableSize = tempItem:GetCustomProperty("MaxStackableSize")
            local propItemType = tempItem:GetCustomProperty("ItemType")
            local propDescription = tempItem:GetCustomProperty("Description")
            local propRarity = tempItem:GetCustomProperty("Rarity")
            local propStatKey = tempItem:GetCustomProperty("StatKey")
            local propEquipmentStance = tempItem:GetCustomProperty("EquipmentStance")
            local propConsumptionEffect = tempItem:GetCustomProperty("ConsumptionEffect")
            tempItem:Destroy()

            if propMaxStackableSize then
                assert(tonumber(propMaxStackableSize) <= 2^12, string.format("item stack size is too large - %s", propName))
            end

            if propConsumptionEffect then
                assert(require(propConsumptionEffect), "Could not require consumption effect script from item - %s", propName)
            end

            assert(not self.itemDatasByName[propName], string.format("duplicate item name is not allowed - %s check your catalogs for duplicate names.", propName))
            assert(not self.itemDatasByMUID[muid], string.format("duplicate item MUID is not allowed - %s", muid))
            assert(Item.TYPES[propItemType], string.format("unrecognized item type - %s from %s you'll need to add the type to ItemSystems_Item script", propItemType, propName))
            assert(Item.RARITIES[propRarity], string.format("unrecognized item rarity - %s check ItemSystems_ItemThemes to make sure this rarity exist.", propRarity))

            if propStatKey ~= nil then
                assert(self.itemStatRollInfos[propStatKey], string.format("unrecognized item stat key - %s ensure %s has the %s key in the ItemSystems_%s_Stats", propStatKey, propName, propStatKey, propItemType))
            end

            local isEquippable = Item.SLOT_CONSTRAINTS[propItemType] and true or false
            local stance = propEquipmentStance or nil
            local maxStackSize = propMaxStackableSize ~= nil and propMaxStackableSize > 1 and propMaxStackableSize or nil
            local itemData = {
                index = index,
                name = propName,
                iconMUID = propIcon,
                type = propItemType,
                rarity = propRarity,
                stance = stance,
                isEquippable = isEquippable,
                maxStackSize = maxStackSize,
                muid = muid:match("^(.+):"), -- these MUIDs are used as keys; strip the irrelevant name part.
                description = propDescription or "",
                statKey = propStatKey,
                consumptionEffect = propConsumptionEffect,
                _RollStats = Database:_GetRollFunction(propStatKey)
            }

            index = index + 1
            self.itemDatasByIndex[itemData.index] = itemData
            self.itemDatasByName[itemData.name] = itemData
            self.itemDatasByMUID[itemData.muid] = itemData
        end
    end
end

function Database:_RollItemStats(item)
    if item:GetStatKey() ~= nil then
        item:RollStats()
    end
end

function Database:_GetRollFunction(StatKey)
    local _RollStats = function()
        local statRollInfos = self.itemStatRollInfos[StatKey]
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
    local data = require(script:GetCustomProperty("Drops"))
    self.itemDropTables = {}
    self.itemDropKeys = {}
    for dropKey,lootTable in pairs(data) do
        if not self.itemDropTables[dropKey] then
            self.itemDropTables[dropKey] = { cumulativeLikelihood = 0 }
            table.insert(self.itemDropKeys, dropKey)
        end
        for i, row in pairs(lootTable) do
            assert(row.ItemName, string.format("loot drop missing name at row - %d at loot table - %s", i, dropKey))
            assert(self:FindItemDataByName(row.ItemName), string.format("loot drop references unknown item - %s at loot table - %s", row.ItemName, dropKey))
            assert(row.Likelihood, string.format("loot drop missing likelihood - %s at loot table - %s", row.ItemName, dropKey))

            local dropTable = self.itemDropTables[dropKey]
            local dropInfo = { itemName = row.ItemName, likelihood = tonumber(row.Likelihood) }
            table.insert(dropTable, dropInfo)
            dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
        end
    end
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