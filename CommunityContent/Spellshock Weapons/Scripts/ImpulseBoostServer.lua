local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()

local BOOST_DIRECTION = script:GetCustomProperty("BoostDirection")

function Boost(ability)
    local fwdVector = ability.owner:GetWorldTransform():GetForwardVector() * BOOST_DIRECTION.x
    local rightVector = ability.owner:GetWorldTransform():GetRightVector() * BOOST_DIRECTION.y
    local upVector = ability.owner:GetWorldTransform():GetUpVector() * BOOST_DIRECTION.z
    ability.owner:AddImpulse((fwdVector + rightVector + upVector) * ability.owner.mass)
end

ABILITY.castEvent:Connect(Boost)