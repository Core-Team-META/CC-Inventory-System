--[[
    ItemSystems.LootSpawner
    ================

    Contains various functions that are called by Events.Broadcast() to create the loot drops.
]]

local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local LOOT_TEMPLATE = script:GetCustomProperty("LootTemplate")
local LOOT_FOLDER = script:GetCustomProperty("LootFolder"):GetObject()

-- Creates a loot object and populates the the network properties to describe the loot object.
local function CreateLootObject(rolledItem, dropWorldPosition)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = LOOT_FOLDER })
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s@%s",object.id,rolledItem:RuntimeHash())
    object:SetNetworkedCustomProperty("LOOTINFO",lootInfo)
end

local function CreateLootObjectWithHash(itemHash, dropWorldPosition)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = LOOT_FOLDER })
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s@%s",object.id,itemHash)
    object:SetNetworkedCustomProperty("LOOTINFO",lootInfo)
end

----------------------------------------------------------------------------------
-- To call these use Events.Broadcast() in a server context.
----------------------------------------------------------------------------------

-- Drop a specific item at a world position
-- @param itemName string
-- @param dropWorldPosition Vector3
local function OnDropSpecificLoot(itemName,dropWorldPosition)
    -- If for some crazy reason the database has yet to load and loot is already dropping, ignore it.
    Database:WaitUntilLoaded()
    -- Drop a specific item
    local item = Database:CreateLootItemFromName(itemName)
    CreateLootObject(item, dropWorldPosition)
end

-- Creates and drops an item when given an item hash at a world position
-- @param itemHash string
-- @param dropWorldPosition Vector3
local function OnDropSpecificHashLoot(itemHash,dropWorldPosition)
    CreateLootObjectWithHash(itemHash, dropWorldPosition)
end

-- Drops a random item from a loot table.
-- @param dropKey string
-- @param dropWorldPosition Vector3
local function OnDropLoot(dropKey,dropWorldPosition)
    Database:WaitUntilLoaded()
    local item = Database:CreateLootItemFromDropKey(dropKey)
    if item == nil then return end -- If rolled an empty item.
    CreateLootObject(item, dropWorldPosition)
end
----------------------------------------------------------------------------------

-- Events that you should call when wanting to spawn loot.
Events.Connect("OnDropLoot", OnDropLoot)
Events.Connect("OnDropSpecificLoot", OnDropSpecificLoot)
Events.Connect("OnDropSpecificHashLoot", OnDropSpecificHashLoot)
-----------------------------------------