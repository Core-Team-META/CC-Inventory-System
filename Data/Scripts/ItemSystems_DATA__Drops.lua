return {

  --[[
    Structure of a loot table

    LootTableName = { -- Drop Key
      { ItemName = '', Likelihood = '' }
    }

    LootTableName: Is the drop key when rolling for items. Items will be rolled from this table.
    ItemName: The name of the Item we're going when we're rolled
    Likelihood: Drop weight of the item.
  ]]

  -- Example loot tables ---------------------------------
  BasicMobTrash = {
    { ItemName = 'Heart Gem', Likelihood = '100' },
    { ItemName = 'Gold Ingot', Likelihood = '100' },
    { ItemName = 'Coderz Blade', Likelihood = '200'},
    { ItemName = 'Warden Eterna Chest', Likelihood = '300'},
    { ItemName = 'Poison Potion', Likelihood = '300'},
  },

  EpicMobLootz = {
    { ItemName = 'Heart Gem', Likelihood = '100'}, -- 25%
    { ItemName = 'Gold Ingot', Likelihood = '100'}, -- 25%
    { ItemName = 'Coderz Blade', Likelihood = '200'}, -- 50%
  },

  AwesomeMobLoot = {
    { ItemName = 'Coderz Blade', Likelihood = '100'} ,-- 100%
  },
  -------------------------------------------------------

}