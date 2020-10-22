local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
local LOOT_VIEW_HOTKEY = script:GetCustomProperty("LootViewHotkey")
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
local INVENTORY_VIEW_HOTKEY = script:GetCustomProperty("InventoryViewHotkey")
local SFX_OPEN = script:GetCustomProperty("SFX_InventoryOpen")
local SFX_CLOSE = script:GetCustomProperty("SFX_InventoryClose")
local LOCALPLAYER = Game.GetLocalPlayer()

local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

local function CanChangeMouseVisiblity()
    if INVENTORY_VIEW.clientUserData.isVisible or LOOT_VIEW.clientUserData.isVisible then
        return false
    end
    return true
end

local function ChangeMouseVisiblity(isVisible)
    UI.SetCursorVisible(isVisible)
    UI.SetCursorLockedToViewport(not isVisible)
    UI.SetCanCursorInteractWithUI(isVisible)
end

local function ToggleView(view)
    view.clientUserData.isVisible = not view.clientUserData.isVisible
    if view.clientUserData.isVisible then
        ChangeMouseVisiblity(true)
        PlaySound(SFX_OPEN)
    else
        if CanChangeMouseVisiblity() then
            ChangeMouseVisiblity(false)
        end
        PlaySound(SFX_CLOSE)
    end
end

LOCALPLAYER.bindingPressedEvent:Connect(function(_,binding)
    if binding == LOOT_VIEW_HOTKEY then
        ToggleView(LOOT_VIEW)
    elseif binding == INVENTORY_VIEW_HOTKEY then
        ToggleView(INVENTORY_VIEW)
    end
end)

Events.Connect("ForceCloseViewByName",function(viewName)
    if viewName == INVENTORY_VIEW.name then
        ToggleView(INVENTORY_VIEW)
    elseif viewName == LOOT_VIEW.name then
        ToggleView(LOOT_VIEW)
    end
end)