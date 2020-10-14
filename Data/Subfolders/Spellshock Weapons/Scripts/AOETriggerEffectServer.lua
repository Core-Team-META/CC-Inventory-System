-- Internal custom properties
local ABES = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

-- User exposed properties
local EFFECT_NAME = ROOT:GetCustomProperty("EffectName")
local SET_DURATION = ROOT:GetCustomProperty("SetDuration")
local EFFECT_DURATION = ROOT:GetCustomProperty("EffectDuration")
local SET_ANIMATION_STANCE = ROOT:GetCustomProperty("SetAnimationStance")
local ANIMATION_STANCE = ROOT:GetCustomProperty("AnimationStance")
local SPEED_MODIFIER = ROOT:GetCustomProperty("SpeedModifier")
local FREEZE_MOVEMENT = ROOT:GetCustomProperty("FreezeMovement")
local FREEZE_ABILITIES = ROOT:GetCustomProperty("FreezeAbilities")
local STOP_ON_END_OVERLAP = ROOT:GetCustomProperty("StopOnEndOverlap")
local STOP_ON_DESTROYED = ROOT:GetCustomProperty("StopOnDestroyed")
local PLAYER_VFX = ROOT:GetCustomProperty("PlayerVFX")
local PLAYER_VFX_SOCKET = ROOT:GetCustomProperty("PlayerVFXSocket")

-- Internal variables
local playersInTrigger = {}
local checked = false

-- bool, number IsPlayerInTrigger(Player)
function IsPlayerInTrigger(player)
    for _, playerInTrigger in ipairs(playersInTrigger) do
        if playerInTrigger == player then
            return true
        end
    end
    return false
end

-- nil RemovePlayerFromTable(Player)
function RemovePlayerFromTable(player)
    for index, playerInTrigger in ipairs(playersInTrigger) do
        if playerInTrigger == player then
            table.remove(playersInTrigger, index)
            return
        end
    end
end

function GetEffect()
    local newEffect = {}
    newEffect.name = EFFECT_NAME
    if SET_DURATION then
        newEffect.duration = EFFECT_DURATION
    end
    if SET_ANIMATION_STANCE then
        newEffect.animationStance = ANIMATION_STANCE
    end
    newEffect.freezeMovement = FREEZE_MOVEMENT
    newEffect.freezeAbilities = FREEZE_ABILITIES
    newEffect.vfx = PLAYER_VFX
    newEffect.vfxSocket = PLAYER_VFX_SOCKET
    newEffect.speedModifier = SPEED_MODIFIER
    newEffect.sourceAbility = ROOT.serverUserData.sourceAbility

    return newEffect
end

function Tick()
    -- Check overlapping objects within the trigger on spawn
    if TRIGGER and not checked then
        for _, value in ipairs(TRIGGER:GetOverlappingObjects()) do
            OnBeginOverlap(TRIGGER, value)
        end
        checked = true
    end
end

function OnBeginOverlap(_, other)
    if other:IsA("Player") then
        if not IsPlayerInTrigger(other) then
            table.insert(playersInTrigger, other)
            local newEffect = GetEffect()
            ABES.ApplyEffect(other, newEffect.name, newEffect)
        end
	end
end

function OnEndOverlap(_, other)
    if other:IsA("Player") then
        if IsPlayerInTrigger(other) then
            RemovePlayerFromTable(other)
            if STOP_ON_END_OVERLAP then
                ABES.RemoveEffect(other, EFFECT_NAME)
            end
        end
    end
end

function OnRootDestroyed()
    if STOP_ON_DESTROYED then
        for index, playerInTrigger in ipairs(playersInTrigger) do
            ABES.RemoveEffect(playerInTrigger, EFFECT_NAME)
            table.remove(playersInTrigger, index)
        end
    end
end

-- Initialize event connections
TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
ROOT.destroyEvent:Connect(OnRootDestroyed)
