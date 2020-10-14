local WEAPON = script:FindAncestorByType("Weapon")
local ATTACK_ABILITY = script:GetCustomProperty("AttackAbility"):WaitForObject()
local RELOAD_ABILITY = script:GetCustomProperty("ReloadAbility"):WaitForObject()
local PARENT = script:GetCustomProperty("Parent"):WaitForObject()
local TAG = script:GetCustomProperty("Tag")
local FULL_COLOR = script:GetCustomProperty("FullColor")
local EMPTY_COLOR = script:GetCustomProperty("EmptyColor")

local meshes = {}

for _, obj in ipairs(PARENT:FindDescendantsByType("CoreObject")) do
    if obj:GetCustomProperty("Tag") == TAG then
        if obj:IsA("StaticMesh") then
            table.insert(meshes, obj)
        else
            for _, child in ipairs(obj:GetChildren()) do
                if child:IsA("StaticMesh") then
                    table.insert(meshes, child)
                end
            end
        end
    end
end

function UpdateMeshColor()
    for _, obj in ipairs(meshes) do
        if obj:IsA("StaticMesh") then
            obj:SetColor(Color.Lerp(EMPTY_COLOR, FULL_COLOR, WEAPON.currentAmmo / WEAPON.maxAmmo))
        end
    end
end

ATTACK_ABILITY.readyEvent:Connect(UpdateMeshColor)
ATTACK_ABILITY.castEvent:Connect(UpdateMeshColor)
RELOAD_ABILITY.readyEvent:Connect(UpdateMeshColor)
RELOAD_ABILITY.castEvent:Connect(UpdateMeshColor)
