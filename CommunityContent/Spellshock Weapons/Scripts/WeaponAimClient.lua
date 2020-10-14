-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

-- Exposed variables --
local AIM_BINDING = SERVER_SCRIPT:GetCustomProperty("AimBinding")
local ZOOM_DISTANCE = SERVER_SCRIPT:GetCustomProperty("AimZoomDistance")
local SPREAD_ZOOM = SERVER_SCRIPT:GetCustomProperty("SpreadZoom")
local ZOOM_SPEED = SERVER_SCRIPT:GetCustomProperty("ZoomSpeed")

-- Internal handle variables --
local pressedHandle = nil
local releasedHandle = nil
local playerDieHandle = nil

-- Internal camera variables --
local cameraResetDistance = 0
local cameraTargetDistance = 0
local spreadTarget = 0
local spreadReset = 0
local lerpTime = 0
local spreadLerpTime = 0
local activeCamera = nil

function Tick(deltaTime)

    if not Object.IsValid(WEAPON) then return end

    -- Setup the new camera weapon owner
    if WEAPON and WEAPON.owner and not Object.IsValid(activeCamera) then
        OnEquipped(WEAPON, WEAPON.owner)
    end

    -- Smoothly lerps the camera distance when player aims
    LerpCameraDistance(deltaTime)
    LerpSpread(deltaTime)
end

function LerpCameraDistance(deltaTime)
    if lerpTime >= 1 then return end
    if not Object.IsValid(activeCamera) then return end

    if cameraTargetDistance == ZOOM_DISTANCE then
        lerpTime = lerpTime + deltaTime * ZOOM_SPEED
    else
        lerpTime = lerpTime + deltaTime
    end
    activeCamera.currentDistance = CoreMath.Lerp(activeCamera.currentDistance, cameraTargetDistance, lerpTime)
end

function LerpSpread(deltaTime)
    if spreadLerpTime >= 1 then return end
    if not Object.IsValid(WEAPON) then return end
    if not Object.IsValid(WEAPON.owner) then return end

    if spreadTarget == SPREAD_ZOOM then
        spreadLerpTime = spreadLerpTime + deltaTime * ZOOM_SPEED
    else
        spreadLerpTime = spreadLerpTime + deltaTime
    end
    WEAPON.owner.spreadModifier = CoreMath.Lerp(WEAPON.owner.spreadModifier, spreadTarget, spreadLerpTime)
end

function GetPlayerActiveCamera(player)
    if not Object.IsValid(player) then
        return nil
    end

    if player:GetDefaultCamera() and not player:GetOverrideCamera() then
        return player:GetDefaultCamera()
    elseif player:GetOverrideCamera() then
        return player:GetOverrideCamera()
    else
        return nil
    end
end

function EnableScoping(player)
    if player.isDead then return end
    cameraTargetDistance = ZOOM_DISTANCE
    spreadTarget = SPREAD_ZOOM
    lerpTime = 0
    spreadLerpTime = 0
end

function ResetScoping(player)
    cameraTargetDistance = cameraResetDistance
    spreadTarget = spreadReset
    lerpTime = 0
    spreadLerpTime = 0
end

function OnBindingPressed(player, actionName)
    if actionName == AIM_BINDING then
        EnableScoping(player)
	end
end

function OnBindingReleased(player, actionName)
    if actionName == AIM_BINDING then
        ResetScoping(player)
	end
end

function OnPlayerDied(player, damage)
    ResetScoping(player)
end

function OnEquipped(weapon, player)
    pressedHandle = player.bindingPressedEvent:Connect(OnBindingPressed)
    releasedHandle = player.bindingReleasedEvent:Connect(OnBindingReleased)
    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)

    -- Setting new active camera
    activeCamera = GetPlayerActiveCamera(player)
    if Object.IsValid(activeCamera) then
        cameraResetDistance = activeCamera.currentDistance
        cameraTargetDistance = cameraResetDistance
    end
    lerpTime = 0
    spreadTarget = player.spreadModifier
    spreadReset = spreadTarget
end

function OnUnequipped(weapon, player)
	if (pressedHandle) then pressedHandle:Disconnect() end
	if (releasedHandle) then releasedHandle:Disconnect() end
    if (playerDieHandle) then playerDieHandle:Disconnect() end

    ResetScoping(player)

    -- Remove the reference to the camera
    if Object.IsValid(activeCamera) then
        activeCamera.currentDistance = cameraResetDistance
        activeCamera = nil
    end
    player.spreadModifier = spreadReset
end

-- Connecting weapon event to a function
WEAPON.unequippedEvent:Connect(OnUnequipped)