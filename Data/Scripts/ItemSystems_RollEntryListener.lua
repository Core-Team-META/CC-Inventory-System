--[[
    ItemSystems.RollEntryListener
    ================
    Context: Client
    Description: Listens for the creation of roll entries in a networked group and checks
    to see if the client is allowed to roll on that entry and notifies the player on what they rolled along with others.
]]

local ROLLENTRIES_GROUP = script:GetCustomProperty("RollEntriesGroup"):WaitForObject()
local ROLLENTRY_TEMPLATE = script:GetCustomProperty("RollEntryUITemplate")
local ROLLENTRY_CONTAINER = script:GetCustomProperty("RollEntryContainer"):WaitForObject()
local LOCALPLAYER = Game.GetLocalPlayer()

local ItemDatabase = require(script:GetCustomProperty("ItemSystems_Database"))

local entries = {}

local function IsAllowedToRoll(players)
    return string.find(players,LOCALPLAYER.id) and true or false
end

local function CreateUIRollEntry(itemHash, ID)
    local newEntry = World.SpawnAsset(ROLLENTRY_TEMPLATE,{ parent = ROLLENTRY_CONTAINER })
    newEntry.clientUserData.ItemHash = itemHash
    newEntry.clientUserData.id = ID
    table.insert(entries,newEntry)
end

-- Restructures the list of rollable UI loot so that it collapses and displays properly.
local function RestructureList(removedEntry)
    local YSPACING = 180
    for i, entry in pairs(entries) do
        if removedEntry == entry then
            table.remove(entries,i)
            RestructureList(removedEntry)
        else
            entry.y = i * -YSPACING
        end
    end
end

-- Anytime a player rolls on a entry we will receive what they rolled.
local function OnPlayerRolled(_,child)
    while not child:GetCustomProperty("PlayerName") or not child:GetCustomProperty("Rolled") do Task.Wait() end
    local playerName = child:GetCustomProperty("PlayerName")
    local name = playerName == LOCALPLAYER.name and "You" or playerName
    local roll = child:GetCustomProperty("Rolled")
    local extraSpace = name ~= "You" and 40 or 0
    if roll == 0 then
        UI.ShowFlyUpText( string.format( "%s Passed For %s", name, child.parent.clientUserData.item:GetName() ), 
        LOCALPLAYER:GetWorldPosition() + Vector3.UP * 110 + extraSpace, { isBig = true, color = Color.New(extraSpace,1,0), duration = 3 } )
    else
        UI.ShowFlyUpText( string.format( "%s Rolled %s For %s", name, roll, child.parent.clientUserData.item:GetName() ), 
        LOCALPLAYER:GetWorldPosition() + Vector3.UP * 110 + extraSpace, { isBig = true, color = Color.New(extraSpace,1,0), duration = 3 } )
    end


    
end

-- Checks if we're allowed to roll on this item. If we can then we will create a roll loot view UI.
local function OnEntryCreated(_,child)
    -- We can't guarentee that the information will be loaded yet. So we should wait.
    while child:GetCustomProperty("RequestedPlayers") == nil or 
            child:GetCustomProperty("ItemHash") == "" or
            child:GetCustomProperty("ID") == 0
    do Task.Wait() end
    local allowedPlayers = child:GetCustomProperty("RequestedPlayers")
    local ID = child:GetCustomProperty("ID")
    local itemHash = child:GetCustomProperty("ItemHash")
    child.clientUserData.item = ItemDatabase:CreateItemFromHash(itemHash)
    if not IsAllowedToRoll(allowedPlayers) then return end
    -- Listen for any rolls performed on the item and show them.
    child.childAddedEvent:Connect(OnPlayerRolled)
    CreateUIRollEntry(itemHash,ID)
    RestructureList()
end

local function OnEntryRemoved(_,child)
    RestructureList(child)
end

local function AddWonItem(itemHash)
    local wonItem = ItemDatabase:CreateItemFromHash(itemHash)
    UI.ShowFlyUpText(string.format("You won %s!",wonItem:GetName()),LOCALPLAYER:GetWorldPosition() + Vector3.UP * 100, { isBig = true, duration = 2, color = Color.BLUE })
end

ROLLENTRIES_GROUP.childAddedEvent:Connect(OnEntryCreated)
ROLLENTRY_CONTAINER.childRemovedEvent:Connect(OnEntryRemoved)
Events.Connect("AddWonItem",AddWonItem)