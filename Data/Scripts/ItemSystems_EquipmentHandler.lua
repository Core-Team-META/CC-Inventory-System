--[[
    ItemSystems.EquipmentHandler
    ===============================

    Listens for equipment changes on the primary equipment slot and equips the 
    coresponding eqipment to the player.
]]
local HelperItemSystemInventory = script:GetCustomProperty("Helper_ItemSystemInventory"):WaitForObject()
local ItemDatabase = require(script:GetCustomProperty("ItemSystems_Database"))
local Item = require(script:GetCustomProperty("ItemSystems_Item"))

local PRIMARYSLOT = "E1"
local OWNER = nil

local function EquipNewEquipment()
    local itemHash = HelperItemSystemInventory:GetCustomProperty(PRIMARYSLOT)
    -- Remove old equipment
    local equipments = OWNER:GetEquipment()
    for _, equipment in pairs(equipments) do
        equipment:Unequip()
        equipment:Destroy()
    end
    if itemHash ~= "" and itemHash then
        local item = Item.FromHash(ItemDatabase,itemHash)
        local equipment = World.SpawnAsset(item:GetMUID())
        assert(equipment:IsA("Equipment"),"Primary item is not type of equipment.")
        equipment:Equip(OWNER)
    end
end

local function EquipmentChanged(_,property)
    if property == PRIMARYSLOT then -- Primary slot
        EquipNewEquipment()
    end
end

while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == HelperItemSystemInventory:GetCustomProperty("PlayerId") then
            OWNER = player
            if HelperItemSystemInventory:GetCustomProperty(PRIMARYSLOT) ~= "" then
                EquipNewEquipment()
            end
            break
        end
    end
end

HelperItemSystemInventory.networkedPropertyChangedEvent:Connect(EquipmentChanged)