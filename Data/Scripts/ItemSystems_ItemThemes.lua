--[[
    ItemSystems.ItemThemes
    ================

    The Customizable properties of the Item System.
]]

local RARITY_COLORS = {
    Common      = script:GetCustomProperty("RarityCommon"),
    Uncommon    = script:GetCustomProperty("RarityUncommon"),
    Rare        = script:GetCustomProperty("RarityRare"),
    Epic        = script:GetCustomProperty("RarityEpic"),
    Legendary   = script:GetCustomProperty("RarityLegendary"),
}

local RARITY_INDICATORS = {
    Common      = script:GetCustomProperty("RarityCommonIndicator"),
    Uncommon    = script:GetCustomProperty("RarityUncommonIndicator"),
    Rare        = script:GetCustomProperty("RarityRareIndicator"),
    Epic        = script:GetCustomProperty("RarityEpicIndicator"),
    Legendary   = script:GetCustomProperty("RarityLegendaryIndicator"),
}

local STAT_ICONS = {
    Health          = script:GetCustomProperty("StatIconHealth"),
    HealthPercent   = script:GetCustomProperty("StatIconHealth"),
    Defense         = script:GetCustomProperty("StatIconDefense"),
    Attack          = script:GetCustomProperty("StatIconAttack"),
    Magic           = script:GetCustomProperty("StatIconMagic"),
    CritChance      = script:GetCustomProperty("StatIconCritChance"),
    Haste           = script:GetCustomProperty("StatIconHaste"),
    CDR             = script:GetCustomProperty("StatIconCDR"),
    Tenacity        = script:GetCustomProperty("StatIconTenacity"),
    Value           = script:GetCustomProperty("StatIconValue"),
}

local ITEM_STAT_FORMATS = {
    Health          = "+%d",
    HealthPercent   = "+%d%%",
    Defense         = "+%d",
    Attack          = "+%d",
    Magic           = "+%d",
    CritChance      = "+%d%%",
    Haste           = "+%d%%",
    CDR             = "+%d%%",
    Tenacity        = "+%d%%",
    Value           = "+%d",
}

local PLAYER_STAT_FORMATS = {
    Health          = "%d",
    Defense         = "%d",
    Attack          = "%d",
    Magic           = "%d",
    CritChance      = "%d%%",
    Haste           = "%d%%",
    CDR             = "%d%%",
    Tenacity        = "%d%%",
}

local PLAYER_STAT_DISPLAY_NAMES = {
    Health          = "Health",
    Defense         = "Defense",
    Attack          = "Attack",
    Magic           = "Magic",
    CritChance      = "Crit Chance",
    Haste           = "Haste",
    CDR             = "Cooldown Reduction",
    Tenacity        = "Tenacity"
}

local PLAYER_STAT_EXPLANATIONS = {
    Health          = "Increases hitpoints",
    Defense         = "Reduces damage taken",
    Attack          = "Increases physical damage dealt",
    Magic           = "Increases magical damage dealt",
    CritChance      = "Increases critical strike chance",
    Haste           = "Increases running speed",
    CDR             = "Reduces ability cooldown time",
    Tenacity        = "Reduces hostile status effect duration",
}

local ITEM_SFX = {
    --Ring       = script:GetCustomProperty("SFX_EquipRing"),
    Armor      = script:GetCustomProperty("SFX_EquipArmor"),
    Axe        = script:GetCustomProperty("SFX_EquipAxe"),
    Boots      = script:GetCustomProperty("SFX_EquipBoots"),
    Dagger     = script:GetCustomProperty("SFX_EquipDagger"),
    Greatsword = script:GetCustomProperty("SFX_EquipGreatsword"),
    Focus      = script:GetCustomProperty("SFX_EquipFocus"),
    Helmet     = script:GetCustomProperty("SFX_EquipHelmet"),
    Mace       = script:GetCustomProperty("SFX_EquipMace"),
    Shield     = script:GetCustomProperty("SFX_EquipShield"),
    Staff      = script:GetCustomProperty("SFX_EquipStaff"),
    Sword      = script:GetCustomProperty("SFX_EquipSword"),
    Trinket    = script:GetCustomProperty("SFX_EquipTrinket"),
    Warhammer  = script:GetCustomProperty("SFX_EquipWarhammer"),
    Wand       = script:GetCustomProperty("SFX_EquipWand"),
    Misc       = script:GetCustomProperty("SFX_MiscPickup"),
    Consumable = script:GetCustomProperty("SFX_ConsumablePickup"),

}

return {
    GetRarityColor = function(rarity)
        return Color.New(RARITY_COLORS[rarity])
    end,

    GetRarityLootIndicator = function(rarity)
        return RARITY_INDICATORS[rarity]
    end,

    GetStatIcon = function(statName)
        return STAT_ICONS[statName]
    end,

    GetItemStatFormattedValue = function(statName, statValue)
        return string.format(ITEM_STAT_FORMATS[statName], statValue)
    end,

    GetPlayerStatFormattedValue = function(statName, statValue)
        return string.format(PLAYER_STAT_FORMATS[statName], statValue)
    end,
    
    GetPlayerStatDisplayName = function(statName)
        return PLAYER_STAT_DISPLAY_NAMES[statName]
    end,

    GetPlayerStatExplanation = function(statName)
        return PLAYER_STAT_EXPLANATIONS[statName]
    end,

    GetItemSFX = function(itemType)
        local SuprressWarning = false -- Change this to true if you don't care about warning messages.
        if not ITEM_SFX[itemType] then
            if not SuprressWarning then
                warn(string.format("Item type: %s does not have an associated SFX custom property. This will default to Misc SFX. Consider adding one to ItemThemes or supress the warning inside the script.",itemType))
            end
            return ITEM_SFX["Misc"]
        end
        return ITEM_SFX[itemType]
    end,
}