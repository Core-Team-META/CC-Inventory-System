-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local ABILITY = script:FindAncestorByType('Ability')
if not ABILITY:IsA('Ability') then
    error(script.name .. " should be part of Ability object hierarchy.")
end

local diedHandle = nil

function OnPlayerDied(player, damage)
    player:ActivateWalking()
end

function OnEquipped(equipment, player)
    diedHandle = player.diedEvent:Connect(OnPlayerDied)
end

function OnUnequipped(equipment, player)
    if diedHandle then diedHandle:Disconnect() end
    player:ActivateWalking()
end

function StartFlying(ability)
    ability.owner:ActivateFlying()
end

function StopFlying(ability)
    ability.owner:ActivateWalking()
end

ABILITY.executeEvent:Connect(StartFlying)
ABILITY.cooldownEvent:Connect(StopFlying)
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)