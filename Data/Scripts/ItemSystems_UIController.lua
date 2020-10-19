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

local function ToggleView(view)
    view.clientUserData.isVisible = not view.clientUserData.isVisible
    local activeCamera = LOCALPLAYER:GetActiveCamera()
    if view.clientUserData.isVisible then
        UI.SetCursorVisible(view.clientUserData.isVisible)
        UI.SetCursorLockedToViewport(not view.clientUserData.isVisible)
        PlaySound(SFX_OPEN)
    else
        UI.SetCursorVisible(view.clientUserData.isVisible)
        UI.SetCursorLockedToViewport(not view.clientUserData.isVisible)
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