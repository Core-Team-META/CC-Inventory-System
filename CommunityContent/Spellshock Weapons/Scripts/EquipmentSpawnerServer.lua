local root = script:GetCustomProperty("Root"):WaitForObject()
local spawnParentRef = script:GetCustomProperty("SpawnParent")
local spawnParent = script
if spawnParentRef then spawnParent = spawnParentRef:WaitForObject() end

local templateToSpawn = root:GetCustomProperty("TemplateToSpawn")
local respawnDelay = root:GetCustomProperty("RespawnDelay") or 1

if not templateToSpawn then error("Object to spawn not found") end

local currentInstance = nil


function RespawnObject()
    if spawnParent and templateToSpawn then
        currentInstance = World.SpawnAsset(templateToSpawn, {transform=spawnParent:GetTransform(), parent = spawnParent})
    end
    currentInstance.equippedEvent:Connect(OnEquipObject)
end

function OnEquipObject(equipment, player)
    Task.Spawn(RespawnObject, respawnDelay)
end

RespawnObject()