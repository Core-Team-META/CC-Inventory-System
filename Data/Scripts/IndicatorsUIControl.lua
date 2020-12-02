---------------------------------------------------------------------------------
--Hide UI
---------------------------------------------------------------------------------
local Container = script:FindAncestorByType("UIContainer")
Events.Connect("ToggleUI", function(state)
    if(state) then
        Container.visibility = Visibility.INHERIT
    else
        Container.visibility = Visibility.FORCE_OFF
    end
end)