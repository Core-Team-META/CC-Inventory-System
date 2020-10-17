return {

  --[[
    Structure of a loot table

    LootTableName = { -- Drop Key
      { ItemName = '', Likelihood = '' }
    }

    LootTableName: Is the drop key when rolling for items. Items will be rolled from this table.
    ItemName: The name of the Item we're going to load 
    Likelihood: Drop weight of the item.
  ]]

  -- Example loot tables ---------------------------------
  BasicMobTrash = {
    { ItemName = 'Warden Eterna Boots', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Chest', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Helm', Likelihood = '100' }, -- 25%
    { ItemName = 'Example Sword', Likelihood = "100" }, -- 25%
  },

  GoodMobLoot = {
    { ItemName = "Example Shield", Likelihood = "100" }, -- 50%
    { ItemName = "Example Trinket", Likelihood = "100"}, -- 50%
  },

  AnotherExample = {
    { ItemName = 'Warden Eterna Boots', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Chest', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Helm', Likelihood = '200' }, -- 50%
  },
  -------------------------------------------------------

}