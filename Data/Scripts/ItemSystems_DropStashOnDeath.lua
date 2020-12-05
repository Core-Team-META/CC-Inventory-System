--[[
    ItemSystems.DropStashOnDeath
    ================
    Spawns a stash on the player when they die and inserts their inventory into that stash.
    
    Note: This is recommended for survival type of games as the entire inventory can not fit into
    a single stash without expanding the amount of slots the container inventory can provide.
]]

local StashToDrop = script:GetCustomProperty("StashToDrop")
local playersDropStashes = script:GetCustomProperty("PlayersDropStashesOnDeath")
local diedEvent = {}

if not playersDropStashes then return end

-- When a player joins the game we're going to listen to any died events from them.
-- If the player dies with something in their inventory then the the stash drop will be dropped into the world
-- and the stash will fill with the players items.
Game.playerJoinedEvent:Connect(function(player)
    diedEvent[player] = player.diedEvent:Connect(function(playerwhodied)
        if playerwhodied == player then
            if #player.serverUserData.inventory:GetAllItems() > 0 then
                local stashObject = World.SpawnAsset(StashToDrop,{ position = player:GetWorldPosition() - Vector3.UP * 100, parent = script, scale = Vector3.New(0.5,0.5,0.5) })
                stashObject:SetNetworkedCustomProperty("PLAYERID", player.id)
            end
        end
    end)
end)

-- When the player leaves we disconnect the event.
Game.playerLeftEvent:Connect(function(player) 
    if(diedEvent[player] and diedEvent[player].isConnected) then
        diedEvent[player]:Disconnect()
    end
end)