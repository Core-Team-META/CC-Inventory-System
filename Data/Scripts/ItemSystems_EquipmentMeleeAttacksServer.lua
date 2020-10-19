--[[
Copyright 2020 Manticore Games, Inc.

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
This script uses the specified hitbox trigger on ability to damage enemy players on ability execute phase.
Each ability can have its own trigger (e.g. small attacks - front trigger, big attacks - wider trigger).
]]

-- Require standardcombo's combat wrap to use on the weapon.
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE:Get("standardcombo.Combat.Wrap") end
local CombatStats = require(script:GetCustomProperty("PlayerStats_Combat"))

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

-- Internal variables
local abilityList = {}

-- nil Tick()
-- Checks the players within hitbox, and makes sure swipe effects stay at the player's location
function Tick()
    -- Check for the existence of the equipment or owner before running Tick
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(EQUIPMENT.owner) then return end
    if EQUIPMENT.owner.isDead then return end

    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.canAttack then
            if Object.IsValid(abilityInfo.hitBox) then
                for _, other in ipairs(abilityInfo.hitBox:GetOverlappingObjects()) do
                    if not COMBAT().IsDead(other) then
                        MeleeAttack(other, abilityInfo)
                    end
                end
            end
        end
    end
end

-- nil MeleeAttack(Player)
-- Detect players within hitbox to apply damage
function MeleeAttack(other, abilityInfo)


    local ability = abilityInfo.ability

    -- Ignore if the hitbox is overlapping with the owner
    if other == ability.owner then return end

    -- Ignore if they're not on a team.
    if other.team == nil then return end

    -- Ignore friendly attack
    if Teams.AreTeamsFriendly(other.team, ability.owner.team) then return end

    -- Avoid hitting the same player multiple times in a single swing
    if (abilityInfo.ignoreList[other] ~= 1) then

        -- If the opponent has a statsheet
        local damage = nil
        if other.serverUserData.statSheet then
            damage = CombatStats:CalculateAttackDamageBetweenPlayers(ability.owner, other)
        else
            damage = CombatStats:GetAttackDamage(ability.owner)
        end
        COMBAT().ApplyDamage(other, damage, ability.owner, other:GetWorldPosition(), Rotation.New())

        abilityInfo.ignoreList[other] = 1
    end
end

-- nil OnBeginOverlap(Trigger, Object)
-- Event when the hitbox hits a player
function OnBeginOverlap(trigger, other)
    if other:IsA("Player") then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.canAttack then
                MeleeAttack(other, abilityInfo)
            end
        end
    end
end

-- nil OnEquipped()
-- Enables collision on player to make the hitbox collidable
function OnEquipped()
    Task.Wait(0.1)
    EQUIPMENT.collision = Collision.INHERIT
end

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.ability == ability then
            abilityInfo.canAttack = true
            abilityInfo.ignoreList = {}
        end
    end
end

-- nil ResetMelee(Ability)
-- Resets this scripts internal variables
function ResetMelee(ability)

    -- Forget anything we hit this swing
    if ability then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.ability == ability then
                abilityInfo.canAttack = false
                abilityInfo.ignoreList = {}
            end
        end
    else
        for _, abilityInfo in ipairs(abilityList) do
            abilityInfo.canAttack = false
            abilityInfo.ignoreList = {}
        end
    end
end

-- Initialize
local abilityDescendants = EQUIPMENT:FindDescendantsByType("Ability")
for _, ability in ipairs(abilityDescendants) do
    local hitBox = ability:GetCustomProperty("Hitbox")

    if hitBox then
        hitBox = ability:GetCustomProperty("Hitbox"):WaitForObject()
        hitBox.beginOverlapEvent:Connect(OnBeginOverlap)

        ability.executeEvent:Connect(OnExecute)
        ability.cooldownEvent:Connect(ResetMelee)

        table.insert(abilityList, {
            ability = ability,
            damage = ability:GetCustomProperty("Damage"),
            hitBox = hitBox,
            canAttack = false,
            ignoreList = {}
        })
    end
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(ResetMelee)