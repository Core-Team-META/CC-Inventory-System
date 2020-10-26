--[[
    Player Stats - Comabat Stats
    
    Contains a few functions for crunching damage stats on PVP and just general attack damage.
--]]

local CombatStats = {}
CombatStats.__index = CombatStats

local CRIT_MULTIPLIER = 2.0
local DEFENSE_MULTIPLIER = 5

-- Returns damage calculated from attacker attacking receiver based on both of their stats
function CombatStats:CalculateAttackDamageBetweenPlayers(attacker, receiver) -- player, player
    local attackerStatSheet = attacker.serverUserData.statSheet
    local receiverStatSheet = receiver.serverUserData.statSheet

    -- Roll damage 
    local critChance = attackerStatSheet:GetStatTotalValue("CritChance") / 100.0
    local totalDamage = attackerStatSheet:GetStatTotalValue("Attack")
    if math.random() < critChance then
        totalDamage = totalDamage * CRIT_MULTIPLIER
    end
    -- Damage reduction from defense
    local defense = receiverStatSheet:GetStatTotalValue("Defense")
    local reduction = defense/(DEFENSE_MULTIPLIER*attackerStatSheet:GetLevel()+defense)
    totalDamage = totalDamage-(totalDamage*reduction)
    return Damage.New(totalDamage)
end

function CombatStats:GetAttackDamage(player)
    local attackerStatSheet = player.serverUserData.statSheet
    -- Roll damage 
    local critChance = attackerStatSheet:GetStatTotalValue("CritChance") / 100.0
    local totalDamage = attackerStatSheet:GetStatTotalValue("Attack")
    if math.random() < critChance then
        totalDamage = totalDamage * CRIT_MULTIPLIER
    end
    return Damage.New(totalDamage)
end

-- TODO: Create some methods that some of the important combat stats

return CombatStats