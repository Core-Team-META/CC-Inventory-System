--[[
    ItemSystems.Item
    ================

    Logical representation of an item.
]]
local Base64 = require(script:GetCustomProperty("Base64"))

local Item = {}
Item.__index = Item

---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end return values end

Item.TYPES = Enum{
    -- Add item types here. Create the catalog and stats script for it then add it to the database as a custom property. You may also assign it a loot table.
    -- Refer to Item.SLOT_CONSTRAINTS below if you want your type to have an equipable slot.
    "Sword",
    "Shield",
    "Helmet",
    "Armor",
    "Boots",
    "Trinket",
    --"Ring", -- For the catalog and stats tutorial. Remove the comment.

    -- Specials (Non-Equipables)
    "Misc",
    "Consumable",
}

Item.STATS = Enum{
    "Health",
    "HealthPercent",
    "Attack",
    "Defense",
    "Magic",
    "CritChance",
    "CDR",
    "Haste",
    "Tenacity",
    "Value",
}

Item.RARITIES = Enum{
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
}

-- These are paired with Item.TYPES. If you want your item to be equippable then add your type here.
Item.SLOT_CONSTRAINTS = {
    --Ring        = { slotType = "Accessory" }, -- Remove the comment.
    Armor       = { slotType = "Chest" },
    Axe         = { slotType = "MainHand" },
    Boots       = { slotType = "Feet" },
    Dagger      = { slotType = "MainHand" },
    Greatsword  = { slotType = "MainHand", isOffHandDisabled = true }, -- isOffHandDisabled unequips your shield item in favor of this weapon.
    Helmet      = { slotType = "Head" },
    Mace        = { slotType = "MainHand" },
    Shield      = { slotType = "OffHand" },
    Staff       = { slotType = "MainHand", isOffHandDisabled = true },
    Sword       = { slotType = "MainHand" },
    Trinket     = { slotType = "Accessory" },
    Warhammer   = { slotType = "MainHand", isOffHandDisabled = true },
    Wand        = { slotType = "MainHand" },
}

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
function Item.New(itemData, stackSize, enhancementLevel)
    local o = {}
    setmetatable(o, Item)
    o:_Init(itemData, stackSize, enhancementLevel)
    return o
end

function Item.FromHash(database, itemHash)
    return Item._FromHash(database, itemHash)
end

function Item.StatGreaterThan(item1, item2, statName)
    return item1:GetStatTotal(statName) > item2:GetStatTotal(statName) or false
end

function Item:RuntimeHash()
    return self:_IntoHash(true)
end

function Item:PersistentHash()
    return self:_IntoHash(false)
end

function Item:GetName()
    return self.data.name
end

function Item:GetType()
    return self.data.type
end

function Item:GetIcon()
    return self.data.iconMUID
end

function Item:GetRarity()
    return self.data.rarity
end

function Item:GetStatKey()
    return self.data.statKey
end

function Item:IsEquippable()
    return self.data.isEquippable
end

function Item:GetEquipSlotType()
    if self:IsEquippable() then
        return self.SLOT_CONSTRAINTS[self:GetType()].slotType
    end
end

function Item:IsTwoHanded()
    return self.SLOT_CONSTRAINTS[self:GetType()].isTwoHanded
end

function Item:IsStackable()
    return self.data.maxStackSize ~= nil
end

function Item:GetStackSize()
    return self.stackSize
end

function Item:SetStackSize(stackSize)
    assert(self:IsStackable() and 1 <= stackSize and stackSize <= self:GetMaxStackSize())
    self.stackSize = stackSize
end

function Item:GetMaxStackSize()
    return self.data.maxStackSize
end

function Item:IsFullStack()
    return self:GetStackSize() == self:GetMaxStackSize()
end

function Item:WillStackWith(otherItem)
    return otherItem and self:GetMUID() == otherItem:GetMUID() and self:IsStackable()
end

function Item:GetAvailableStackSpace()
    return self:GetMaxStackSize() - self:GetStackSize()
end

function Item:ApplyIconImageSettings(uiImage)
    uiImage:SetImage(self.data.iconMUID)
    uiImage:SetColor(self.data.iconColorTint or Color.WHITE)
    uiImage.rotationAngle = self.data.iconRotation or 0
    return self.data.iconMUID
end

function Item:GetMUID()
    return self.data.muid
end

function Item:GetAnimationStance()
    return self.data.stance
end

function Item:GetAbilityNames()
    return self.data.abilityNames
end

function Item:GetPassives()
    return self.data.passives
end

function Item:GetDescription()
    return self.data.description
end

function Item:GetStats()
    return self.stats
end

function Item:GetStatTotal(statName)
    return self.statTotals[statName] or 0
end

function Item:CopyStats(other)
    self.stats = {}
    for i,stat in ipairs(other.stats) do
        self.stats[i] = { name = other.stats[i].name, value = other.stats[i].value }
    end
    self:_RecalculateStatTotals()
end

function Item:RollStats()
    self.stats = self.data:_RollStats()
    self:_RecalculateStatTotals()
end

function Item:HasConsumptionEffect()
    return self:GetType() == "Consumable" and self.data.consumptionEffect ~= nil
end

function Item:ApplyConsumptionEffect(player)
    if self.data.consumptionEffect then
        require(self.data.consumptionEffect)(player)
    end
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
local HASH_RUNTIME = "R"
local HASH_PERSISTENT = "P"
local HASH_DELIM_INTRO = "|"
local HASH_DELIM_STAT_BASE = "#"
local HASH_DELIM_STAT_BONUS = "&"
local HASH_DELIM_STAT_EQUALS = "="
local HASH_PATTERN_FULL = "^(.*)|(.*)|(.*)$"
local HASH_PATTERN_STAT = "([#&])([^#&=]+)=(....)"

function Item._StatInfo(statInfo)
    assert(statInfo.name, "stat info missing name")
    assert(statInfo.value, "stat info missing value")
    assert(statInfo.isBase or statInfo.isBonus, "stat must be either base or bonus")
    return statInfo
end

function Item:_Init(itemData, stackSize, enhancementLevel)
    self.data = itemData
    self.stackSize = stackSize or 1
    self.enhancementLevel = enhancementLevel or 0
    self.stats = {}
    self.statTotals = {}
end

function Item:_IntoHash(isRuntime)
    local hashParts = {}
    table.insert(hashParts, isRuntime and HASH_RUNTIME or HASH_PERSISTENT)
    table.insert(hashParts, isRuntime and Base64.Encode24(self.data.index) or self.data.muid)
    table.insert(hashParts, HASH_DELIM_INTRO)
    table.insert(hashParts, Base64.Encode12(self:GetStackSize()))
    table.insert(hashParts, HASH_DELIM_INTRO)
    for _,stat in ipairs(self.stats) do
        local statIndex = self.STATS[stat.name]
        local statDelimiter = stat.isBase and HASH_DELIM_STAT_BASE or HASH_DELIM_STAT_BONUS
        local statKey = isRuntime and Base64.Encode6(statIndex) or stat.name
        local statValue = Base64.Encode24(stat.value)
        table.insert(hashParts, statDelimiter)
        table.insert(hashParts, statKey)
        table.insert(hashParts, HASH_DELIM_STAT_EQUALS)
        table.insert(hashParts, statValue)
    end
    return table.concat(hashParts)
end

function Item._FromHash(database, hash)
    local hashType = hash:sub(1, 1)
    local hashData = hash:sub(2)
    local isRuntime = hashType == HASH_RUNTIME
    local hashItemId, hashStackSize, hashItemStats = hashData:match(HASH_PATTERN_FULL)
    local itemData = nil
    if isRuntime then
        itemData = database:FindItemDataByIndex(Base64.Decode24(hashItemId))
    else
        itemData = database:FindItemDataByMUID(hashItemId)
    end
    if not itemData then
        warn("unable to locate item data for hash: ", hashData)
        return
    end
    local stackSize = hashStackSize and Base64.Decode12(hashStackSize) or nil
    local enhancementLevel = hashEnhancementLevel and Base64.Decode6(hashEnhancementLevel) or nil 
    local item = Item.New(itemData, stackSize, enhancementLevel)
    for statDelimiter,statNameHash,statValueHash in hashItemStats:gmatch(HASH_PATTERN_STAT) do
        local statIsBase = statDelimiter == HASH_DELIM_STAT_BASE or nil
        local statName = isRuntime and Item.STATS[Base64.Decode6(statNameHash)] or statNameHash
        local statValue = Base64.Decode24(statValueHash)
        local statInfo = Item._StatInfo{ 
            name = statName,
            value = statValue,
            isBase = statIsBase or nil,
            isBonus = not statIsBase or nil,
        }
        table.insert(item.stats, statInfo)
    end
    item:_RecalculateStatTotals()
    return item
end

function Item:_RecalculateStatTotals()
    for _,statName in ipairs(Item.STATS) do self.statTotals[statName] = 0 end
    for i,stat in ipairs(self.stats) do
        self.statTotals[stat.name] = self.statTotals[stat.name] + stat.value
    end 
end

function Item:__tostring()
    local s = {}
    table.insert(s, "ITEM:\n")
    table.insert(s, string.format("\tname:   %s\n", self.data.name))
    table.insert(s, string.format("\trarity: %s\n", self.data.rarity))
    for _,stat in ipairs(self.stats) do
        local statType = stat.isBase and "BASE" or "BONUS"
        table.insert(s, string.format("\tstat:   %-5s %-9s %d\n", statType, stat.name, stat.value))
    end
    table.insert(s, string.format("\thash-R: %s\n", self:RuntimeHash()))
    table.insert(s, string.format("\thash-P: %s\n", self:PersistentHash()))
    return table.concat(s)
end
---------------------------------------------------------------------------------------------------------
return Item