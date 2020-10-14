-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables --
local AIM_BINDING = script:GetCustomProperty("AimBinding")
local AIM_WALK_SPEED_PERCENTAGE = script:GetCustomProperty("AimWalkSpeedPercentage")
local AIM_ACTIVE_STANCE = script:GetCustomProperty("AimActiveStance")

-- Internal variables --
local speedReduced = 0
local pressedHandle = nil
local releasedHandle = nil
local playerDieHandle = nil
local UNARMED_STANCE = "unarmed_stance"

-- Player states variables
local isMounted = false
local isAiming = false

function Tick(deltaTime)
    if not Object.IsValid(WEAPON) then return end
    if not Object.IsValid(WEAPON.owner) then return end

    -- Makes sure that the walk speed resets properly when player mounts
    if isMounted ~= WEAPON.owner.isMounted then
        if isAiming and not WEAPON.owner.isMounted then
            SetAimingSpeed(WEAPON.owner)
        elseif not isAiming then
            ResetPlayerSpeed(WEAPON.owner)
        end
        isMounted = WEAPON.owner.isMounted
    end
end

function SetAimingSpeed(player)
    if Object.IsValid(player) and player == WEAPON.owner then
        if not player.isMounted and speedReduced == 0 then
            speedReduced = player.maxWalkSpeed * AIM_WALK_SPEED_PERCENTAGE
            player.maxWalkSpeed = player.maxWalkSpeed - speedReduced
        end
        player.animationStance = AIM_ACTIVE_STANCE
    end
end

function ResetPlayerSpeed(player)
    if WEAPON and Object.IsValid(player) then
        if not player.isMounted then
            player.maxWalkSpeed = player.maxWalkSpeed + speedReduced
            speedReduced = 0
        end
        player.animationStance = WEAPON.animationStance
    end
end

function OnBindingPressed(player, actionName)
    if actionName == AIM_BINDING then
        SetAimingSpeed(player)
        isAiming = true
	end
end

function OnBindingReleased(player, actionName)
    if actionName == AIM_BINDING then
        ResetPlayerSpeed(player)
        isAiming = false
	end
end

function OnPlayerDied(player, damage)
    ResetPlayerSpeed(player)
end

function OnEquipped(weapon, player)
    if not CAN_AIM then return end

    pressedHandle = player.bindingPressedEvent:Connect(OnBindingPressed)
    releasedHandle = player.bindingReleasedEvent:Connect(OnBindingReleased)
    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)
end

function OnUnequipped(weapon, player)
    if not CAN_AIM then return end

    if (pressedHandle) then pressedHandle:Disconnect() end
    if (releasedHandle) then releasedHandle:Disconnect() end
    if (playerDieHandle) then playerDieHandle:Disconnect() end

    -- Reset player speed and animation stance on unequip
    ResetPlayerSpeed(player)
    player.animationStance = UNARMED_STANCE
end

-- Connecting weapon event to functions
WEAPON.equippedEvent:Connect(OnEquipped)
WEAPON.unequippedEvent:Connect(OnUnequipped)