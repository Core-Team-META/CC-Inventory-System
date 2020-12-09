--[[
    ItemSystems.RollLootManager
    ================
    Description: Creates rolled loot objects that clients will listen for. 
]]

local ROLLENTRY_TEMPLATE = script:GetCustomProperty("RollEntryTemplate")
local ROLLER_TEMPLATE = script:GetCustomProperty("RollerTemplate")
local ROLL_EXPIRETIME = script:GetCustomProperty("RollExpireTime")

local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
Database:WaitUntilLoaded()

local entries = {}

-- Create a string full of players IDs concatenated together.
local function PlayersToIDTable(players)
    local ids = ''
    for _, player in pairs(players) do
        ids = ids .. player.id
    end
    return ids
end

local function GetEntry(id)
    for _, entry in pairs(entries) do
        if entry.serverUserData.id == id then
            return entry
        end
    end
    return nil
end

local function DeleteEntry(oldEntry)
    for i, entry in pairs(entries) do
        if entry == oldEntry then
            if Object.IsValid(entry) then
                table.remove(entries, i)
                entry:Destroy()
            end
        end
    end
end

-- When rolling is complete we will determine the the winner and reward them then destroy the entry as it's finished.
local function RollingComplete(entry) -- CoreObject
    local highestRoller = 0
    local winner = nil
    if not Object.IsValid(entry) then return end 
    for _, playerEntry in pairs(entry.serverUserData.replies) do
        if playerEntry.roll > highestRoller and playerEntry.participated then 
            highestRoller = playerEntry.roll
            winner = playerEntry.player
        end
    end
    if winner ~= nil and Object.IsValid(winner) then
        local winnerInventory = winner.serverUserData.inventory
        if winnerInventory:IsBackpackFull() then
            Events.Broadcast("OnDropSpecificHashLoot",entry.serverUserData.rolledItem:PersistentHash(),winner:GetWorldPosition() - Vector3.UP * 100)
        else
            winnerInventory:AddItem(entry.serverUserData.rolledItem)
            ReliableEvents.BroadcastToPlayer(winner,"AddWonItem",entry.serverUserData.rolledItem:PersistentHash())
        end
    end
    DeleteEntry(entry)
end

-- Check if someone already rolled our number.
local function GetValidRoll(entry) -- CoreObject
    local roll = math.random(1,100)
    for _, playerEntry in pairs(entry.serverUserData.replies) do
        if playerEntry.roll == roll then GetValidRoll(entry) end
    end
    return roll
end

-- Receives a client request
local function ProcessRollRequest(player,id,request) -- player, int, bool
    local entry = GetEntry(id)
    if not Object.IsValid(entry) then return end
    local replies = entry.serverUserData.replies
    local requiredReplies = entry.serverUserData.requiredReplies
    local roll = GetValidRoll(entry)
    if request then -- If the player wants to participat in the roll. 
        -- Clients will be listening for the players roll child. When they receive it they'll display what the person rolled above their head.
        local newRollerEntry = World.SpawnAsset(ROLLER_TEMPLATE)
        newRollerEntry:SetNetworkedCustomProperty("PlayerName",player.name)
        newRollerEntry:SetNetworkedCustomProperty("Rolled",roll)
        newRollerEntry.parent = entry
    else
        local newRollerEntry = World.SpawnAsset(ROLLER_TEMPLATE)
        newRollerEntry:SetNetworkedCustomProperty("PlayerName",player.name)
        newRollerEntry:SetNetworkedCustomProperty("Rolled",0)
        newRollerEntry.parent = entry
    end
    table.insert(replies,{ player = player, 
                participated = request,
                roll = roll, })
    if #replies >= requiredReplies then
        Task.Wait(1) -- Wait for the last player to see their roll.
        RollingComplete(entry)
    end
end

-- Create a rolled loot entry that specified clients will receive to roll upon.
-- @param dropKey : string
-- @param players : table of players
local function CreateRollForLootEntry(dropKey, players)
    --assert(#players > 1, "You need more than 1 player to create rollable loot.")
    local rolledItem = Database:CreateLootItemFromDropKey(dropKey)
    local rollEntry = World.SpawnAsset(ROLLENTRY_TEMPLATE,{ parent = script })
    local ID = #entries+1
    local playerIds = PlayersToIDTable(players)
    table.insert(entries,ID,rollEntry)
    rollEntry:SetNetworkedCustomProperty('ItemHash',rolledItem:PersistentHash())
    rollEntry:SetNetworkedCustomProperty("RequestedPlayers",playerIds)
    rollEntry:SetNetworkedCustomProperty("ID",ID)
    rollEntry.serverUserData.rolledItem = rolledItem
    rollEntry.serverUserData.id = ID
    rollEntry.serverUserData.requiredReplies = #players -- Amount of replies required to process the roll.
    rollEntry.serverUserData.replies = {} -- { player, rollType }
    Task.Wait(ROLL_EXPIRETIME + 3) -- Expire time + extra time. We can't be sure that the client and server will be synced.
    RollingComplete(rollEntry)
end

Events.Connect('RollForLootDrop', CreateRollForLootEntry)
Events.ConnectForPlayer("ProcessRollRequest", ProcessRollRequest)