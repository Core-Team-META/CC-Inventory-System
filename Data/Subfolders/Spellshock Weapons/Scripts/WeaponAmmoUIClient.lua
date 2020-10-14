-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local ATTACK_ABILITY = script:GetCustomProperty("AttackAbility"):WaitForObject()
local AMMO_UI = script:GetCustomProperty("AmmoUI")

local DISPLAY_TIME = 2
local LOCAL_PLAYER = Game.GetLocalPlayer()

local ammoUIInstance = nil
local currentTime = 0

function Tick(deltaTime)
    if not Object.IsValid(ammoUIInstance) then return end

    if currentTime > 0 then
        currentTime = currentTime - deltaTime
        if currentTime <= 0 then
            ammoUIInstance.isVisible = false
        else
            ammoUIInstance.isVisible = true
            local text = ammoUIInstance:GetCustomProperty("AmmoText"):WaitForObject()
            local bar = ammoUIInstance:GetCustomProperty("AmmoProgressBar"):WaitForObject()
            if WEAPON.currentAmmo < 5 then
                text.isVisible = true
                if WEAPON.currentAmmo > 0 then
                    text:SetColor(Color.ORANGE)
                    text.text = "LOW CHARGE"
                else
                    text:SetColor(Color.RED)
                    text.text = "E - RECHARGE"
                end
                bar:SetFillColor(Color.RED)
            else
                text.isVisible = false
                bar:SetFillColor(Color.GREEN)
            end
            bar.isVisible = true
            bar.progress = WEAPON.currentAmmo / WEAPON.maxAmmo
        end
    else
        if WEAPON.currentAmmo == 0 then
            ammoUIInstance.isVisible = true
            local text = ammoUIInstance:GetCustomProperty("AmmoText"):WaitForObject()
            local bar = ammoUIInstance:GetCustomProperty("AmmoProgressBar"):WaitForObject()
            text.isVisible = true
            bar.isVisible = false
            text:SetColor(Color.RED)
            text.text = "E - RECHARGE"
        else
            ammoUIInstance.isVisible = false
        end
    end
end

function OnCast()
    if not ammoUIInstance then return end
    currentTime = DISPLAY_TIME
end

function OnEquipped(weapon, player)
    if AMMO_UI and player == LOCAL_PLAYER then
        ammoUIInstance = World.SpawnAsset(AMMO_UI)
        ammoUIInstance.isVisible = false
    end
end

function OnUnequipped(weapon, player)
    if Object.IsValid(ammoUIInstance) then
        ammoUIInstance:Destroy()
        ammoUIInstance = nil
    end
end

-- Connecting weapon event to functions
WEAPON.equippedEvent:Connect(OnEquipped)
WEAPON.unequippedEvent:Connect(OnUnequipped)
ATTACK_ABILITY.castEvent:Connect(OnCast)