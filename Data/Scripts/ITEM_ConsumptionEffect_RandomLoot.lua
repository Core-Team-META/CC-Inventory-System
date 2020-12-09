--[[
    Consumption Effect

    When you click to consume a consumable item in the inventory. This code will execute on both
    the server and client.
]]

local RuntimeContextDetection = require(script:GetCustomProperty("RuntimeContextDetection"))

return function(player)
    if RuntimeContextDetection.IsClientSide() then
        -- Execute Client side code here!
        Task.Spawn(function()
            UI.PrintToScreen("Yay you got something random!!!", Color.GREEN)
        end, 1)
    end
    if RuntimeContextDetection.IsServerSide() then
        -- Execute server side code here!
        Events.Broadcast("OnDropLoot","Equipments", player:GetWorldPosition() - Vector3.UP * 100 )
    end
end