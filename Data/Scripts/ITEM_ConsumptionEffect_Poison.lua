local RuntimeContextDetection = require(script:GetCustomProperty("RuntimeContextDetection"))

return function(player)
    if RuntimeContextDetection.IsClientSide() then
        Task.Spawn(function()
            UI.PrintToScreen("Client Side", Color.ORANGE)
        end, 0.5)
    end

    if RuntimeContextDetection.IsServerSide() then
        player:AddImpulse(Vector3.UP * 300)
    end
end