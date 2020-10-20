local ACTIVATE_TRIGGER = script:GetCustomProperty("ActivateTrigger"):WaitForObject()
local ItemDatabase = require(script:GetCustomProperty("Database"))

-- An example that demonstrates how to use the rolling mechanic. You should adapt this into your NPCs.
ACTIVATE_TRIGGER.interactedEvent:Connect(function(_,player)
    Events.Broadcast("RollForLootDrop","BasicMobTrash",Game.GetPlayers())
end)