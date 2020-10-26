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

-- Cleans up old equipment
local function CleanUpEquipment()
    if not Object.IsValid(OWNER) then return end
    local equipments = OWNER:GetEquipment()
    for _, equipment in pairs(equipments) do
        if Object.IsValid(equipment) then
            equipment:Unequip()
            equipment:Destroy()
        end
    end
end

-- Gets the primary slot network property of the players inventory and creates the equipment then equips it.
local function EquipNewEquipment()
    local itemHash = HelperItemSystemInventory:GetCustomProperty(PRIMARYSLOT)
    CleanUpEquipment()
    if itemHash ~= "" and itemHash then
        local item = Item.FromHash(ItemDatabase,itemHash)
        local equipment = World.SpawnAsset(item:GetMUID())
        assert(equipment:IsA("Equipment"),"Primary item is not type of equipment.")
        equipment:Equip(OWNER)
    end
end

-- Listens for network property changes to the players inventory
local function EquipmentChanged(_,property)
    if property == PRIMARYSLOT then -- Primary slot
        EquipNewEquipment()
    end
end

-- Gets the owner and equips the new equipment when the player joins the game.
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
Game.playerLeftEvent:Connect(CleanUpEquipment)