--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local WEAPON_ART = script:GetCustomProperty("ClientArt"):WaitForObject()
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

-- Exposed variables --
local AIM_BINDING = SERVER_SCRIPT:GetCustomProperty("AimBinding")
local ZOOM_DISTANCE = SERVER_SCRIPT:GetCustomProperty("AimZoomDistance")
local ZOOM_SPEED = SERVER_SCRIPT:GetCustomProperty("ZoomSpeed")
local ZOOM_OFFSET = SERVER_SCRIPT:GetCustomProperty("ZoomOffset")
local ZOOM_FOV = SERVER_SCRIPT:GetCustomProperty("ZoomFOV")
local SCOPE_TEMPLATE = SERVER_SCRIPT:GetCustomProperty("ScopeTemplate")
local SPREAD_ZOOM = SERVER_SCRIPT:GetCustomProperty("SpreadZoom")

-- Internal handle variables --
local pressedHandle = nil
local releasedHandle = nil
local playerDieHandle = nil

-- Internal camera variables --
local connected = false
local cameraResetFOV = 0
local cameraResetOffset = 0
local cameraResetDistance = 0
local cameraTargetFOV = 0
local cameraTargetDistance = 0
local spreadTarget = 0
local spreadReset = 0
local lerpTime = 0
local spreadLerpTime = 0
local activeCamera = nil
local scopeInstance = nil

function Tick(deltaTime)
    -- Setup the new camera weapon owner
    if WEAPON and WEAPON.owner and not connected then
        if not GetPlayerActiveCamera(WEAPON.owner) then return end

        OnEquipped(WEAPON, WEAPON.owner)
        connected = true
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
    activeCamera.fieldOfView = CoreMath.Lerp(activeCamera.fieldOfView, cameraTargetFOV, lerpTime)
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


 -- Gets player current active camera
 function GetPlayerActiveCamera(player)
    if not Object.IsValid(player) then
        return nil
    end

    if player:GetOverrideCamera() then
        return player:GetOverrideCamera()
    else
        return player:GetDefaultCamera()
    end
end

function EnableScoping(player)
    if player.isDead then return end

    cameraTargetDistance = ZOOM_DISTANCE
    cameraTargetFOV = ZOOM_FOV
    spreadTarget = SPREAD_ZOOM

    lerpTime = 0
    spreadLerpTime = 0
    if Object.IsValid(activeCamera) then
        activeCamera:SetPositionOffset(ZOOM_OFFSET)
    end
    if Object.IsValid(WEAPON_ART) then
        WEAPON_ART.isVisible = false
    end

    if SCOPE_TEMPLATE and not Object.IsValid(scopeInstance) then
        scopeInstance = World.SpawnAsset(SCOPE_TEMPLATE)
        scopeInstance:AttachToLocalView(player)
    elseif Object.IsValid(scopeInstance) then
        scopeInstance.isVisible = true
    end
    UI.SetReticleVisible(false)
    player.isVisibleToSelf = false
    Events.Broadcast("WeaponAiming", player, true)
end

function ResetScoping(player)

    cameraTargetDistance = cameraResetDistance
    cameraTargetFOV = cameraResetFOV
    spreadTarget = spreadReset

    lerpTime = 0
    spreadLerpTime = 0

    if Object.IsValid(activeCamera) then
        activeCamera:SetPositionOffset(cameraResetOffset)
    end
    if Object.IsValid(WEAPON_ART) then
        WEAPON_ART.isVisible = true
    end
    if Object.IsValid(scopeInstance) then
        scopeInstance.isVisible = false
    end
    player.isVisibleToSelf = true
    UI.SetReticleVisible(true)
    Events.Broadcast("WeaponAiming", player, false)
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
        cameraResetFOV = activeCamera.fieldOfView
        cameraResetOffset = activeCamera:GetPositionOffset()

        cameraTargetDistance = cameraResetDistance
        cameraTargetFOV = cameraResetFOV
    end
    spreadTarget = player.spreadModifier
    spreadReset = spreadTarget
    lerpTime = 0
end

function OnUnequipped(weapon, player)
	if (pressedHandle) then pressedHandle:Disconnect() end
	if (releasedHandle) then releasedHandle:Disconnect() end
    if (playerDieHandle) then playerDieHandle:Disconnect() end

    ResetScoping(player)

    -- Remove the reference to the camera
    if Object.IsValid(activeCamera) then
        activeCamera.currentDistance = cameraResetDistance
        activeCamera.fieldOfView = cameraResetFOV
        activeCamera = nil
    end
    if Object.IsValid(scopeInstance) then
        scopeInstance:Destroy()
        scopeInstance = nil
    end
    player.spreadModifier = spreadReset
    connected = false
end

-- Connecting weapon event to a function
WEAPON.unequippedEvent:Connect(OnUnequipped)