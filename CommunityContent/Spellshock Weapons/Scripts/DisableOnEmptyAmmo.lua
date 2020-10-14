local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local OBJECT = script:GetCustomProperty("ObjectToTrigger"):WaitForObject()

function Tick(deltaTime)
    if Object.IsValid(WEAPON) then
        if WEAPON.currentAmmo == 0 then
            OBJECT.isVisible = false
        else
            OBJECT.isVisible = true
        end
    end
end