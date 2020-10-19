--[[
    ItemSystems.LootSpawner
    ================

    Contains various functions that are called by Events.Broadcast() to create the loot drops.
]]

local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local LOOT_TEMPLATE = script:GetCustomProperty("LootTemplate")

-- Drops are assigned by lottery.
local playerLotteryTickets = {}

-- The higher this number, the more heavily the lottery is weighted in favor of players
-- who haven't won in a while. While obviously a higher number is "more fair", we don't
-- want to set it too high because part of the fun of a lottery is having a "win streak".
local TICKET_EXPONENTIATION_BASE = 4

-- When a player joins, they start over. This is so that players already in the instance
-- who have been playing and not received drops for a while are given preference.
local function OnPlayerJoined(player)
    playerLotteryTickets[player] = 1
end

-- When a player leaves, remove them from the lottery.
local function OnPlayerLeft(player)
    playerLotteryTickets[player] = nil
end

-- Get the lottery tickets for the players given
local function GetLotteryTickets(players)
    local tickets = {}
    for _, player in pairs(players) do
        local ticket = playerLotteryTickets[player]
        if ticket then
            table.insert(tickets, ticket)
        end
    end
    return tickets
end

-- Returns a table of tickets of the players we given
local function GetPlayersLotteryTickets(players) -- table
    local tickets = {}
    for _, player in pairs(players) do
        if playerLotteryTickets[player] then
            table.insert(tickets,playerLotteryTickets[player])
        end
    end
    return tickets
end

-- The more tickets a player holds, the more likely they are to win.
-- Players who do not win have their tickets doubled and thus become much more likely to win next time.
local function ChoosePlayerByLottery(playerLotteryTickets)
    local sumLotteryTickets = 0
    for _,tickets in pairs(playerLotteryTickets) do sumLotteryTickets = sumLotteryTickets + tickets end
    local winningNumber = sumLotteryTickets * math.random()
    local winner = nil
    for player,tickets in pairs(playerLotteryTickets) do
        if winningNumber <= tickets then
            winner = player
            break
        end
        winningNumber = winningNumber - tickets
    end
    -- Adjust tickets depending on outcome. All loser ticket amounts get compounded.
    local minTickets = math.huge
    for player,tickets in pairs(playerLotteryTickets) do
        if player ~= winner then
            playerLotteryTickets[player] = tickets * TICKET_EXPONENTIATION_BASE
        end
        minTickets = math.min(minTickets, playerLotteryTickets[player])
    end
    -- Renormalize so that the lowest number is always 1.
    for player,tickets in pairs(playerLotteryTickets) do
        playerLotteryTickets[player] = math.max(1, playerLotteryTickets[player] // minTickets)
    end
    -- Lottery complete!
    return winner
end

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

-----------------------------------------
-- To call these use Events.Broadcast() 
-----------------------------------------

-- Drop a specific item and chooses a random player from a table of players. (This can be a single player too)
local function OnDropSpecificLootForPlayers(itemName, players, dropWorldPosition) -- string, table or player, vector3
    -- If for some crazy reason the database has yet to load and loot is already dropping, ignore it.
    Database:WaitUntilLoaded()
    -- Get the lottery tickets of the players if a table
    local winner = nil
    if type(players) == table then
        winner = ChoosePlayerByLottery(players)
    else
        winner = players
    end
    -- Drop a specific item
    local item = Database:CreateItemDropFromName(itemName)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = script })
    -- Attach associated model to drop
    local model = World.SpawnAsset(item:GetMUID(),{ parent = object })
    ApplyLootRotation(model)
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s/%s", winner.id, item:RuntimeHash())
    object:SetNetworkedCustomProperty("INFO", lootInfo)
end

-- Drop a specific itemHash and choose a random player from a table of players. (This can be a single player too)
local function OnDropSpecificHashLootForPlayers(itemHash, players, dropWorldPosition) -- string, table or player, vector3
    -- If for some crazy reason the database has yet to load and loot is already dropping, ignore it.
    Database:WaitUntilLoaded()
    -- Get the lottery tickets of the players if a table
    local winner = nil
    if type(players) == table then
        winner = ChoosePlayerByLottery(players)
    else
        winner = players
    end
    local item = Database:CreateItemFromHash(itemHash)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = script })
    -- Attach associated model to drop
    local model = World.SpawnAsset(item:GetMUID(),{ parent = object })
    ApplyLootRotation(model)
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s/%s", winner.id, item:RuntimeHash())
    object:SetNetworkedCustomProperty("INFO", lootInfo)
end

-- Drops a random item based on likelihood and chooses a random player from a table of players. (This can be a single player too)
local function OnDropLootForPlayers(dropKey, players, dropWorldPosition) -- string, table or player, vector3
    -- If for some crazy reason the database has yet to load and loot is already dropping, ignore it.
    Database:WaitUntilLoaded()
    local winner = nil
    if type(players) == table then
        winner = ChoosePlayerByLottery(players)
    else
        winner = players
    end
    -- Drop a specific item
    local item = Database:CreateItemDropFromName(dropKey)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = script })
    -- Attach associated model to drop
    local model = World.SpawnAsset(item:GetMUID(),{ parent = object })
    ApplyLootRotation(model)
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s/%s", winner.id, item:RuntimeHash())
    object:SetNetworkedCustomProperty("INFO", lootInfo)
end

-- Drops a random item based on likelihood and chooses a random player in the server to receive the loot.
local function OnDropLoot(dropKey, dropWorldPosition) -- string, vector3
    -- If for some crazy reason the database has yet to load and loot is already dropping, ignore it.
    Database:WaitUntilLoaded()
    local winner = ChoosePlayerByLottery(playerLotteryTickets)
    local rolledItem = Database:CreateItemFromDrop(dropKey)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = script })
    -- Attach associated model to drop
    local model = World.SpawnAsset(rolledItem:GetMUID(),{ parent = object })
    ApplyLootRotation(model)
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s/%s", winner.id, rolledItem:RuntimeHash())
    object:SetNetworkedCustomProperty("INFO", lootInfo)
end

-- Events that you should call when wanting to spawn loot.
Events.Connect("DropLoot", OnDropLoot)
Events.Connect("DropLootForPlayers", OnDropLootForPlayers)
Events.Connect("DropLootSpecificForPlayers", OnDropSpecificLootForPlayers)
Events.Connect("DropLootSpecificHashForPlayers", OnDropSpecificHashLootForPlayers)
-----------------------------------------

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)