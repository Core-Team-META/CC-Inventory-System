--[[
    ItemSystems.UIController
    ================
    Handles the displaying of the connected views.
]]

local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
local LOOT_VIEW_HOTKEY = script:GetCustomProperty("LootViewHotkey")
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
local INVENTORY_VIEW_HOTKEY = script:GetCustomProperty("InventoryViewHotkey")
local SFX_OPEN = script:GetCustomProperty("SFX_InventoryOpen")
local SFX_CLOSE = script:GetCustomProperty("SFX_InventoryClose")
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

local isCooldown = false -- Prevents hitting the broadcast limit when opening any window.

-- Registers windows to the local player
local function RegisterViews()
    LOCAL_PLAYER.clientUserData.connectedviews = LOCAL_PLAYER.clientUserData.connectedviews or {}
    LOCAL_PLAYER.clientUserData.connectedviews["LootView"] = LOOT_VIEW
    LOCAL_PLAYER.clientUserData.connectedviews["InventoryView"] = INVENTORY_VIEW
end

-- Helper function for playing sounds.
-- @param AssetRef sfx
local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

-- Determines if the the mouse can be hidden by checking all existing windows to see if they're visible
-- @return bool
local function CanChangeMouseVisiblity()
    for key, view in pairs(LOCAL_PLAYER.clientUserData.connectedviews) do
        if(view.clientUserData.isVisible == true) then
            return false
        end
    end
    return true
end

-- Changes the mouse visibility and state
-- @param bool isVisible
local function ChangeMouseVisiblity(isVisible)
    UI.SetCursorVisible(isVisible)
    UI.SetCursorLockedToViewport(not isVisible)
    UI.SetCanCursorInteractWithUI(isVisible)
    if(isVisible) then
        LOCAL_PLAYER.lookSensitivity = 0
    else
        LOCAL_PLAYER.lookSensitivity = 1
    end
end

-- Toggles the view of the provided view
-- @param UIControl view
local function ToggleView(view)
    if isCooldown then return end
    view.clientUserData.isVisible = not view.clientUserData.isVisible
    if view.clientUserData.isVisible then
        inventory:UpdateLockAbilities(false)
        ChangeMouseVisiblity(true)
        PlaySound(SFX_OPEN)
    else
        if CanChangeMouseVisiblity() then
            inventory:UpdateLockAbilities(true)
            ChangeMouseVisiblity(false)
        end
        PlaySound(SFX_CLOSE)
    end
    isCooldown = true
    Task.Wait(0.3)
    isCooldown = false
end

-- Listens for inventory and loot window key presses
LOCAL_PLAYER.bindingPressedEvent:Connect(function(_,binding)
    if binding == LOOT_VIEW_HOTKEY then
        ToggleView(LOOT_VIEW)
    elseif binding == INVENTORY_VIEW_HOTKEY then
        ToggleView(INVENTORY_VIEW)
    end
end)

-- Toggle a view by name
-- @param string viewName
Events.Connect("ToggleViewByName",function(viewName)
    if( LOCAL_PLAYER.clientUserData.connectedviews[viewName]) then
        ToggleView(LOCAL_PLAYER.clientUserData.connectedviews[viewName])
    end
end)

-- Close a view by name
-- @param string viewName
Events.Connect("ForceCloseViewByName",function(viewName)
    if( LOCAL_PLAYER.clientUserData.connectedviews[viewName]) then
        LOCAL_PLAYER.clientUserData.connectedviews[viewName].clientUserData.isVisible = false
        if CanChangeMouseVisiblity() then
            inventory:UpdateLockAbilities(true)
            ChangeMouseVisiblity(false)
        end
    end
end)

-- Open a view by name
-- @param string viewNam
Events.Connect("ForceOpenViewByName",function(viewName)
    if( LOCAL_PLAYER.clientUserData.connectedviews[viewName]) then
        LOCAL_PLAYER.clientUserData.connectedviews[viewName].clientUserData.isVisible = true
        Task.Wait()
        inventory:UpdateLockAbilities(false)
        ChangeMouseVisiblity(true)
    end
end)

RegisterViews()
Events.Connect("InventoryView.EquippedItem", function() Task.Wait(.3) inventory:UpdateLockAbilities(CanChangeMouseVisiblity()) end)
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