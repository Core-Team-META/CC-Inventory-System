﻿--[[
    ItemSystems.GeometryEquipper
    ====================
    Gets any changes to the equipped items in the inventory and spawns the items geometry onto the character
    at a specificed socket. The determined socket is derived from a custom property on the item.
    Please refer to the ItemSystems_README for detailed information.
]]

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
        if item:IsTwoHanded() and not inventory:IsSlotEnabled(2) and inventory:GetItem(2) then
            DestroyGeometry(2)
            return
        end
        if slotIndex ~= 1 then -- We're equiping the weapon not adding it as geometry.
            if not inventory:IsSlotEnabled(2) and inventory:GetItem(2) then return end
            itemRoot = World.SpawnAsset(item:GetMUID(), { parent = COMPONENT })
        else
            return
        end
        itemRoot.clientUserData.geometries = {}
        for propName,propValue in pairs(itemRoot:GetCustomProperties()) do
            local socket = propName:match("SOCKET_(.+)")
            if socket then
                local geometry = propValue:WaitForObject()
                if socket == "both_feet" then
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