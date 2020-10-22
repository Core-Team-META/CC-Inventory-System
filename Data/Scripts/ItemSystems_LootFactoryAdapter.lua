﻿--[[
    ItemSystems.LootFactoryAdapter
    ================
    Replaces the drop function from StandardCombo's loot factory and in its place registers our loot drop function.
]]

-- Wait for the loot factory to register the drop function to the global table and replace it as soon as it registers.
while _G["standardcombo.NPCKit.LootDropFactory"].Drop == nil do Task.Wait() end
_G["standardcombo.NPCKit.LootDropFactory"].Drop = function(lootId, position)
    --Events.Broadcast("RollForLootDrop", lootId, Game:GetPlayers()) -- Uncomment Me on roll for loot tutorial
    --Events.Broadcast("DropLoot", lootId, position - Vector3.UP * 100) -- Uncomment Me on loot drops tutorial
end