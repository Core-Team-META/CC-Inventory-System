local ACTIVATE_TRIGGER = script:GetCustomProperty("ActivateTrigger"):WaitForObject()
local ItemDatabase = require(script:GetCustomProperty("Database"))

-- An example that demonstrates how to use the rolling mechanic. You should adapt this into your NPCs.
ACTIVATE_TRIGGER.interactedEvent:Connect(function(_,player)
    local statsSheet = player.serverUserData.statSheet
    statsSheet:NewStatModifierAdd("Haste",1000,true)
end)