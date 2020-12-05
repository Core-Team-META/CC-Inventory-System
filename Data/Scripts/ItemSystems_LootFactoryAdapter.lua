--[[
    ItemSystems.LootFactoryAdapter
    ================
    Replaces the drop function from StandardCombo's loot factory and in its place registers our loot drop function.
]]

_G["standardcombo.NPCKit.LootDropFactory"] = {}

-- Wait for the loot factory to register the drop function to the global table and replace it as soon as it registers.
_G["standardcombo.NPCKit.LootDropFactory"].Drop = function(lootId, position)
    --Events.Broadcast("RollForLootDrop", lootId, Game:GetPlayers()) -- Uncomment Me for roll for loop drops
    Events.Broadcast("OnDropLoot", lootId, position - Vector3.UP * 100) -- Loot Drops
end