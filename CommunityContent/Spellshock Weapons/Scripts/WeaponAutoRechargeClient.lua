-- Internal custom properties
local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local RELOAD_ABILITY = script:GetCustomProperty("ReloadAbility"):WaitForObject()
local WAIT_TIME = script:GetCustomProperty("WaitTime")

-- Internal variables --
local autoReloaded = false
local rechargeWaitTime = 0

-- Manually spawn the reloading audio
function SpawnReloadingAudio()
    if WEAPON.reloadSoundId ~= nil then
        World.SpawnAsset(WEAPON.reloadSoundId, {position = WEAPON:GetWorldPosition()})
    end
end

function Reload()
    SpawnReloadingAudio()
    RELOAD_ABILITY:Activate()
    autoReloaded = true
    rechargeWaitTime = 0
end

function Tick(deltaTime)
    if not Object.IsValid(WEAPON) then return end

    if RELOAD_ABILITY and not WEAPON.isAmmoFinite then

        -- Checks when the weapon has empty ammo to reload
        if WEAPON.currentAmmo == 0 and not autoReloaded then
            Reload()
            Task.Wait(RELOAD_ABILITY.castPhaseSettings.duration)
        end

--[[         if WEAPON.currentAmmo < WEAPON.maxAmmo and not autoReloaded then
            rechargeWaitTime = rechargeWaitTime + deltaTime
            if rechargeWaitTime > WAIT_TIME then
                Reload()
                Task.Wait(RELOAD_ABILITY.castPhaseSettings.duration)
            end
        end ]]

        -- Interrupts the reloading animation,
        -- If the weapon is in different state and the ammo is not empty
        if WEAPON.currentAmmo > 0
        and RELOAD_ABILITY ~= AbilityPhase.READY
        and autoReloaded then
            RELOAD_ABILITY:Interrupt()
            autoReloaded = false
        end

        -- Reset autoReloaded bool on ready phase
        if RELOAD_ABILITY == AbilityPhase.READY
        and autoReloaded then
            autoReloaded = false
        end
    end
end

function ResetRecharge()
    rechargeWaitTime = 0
end

RELOAD_ABILITY.executeEvent:Connect(ResetRecharge)