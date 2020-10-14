local ACTIVATE_TRIGGER = script:GetCustomProperty("ActivateTrigger"):WaitForObject()

ACTIVATE_TRIGGER.interactedEvent:Connect(function()
    local names = { "Coderz Blade", "Gold Ingot", "Poison Potion", "Chest Plate" }
    Events.Broadcast("RollForLootDrop",names[math.random(1,4)],Game:GetPlayers())
end)