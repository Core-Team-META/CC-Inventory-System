-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local ABILITY = script:FindAncestorByType('Ability')
if not ABILITY:IsA('Ability') then
    error(script.name .. " should be part of Ability object hierarchy.")
end
local EFFECTS_PARENT = script:GetCustomProperty("EffectsParent"):WaitForObject()

local diedHandle = nil

function OnPlayerDied(player, damage)
    TriggerVFX(false)
end

function OnEquipped(equipment, player)
    diedHandle = player.diedEvent:Connect(OnPlayerDied)
    TriggerVFX(false)
end

function OnUnequipped(equipment, player)
    if diedHandle then diedHandle:Disconnect() end
    TriggerVFX(false)
end

function TriggerVFX(trigger)
    if not Object.IsValid(EFFECTS_PARENT) then return end

    for _, effect in ipairs(EFFECTS_PARENT:GetChildren()) do
        if effect:IsA("Vfx") or effect:IsA("Audio") then
            if trigger then
                effect:Play()
            else
                effect:Stop()
            end
        end
    end
end

ABILITY.castEvent:Connect(function() TriggerVFX(true) end)
ABILITY.readyEvent:Connect(function() TriggerVFX(false) end)
ABILITY.cooldownEvent:Connect(function() TriggerVFX(false) end)
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

TriggerVFX(false)