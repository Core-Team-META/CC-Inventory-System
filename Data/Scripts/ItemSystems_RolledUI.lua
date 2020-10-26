--[[
    ItemSystems.RolledUI
    ================

    Listens for rolls and creates UI elements to show what the players rolled.
]]

local ROLLENTRIES_GROUP = script:GetCustomProperty("RollEntriesGroup"):WaitForObject()
local ROLLENTRY_TEMPLATE = script:GetCustomProperty("RolledUITemplate")
local ItemDatabase = require(script:GetCustomProperty("ItemDatabase"))
local LOCALPLAYER = Game.GetLocalPlayer()

local entries = {}

-- Restructures the list of rollable UI loot so that it collapses and displays properly.
local function RestructureList(removedEntry)
    local YSPACING = 50
    for i, entry in pairs(entries) do
        if removedEntry == entry then
            table.remove(entries,i)
            RestructureList(removedEntry)
        else
            entry.y = i * -YSPACING
        end
    end
end

local function IsAllowedToRoll(players)
    return string.find(players,LOCALPLAYER.id) and true or false
end

-- Creates a UI element that shows what the player rolled or if they passed.
local function CreateUIEntry(playerName,roll,itemName)
    local uiEntry = World.SpawnAsset(ROLLENTRY_TEMPLATE,{parent = script})
    uiEntry.visibility = Visibility.FORCE_ON
    table.insert(entries,uiEntry)
    RestructureList()
    local rolledText = uiEntry:GetCustomProperty("RolledText"):GetObject()
    playerName = playerName == LOCALPLAYER.name and "You" or playerName
    if playerName == "You" then
        rolledText:SetColor(Color.GREEN)
    end
    if roll == 0 then
        uiEntry:GetCustomProperty("LootIcon"):GetObject().visibility = Visibility.FORCE_OFF
        uiEntry:GetCustomProperty("PassIcon"):GetObject().visibility = Visibility.FORCE_ON
        rolledText.text = string.format("%s Passed For %s", playerName, itemName)
    elseif roll == "Won" then
        rolledText.text = string.format("You Won! %s",itemName)
        rolledText:SetColor(Color.BLUE)
    else
        rolledText.text = string.format("%s Rolled %s For %s", playerName, roll, itemName)
    end
    Task.Wait(4)
    RestructureList(uiEntry)
    uiEntry:Destroy()
end

-- Listens for child objects on a
local function ListenForRolls(_,child)
    -- We can't guarentee that the information will be loaded yet. So we should wait.
    while child.parent.clientUserData.item == nil or 
        not child:GetCustomProperty("PlayerName") or 
        not child:GetCustomProperty("Rolled") 
    do Task.Wait() end
    local playerName = child:GetCustomProperty("PlayerName")
    local roll = child:GetCustomProperty("Rolled")
    local itemName = child.parent.clientUserData.item:GetName()
    CreateUIEntry(playerName,roll,itemName)
end

local function AddWonEntry(itemHash)
    local wonItem = ItemDatabase:CreateItemFromHash(itemHash)
    CreateUIEntry(LOCALPLAYER.name,"Won",wonItem:GetName())
end

ROLLENTRIES_GROUP.childAddedEvent:Connect(function(_,child)
    -- We can't guarentee that the information will be loaded yet. So we should wait.
    while child:GetCustomProperty("RequestedPlayers") == nil or 
        child:GetCustomProperty("ItemHash") == "" or
        child:GetCustomProperty("ID") == 0
    do Task.Wait() end
    local allowedPlayers = child:GetCustomProperty("RequestedPlayers")
    if not IsAllowedToRoll(allowedPlayers) then return end
    child.childAddedEvent:Connect(ListenForRolls)
end)

Events.Connect("AddWonItem",AddWonEntry)