local propItem = script:GetCustomProperty("Item"):WaitForObject()
local propPickupTrigger = script:GetCustomProperty("PickupTrigger"):WaitForObject()
local propName = propItem:GetCustomProperty("Name")

local itemDatabase = require("4107F9E344C10360:ItemSystems_Database") -- Temp
itemDatabase:WaitUntilLoaded()

local itemData = itemDatabase:FindItemDataByName(propName)
local item =  itemDatabase:CreateItemFromItemData(itemData)

local isClaimed = false

propPickupTrigger.interactedEvent:Connect(function(_, player)
    if not isClaimed then
        isClaimed = true
        print(player)
    end
end)