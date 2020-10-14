local COMPONENT = script:GetCustomProperty("InventoryComponent"):WaitForObject()

---------------------------------------------------------------------------------------------------------
local OWNER = nil
while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT:GetCustomProperty("PlayerId") then
            OWNER = player
            break
        end
    end
end

---------------------------------------------------------------------------------------------------------
while not OWNER.clientUserData.inventory do Task.Wait() end
local inventory = OWNER.clientUserData.inventory

---------------------------------------------------------------------------------------------------------
local currentEquippedGeometry = {}

---------------------------------------------------------------------------------------------------------
local function DestroyGeometry(slotIndex)
    if currentEquippedGeometry[slotIndex] then
        local itemRoot = currentEquippedGeometry[slotIndex]
        if Object.IsValid(itemRoot) then
            for _,geometry in ipairs(itemRoot.clientUserData.geometries) do
                if Object.IsValid(geometry) then
                    geometry:Destroy()
                end
            end
            if Object.IsValid(itemRoot) then
                itemRoot:Destroy()
            end
        end
        currentEquippedGeometry[slotIndex] = nil
    end
end

---------------------------------------------------------------------------------------------------------
local function UpdateItemGeometry(slotIndex, item)
    if currentEquippedGeometry[slotIndex] then
        if item and item:GetMUID() == currentEquippedGeometry[slotIndex].sourceTemplateId then
            return
        end
    end
    DestroyGeometry(slotIndex)
    if item then

        local itemRoot = nil
        if slotIndex ~= 1 then -- If not equipment
            itemRoot = World.SpawnAsset(item:GetMUID(), { parent = COMPONENT })
        else
            return
        end

        itemRoot.clientUserData.geometries = {}

        for propName,propValue in pairs(itemRoot:GetCustomProperties()) do
            local socket = propName:match("SOCKET_(.+)")
            if socket then
                local geometry = propValue:WaitForObject()
                if socket == "BothFeet" then
                    local copy = World.SpawnAsset(item:GetMUID(), { parent = COMPONENT })
                    geometry:AttachToPlayer(OWNER, "right_ankle")
                    copy:AttachToPlayer(OWNER, "left_ankle")
                    table.insert(itemRoot.clientUserData.geometries, copy)
                else
                    geometry:AttachToPlayer(OWNER, socket)
                end

                table.insert(itemRoot.clientUserData.geometries, geometry)
            end
        end
        currentEquippedGeometry[slotIndex] = itemRoot
    end
end

---------------------------------------------------------------------------------------------------------
local function UpdateEquippedGeometry()
    for slotIndex,item in inventory:IterateEquipSlots() do
        UpdateItemGeometry(slotIndex, item)
    end
end

local function CleanupEquippedGeometry()
    for slotIndex,_ in inventory:IterateEquipSlots() do
        DestroyGeometry(slotIndex)
    end
end

---------------------------------------------------------------------------------------------------------
function Tick(dt)
    UpdateEquippedGeometry()
end

script.destroyEvent:Connect(CleanupEquippedGeometry)
