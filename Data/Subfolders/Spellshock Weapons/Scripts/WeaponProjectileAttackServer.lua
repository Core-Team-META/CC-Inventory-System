local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local DAMAGE_API = require(script:GetCustomProperty("DamageAPI"))
local ATTACK_ABILITY = script:GetCustomProperty("AttackAbility"):WaitForObject()

local DAMAGE = script:GetCustomProperty("Damage")
local DAMAGE_HEADSHOT = script:GetCustomProperty("DamageHeadshot")

local MODULE = require(script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE:Get("standardcombo.Combat.Wrap") end


-- Checks if the projectile has hit player
function OnProjectileInteracted(interaction)
    -- Applying projectile damage to player
    if interaction.targetObject and not COMBAT().IsDead(interaction.targetObject) then
        local damage = DAMAGE
        if DAMAGE_HEADSHOT and DAMAGE_HEADSHOT > 0 and interaction.isHeadshot then
            damage = DAMAGE_HEADSHOT
        end


        local statSheet = interaction.weaponOwner.serverUserData.statSheet
        local critChance = interaction.weaponOwner.serverUserData.statSheet:GetStatTotalValue("CritChance") / 100.0
        local totalDamage = statSheet:GetStatTotalValue("Attack")

        if math.random() < critChance then
            totalDamage = totalDamage * 2
        end

        local damage = Damage.New(totalDamage)

        --print("Applying standard combo damage.")
        --function API.ApplyDamage(object, dmg, source, pos, rot)
        COMBAT().ApplyDamage(interaction.targetObject, damage, interaction.weaponOwner, interaction.targetObject:GetWorldPosition(), Rotation.New())
    end
end

-- Registering weapon events
WEAPON.targetInteractionEvent:Connect(OnProjectileInteracted)