local CombatStats = {}
CombatStats.__index = CombatStats

local CRIT_MULTIPLIER = 2.0

-- Returns damage calculated from player1 attacking player2 based on both of their stats
function CombatStats:GetAttackDamage(player1, player2) -- player, player
end

-- TODO: Create some methods that some of the important combat stats

return CombatStats