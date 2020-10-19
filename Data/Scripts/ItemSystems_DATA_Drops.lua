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
    { ItemName = 'Warden Eterna Boots', Likelihood = '100' }, -- 12.5%
    { ItemName = 'Warden Eterna Chest', Likelihood = '100' }, -- 12.5%
    { ItemName = 'Warden Eterna Helm', Likelihood = '100' }, -- 12.5%
    { ItemName = 'Example Sword', Likelihood = '100' }, -- 12.5%
    { ItemName = 'Example Misc Candle', Likelihood = '100'}, -- 12.5%
    { ItemName = 'Example Shield', Likelihood = '100'}, -- 12.5%
    { ItemName = 'Example Trinket', Likelihood = '100'}, -- 12.5%
    { ItemName = 'Example Consumable', Likelihood = '100' }, -- 12.5%
    
    --{ ItemName = 'Your item name here', Likelihood = '500' }, -- Example. Insert your Item Name into ItemName and uncomment.
  },

  GoodMobLoot = {
    { ItemName = 'Example Shield', Likelihood = '100' }, -- 50%
    { ItemName = 'Example Trinket', Likelihood = '100'}, -- 50%
  },

  ConsumableLoot = {
    { ItemName = 'Example Consumable', Likelihood = '100' },
  },

  AnotherExample = {
    { ItemName = 'Warden Eterna Boots', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Chest', Likelihood = '100' }, -- 25%
    { ItemName = 'Warden Eterna Helm', Likelihood = '200' }, -- 50%
  },
  -------------------------------------------------------

}