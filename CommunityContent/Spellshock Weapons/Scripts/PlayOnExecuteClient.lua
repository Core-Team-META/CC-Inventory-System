local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local PARENT = script:GetCustomProperty("Parent"):WaitForObject()
local TAG = script:GetCustomProperty("Tag")

local effects = {}

for _, obj in ipairs(PARENT:FindDescendantsByType("Vfx")) do
    if obj:GetCustomProperty("Tag") == TAG then
        table.insert(effects, obj)
    end
end

for _, obj in ipairs(PARENT:FindDescendantsByType("Audio")) do
    if obj:GetCustomProperty("Tag") == TAG then
        table.insert(effects, obj)
    end
end

function PlayEffects()
    for _, value in ipairs(effects) do
        value:Play()
    end
end

ABILITY.executeEvent:Connect(PlayEffects)