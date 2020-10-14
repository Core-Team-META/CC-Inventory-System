local EQUIPMENT = script:FindAncestorByType("Equipment")
local parent = script.parent

local socket = script:GetCustomProperty("Socket") or "root"
local attached = false

function Tick()
    if Object.IsValid(EQUIPMENT.owner) and not attached then
        OnEquipped(EQUIPMENT, EQUIPMENT.owner)
    end
end

function OnEquipped(equipment, player)
    if not Object.IsValid(parent) then return end
    parent:AttachToPlayer(player, socket)
    attached = true
end

function OnUnequipped(equipment, player)
    if not Object.IsValid(parent) then return end
    parent:Detach()
    parent:Destroy()
    attached = false
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)