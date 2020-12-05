--[[
    ItemSystems.StashInstancePlayerDrop
    ====================
    The stash instance that can be created in the world and waits for the player property ID to be filled.
    Once the property is filled the stash will go into the player's inventory and remove all the items and add them
    into this stash. If the stash is fully looted then the stash will be destroyed.
]]

local ItemSystems_Stash = require(script:GetCustomProperty("ItemSystems_Stash"))
local stash = ItemSystems_Stash.New(script.parent,nil,20) -- Constructs a new stash.
stash:WaitForPlayerWhoDied()