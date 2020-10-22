--[[
    Item Systems - Dagger Stats
    For more information see the ItemSystems_README file.
--]]

return {

    -------- Starter Dagger Stats --------
    -- Insert your stats for your starter dagger below here.

    {
        StatKey = 'StarterDagger', -- Base stat key that the dagger looks for when rolling stats
        Group = 'Base',
        Stat = 'Attack',
        Min = '3',
        Max = '3',
        Likelihood = '100', 
        ['Author Notes (will be ignored by script)'] = 'example: the starter dagger we will give to new players.',
    },

    -------- High Level Dagger Stats --------

    -- BASE
    {
      StatKey = 'HighLevelDagger',
      Group = 'Base',
      Stat = 'Attack',
      Min = '40',
      Max = '50',
      Likelihood = '',
      ['Author Notes (will be ignored by script)'] = 'These stats demonstrating that you can have multiple stats on a single item',
    },
    {
      StatKey = 'HighLevelDagger',
      Group = 'Base',
      Stat = 'Attack',
      Min = '45',
      Max = '60',
      Likelihood = '',
      ['Author Notes (will be ignored by script)'] = '',
    },
    -- BONUS1
    {
      StatKey = 'HighLevelDagger',
      Group = 'Bonus1',
      Stat = 'CritChance',
      Min = '5',
      Max = '10',
      Likelihood = '100',
      ['Author Notes (will be ignored by script)'] = '',
    },
    {
      StatKey = 'HighLevelDagger',
      Group = 'Bonus1',
      Stat = 'Attack',
      Min = '10',
      Max = '20',
      Likelihood = '100',
      ['Author Notes (will be ignored by script)'] = '',
    },
    -- BONUS2
    {
      StatKey = 'HighLevelDagger',
      Group = 'Bonus2',
      Stat = 'Magic',
      Min = '3',
      Max = '5',
      Likelihood = '100',
      ['Author Notes (will be ignored by script)'] = '',
    },
    {
      StatKey = 'HighLevelDagger',
      Group = 'Bonus2',
      Stat = 'Attack',
      Min = '3',
      Max = '5',
      Likelihood = '100',
      ['Author Notes (will be ignored by script)'] = '',
    },
    -- BONUS3
    {
      StatKey = 'HighLevelDagger',
      Group = 'Bonus3',
      Stat = 'Attack',
      Min = '3',
      Max = '5',
      Likelihood = '100',
      ['Author Notes (will be ignored by script)'] = '',
    },
  }