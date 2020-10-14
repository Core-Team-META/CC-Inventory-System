local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
--local LOOT_VIEW_BUTTON = script:GetCustomProperty("LootViewButton"):WaitForObject()
local LOOT_VIEW_HOTKEY = script:GetCustomProperty("LootViewHotkey")
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
--local INVENTORY_VIEW_BUTTON = script:GetCustomProperty("InventoryViewButton"):WaitForObject()
local INVENTORY_VIEW_HOTKEY = script:GetCustomProperty("InventoryViewHotkey")
local SFX_OPEN = script:GetCustomProperty("SFX_InventoryOpen")
local SFX_CLOSE = script:GetCustomProperty("SFX_InventoryClose")

local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

local function ToggleView(view)
    view.clientUserData.isVisible = not view.clientUserData.isVisible
    if view.clientUserData.isVisible then
        UI.SetCursorVisible(true)
        PlaySound(SFX_OPEN)
    else
        UI.SetCursorVisible(false)
        PlaySound(SFX_CLOSE)
    end
end

local LOCAL_PLAYER = Game.GetLocalPlayer()
LOCAL_PLAYER.bindingPressedEvent:Connect(function(_,binding)
    if binding == LOOT_VIEW_HOTKEY then
        print("Loot Viewer")
        ToggleView(LOOT_VIEW)
    elseif binding == INVENTORY_VIEW_HOTKEY then
        print("Inventory Viwer")
        ToggleView(INVENTORY_VIEW)
    end
end)