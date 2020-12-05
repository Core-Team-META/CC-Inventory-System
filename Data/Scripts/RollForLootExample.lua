local ACTIVATE_TRIGGER = script:GetCustomProperty("ActivateTrigger"):WaitForObject()

-- An example that demonstrates how to use the rolling mechanic. You should adapt this into your NPCs.
ACTIVATE_TRIGGER.interactedEvent:Connect(function(_,player)
    Events.Broadcast("RollForLootDrop", "Equipments", Game:GetPlayers())
end)