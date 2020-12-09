--[[
    ItemSystems.LootController
    ================
    Listens for the incoming item hash and owner of a newly spawned loot and then registers it to
    the players inventory. This runs on both server and client.
]]

local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local ItemThemes = require(script:GetCustomProperty("ItemThemes"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local LOOT = script:GetCustomProperty("Loot"):WaitForObject()
local LOOTDESTROY_TIME = script:GetCustomProperty("LootDestroyDelay") -- Time in second till loot is destroyed.

-- Wait for the networked property to be set.
while LOOT:GetCustomProperty("LOOTINFO") == "" do 
Task.Wait() end

local ID, ITEM_HASH = LOOT:GetCustomProperty("LOOTINFO"):match("^(.*)@(.*)$")

-- Rotates a model when it spawns.
local function ApplyLootRotation(model)
    local dropRotation = model:GetCustomProperty("DropRotation")
    -- If the item has a drop rotation property we will rotate the item to that inital rotation
    if dropRotation then
        model:SetWorldRotation(Rotation.New(dropRotation.x, dropRotation.y, dropRotation.z) + Rotation.New(0,0,math.deg(math.random(0,360))))
    else
        model:SetWorldRotation(Rotation.New(0,0,math.deg(math.random(0,360))))
    end
end


---------------------------------------------------------------------------------------------------------
if script.isServerOnly then
    -- Server-side. Delete networked root object when claimed.
    local function OnLootClaimed() if Object.IsValid(LOOT) then LOOT:Destroy() end end

    -- Register the loot to everyone
    for _, player in pairs(Game.GetPlayers()) do
        if Object.IsValid(player) then
            player.serverUserData.inventory:RegisterLootItem(LOOT:GetCustomProperty("LOOTINFO"), OnLootClaimed)
        end
    end

    local _, lootHash = LOOT:GetCustomProperty("LOOTINFO"):match("^(.*)@(.*)$")
    local item = Database:CreateItemFromHash(lootHash)

    Task.Wait(LOOTDESTROY_TIME)

    -- If it's not claimed for some time we unregister it.
    -- Unregister the loot for everyone
    for _, player in pairs(Game.GetPlayers()) do
        if Object.IsValid(player) then
            player.serverUserData.inventory:UnRegisterLootItem(ID)
        end
    end
    LOOT:Destroy()
else

    -- Is Client
    local OwningIndicator = script:GetCustomProperty("OwningIndicator"):WaitForObject()
    local LOCAL_PLAYER = Game.GetLocalPlayer()

    -- Spawns the rarity for the existing loot item
    while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
    local inventory = LOCAL_PLAYER.clientUserData.inventory
    local item = Item.FromHash(inventory.database, ITEM_HASH)
    local rarity = item:GetRarity()
    local indicator = ItemThemes.GetRarityLootIndicator(rarity)
    assert(indicator, "Spawned loot does not have rarity indicator")
    World.SpawnAsset(indicator,{ parent = script.parent })
    local model = World.SpawnAsset(item:GetMUID(),{ parent = script.parent })
    ApplyLootRotation(model)
    -- When the loot is destroyed then unregister it.
    LOOT.destroyEvent:Connect(function()
        local inventory = LOCAL_PLAYER.clientUserData.inventory
        inventory:UnRegisterLootItem(ID)
    end)
end

