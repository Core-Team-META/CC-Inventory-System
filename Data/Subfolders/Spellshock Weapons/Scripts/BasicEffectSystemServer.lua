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

--[[
    Effect table structure:
    -- name             string
    -- duration         float
    -- animationStance  string
    -- speedModifier    float
    -- freezeMovement   bool
    -- freezeAbilities  bool
    -- vfx              AssetRefrence
    -- vfxSocket        string
 ]]

-- Internal custom properties
local ABES = require(script:GetCustomProperty("API_EffectSystem"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local DEFAULT_SETTINGS = COMPONENT_ROOT:GetCustomProperty("DefaultMovementSettings"):WaitForObject()

-- Variables
local defaultSettings = nil

-- DEFAULT SETTINGS FUNCTIONS --
function RegisterDefaultSettings(player)
    DEFAULT_SETTINGS:ApplyToPlayer(player)
    if not defaultSettings then
        defaultSettings = {}
        defaultSettings.animationStance = player.animationStance
        defaultSettings.maxHitPoints = player.maxHitPoints
        defaultSettings.movementControlMode = player.movementControlMode
        defaultSettings.maxWalkSpeed = player.maxWalkSpeed
        defaultSettings.jumpVelocity = player.jumpVelocity
        defaultSettings.maxJumpCount = player.maxJumpCount
        defaultSettings.canMount = player.canMount
    end
    -- Register player events
    player.diedEvent:Connect(ClearPlayerEffects)
    player.respawnedEvent:Connect(ClearPlayerEffects)

    -- Initial Cleanup
    ClearPlayerEffects(player)
    ResetPlayerDefaultSettings(player)
end

function SetDefaultSettings(player, settings)
    player.serverUserData.defaultSettings = settings
    UpdatePlayerEffects(player)
    -- Event here
end

function ResetPlayerDefaultSettings(player)
    SetDefaultSettings(player, defaultSettings)
end

-- EFFECT SETTNGS FUNCTIONS --
function UpdatePlayerEffects(player)

    if not Object.IsValid(player) then return end

    -- Apply default settings
    local settings = player.serverUserData.defaultSettings
    local speedModifier = 0

    -- Player base stats
    player.animationStance = settings.animationStance
    if player.hitPoints >= player.maxHitPoints then
        player.hitPoints = settings.maxHitPoints
    end
    player.maxHitPoints = settings.maxHitPoints
    player.movementControlMode = settings.movementControlMode
    player.maxWalkSpeed = settings.maxWalkSpeed
    player.jumpVelocity = settings.jumpVelocity
    player.maxJumpCount = settings.maxJumpCount
    player.canMount = defaultSettings.canMount

    -- Player custom server only stats
    player.serverUserData.regenSpeed = settings.regenSpeed
    player.serverUserData.criticalHitChance = settings.criticalHitChance

    for _, ability in ipairs(player:GetAbilities()) do
        ability.isEnabled = true
    end

    -- Go through each effect to apply the stats
    for _, value in ipairs(player.serverUserData.effects) do
        if value.animationStance then
            player.animationStance = value.animationStance
        end
        if value.freezeMovement then
            player:ActivateWalking()
            player.movementControlMode = MovementControlMode.NONE
            player.maxJumpCount = 0
            player.canMount = false
        end
        if value.freezeAbilities then
            for _, ability in ipairs(player:GetAbilities()) do
                ability:Interrupt()
                ability.isEnabled = false
            end
        end
        if value.speedModifier then
            speedModifier = speedModifier + value.speedModifier
        end
    end
    player.maxWalkSpeed = player.maxWalkSpeed + player.maxWalkSpeed * speedModifier
end

function ApplyPlayerEffect(player, effectName, effectTable)
    -- If there is already the effect with the same name then ignore
    for _, effect in ipairs(player.serverUserData.effects) do
        if effect.name == effectName then
            return
        end
    end
    local sourceAbility = effectTable.sourceAbility

    -- Do not apply effect if it's a teammate or the owner
    if sourceAbility and sourceAbility.owner then
        if Teams.AreTeamsFriendly(player.team, sourceAbility.owner.team) or
        sourceAbility.owner == player then
            return
        end
    end

    table.insert(player.serverUserData.effects, effectTable)

    -- Attach a player effect template
    if effectTable.vfx then
        local template = World.SpawnAsset(effectTable.vfx, {position = player:GetWorldPosition()})
        if sourceAbility then
            template.serverUserData.sourceAbility = sourceAbility
        end
        template:AttachToPlayer(player, effectTable.vfxSocket)
    end

    -- Spawn duration task
    if effectTable.duration and effectTable.duration > 0 then
        Task.Spawn(function() RemovePlayerEffect(player, effectName) end, effectTable.duration)
    end

    -- Broadcast new effect applied to a player
    if sourceAbility then
        Events.BroadcastToAllPlayers("AppliedPlayerEffect", player, sourceAbility.owner, effectName)
    else
        Events.BroadcastToAllPlayers("AppliedPlayerEffect", player, nil, effectName)
    end

    -- Update the player buff effects
    UpdatePlayerEffects(player)
end

function RemovePlayerEffect(player, effectName)
    if not Object.IsValid(player) then
        return
    end
    for i, effect in ipairs(player.serverUserData.effects) do
        if effect.name == effectName then
            table.remove(player.serverUserData.effects, i)
            UpdatePlayerEffects(player)
            Events.BroadcastToAllPlayers("RemovedPlayerEffect", player, effectName)
            return
        end
    end
end

function ClearPlayerEffects(player)
    if not Object.IsValid(player) then
        return
    end
    if player.serverUserData.effects then
        for i, _ in ipairs(player.serverUserData.effects) do
            table.remove(player.serverUserData.effects, i)
        end
        -- Event broadcast here
        UpdatePlayerEffects(player)
    else
        player.serverUserData.effects = {}
    end
end

-- Contructing effect functions to pass to API
local EFFECT_FUNCTIONS = {
    effectApply = ApplyPlayerEffect,
    effectRemove = RemovePlayerEffect,
    effectUpdate = UpdatePlayerEffects,
    effectClear = ClearPlayerEffects,
    settingsSet = SetDefaultSettings,
    settingsReset = ResetPlayerDefaultSettings
}
ABES.RegisterEffectsManagerServer(EFFECT_FUNCTIONS)

-- Initialize
Game.playerJoinedEvent:Connect(RegisterDefaultSettings)
Game.playerLeftEvent:Connect(ClearPlayerEffects)
