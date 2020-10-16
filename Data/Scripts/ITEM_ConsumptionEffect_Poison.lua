local RuntimeContextDetection = require(script:GetCustomProperty("RuntimeContextDetection"))

return function(player)
    if RuntimeContextDetection.IsClientSide() then
        Task.Spawn(function()
            UI.PrintToScreen("Do client side stuff.", Color.GREEN)
        end, 0.5)
    end
    if RuntimeContextDetection.IsServerSide() then
        player:Die() 
    end
end