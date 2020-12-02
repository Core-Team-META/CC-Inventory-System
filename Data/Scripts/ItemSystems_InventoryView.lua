--[[
    ItemSystems.IventoryView
    ================
    Handles all the interactions between the player and the inventory.
]]

local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local ItemDatabase = require(script:GetCustomProperty("ItemSystems_Database"))
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
--local CONTAINER_VIEW = script:GetCustomProperty("ContainerView"):WaitForObject()
local PLAYER_NAME = script:GetCustomProperty("PlayerName"):WaitForObject()
local PLAYER_ICON = script:GetCustomProperty("PlayerIcon"):WaitForObject()
local PLAYER_LEVEL = script:GetCustomProperty("PlayerLevel"):WaitForObject()
local PLAYER_LEVEL_PROGRESS = script:GetCustomProperty("PlayerLevelProgress"):WaitForObject()
local PANEL_STATS = script:GetCustomProperty("StatsPanel"):WaitForObject()
local PANEL_EQUIPPED = script:GetCustomProperty("EquippedSlotsPanel"):WaitForObject()
local PANEL_BACKPACK = script:GetCustomProperty("BackpackSlotsPanel"):WaitForObject()
--local PANEL_LOADOUTS = script:GetCustomProperty("LoadoutSlots"):WaitForObject()
local PANEL_ITEM_HOVER = script:GetCustomProperty("ItemHoverPanel"):WaitForObject()
--local PANEL_SALVAGE = script:GetCustomProperty("SalvagePanel"):WaitForObject()
local REQUIRES_LEVEL_ALERT = script:GetCustomProperty("RequiresLevelAlert"):WaitForObject()
local REQUIRES_LEVEL_TEXT = REQUIRES_LEVEL_ALERT:GetCustomProperty("AlertText"):WaitForObject()
local HOLDING_ICON = script:GetCustomProperty("HeldIcon"):WaitForObject()
local CLICK_TIMEOUT = script:GetCustomProperty("ClickTimeout")
local CLICK_DEADZONE_RADIUS = script:GetCustomProperty("ClickDeadzoneRadius")
local CURSOR_HIGHLIGHT_BACKPACK = script:GetCustomProperty("CursorHighlightBackpack")
local SFX_EQUIP = script:GetCustomProperty("SFX_Equip")
local SFX_MOVE = script:GetCustomProperty("SFX_Move")
local SFX_DISCARD = script:GetCustomProperty("SFX_Discard")
local SFX_DENIED = script:GetCustomProperty("SFX_Denied")
local TEMP_SFX_SALVAGE = script:GetCustomProperty("TEMP_SFX_Salvage")
local SLOT_HIGHLIGHT_COLOR = script:GetCustomProperty("SlotHighlightColor")
local LOADOUT_COOLDOWN_TIME = script:GetCustomProperty("LoadoutCooldownInSeconds")
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Hardcoded UI placement settings.
local SLOT_ANCHOR = "TopCenter"
local SLOT_DOCK = "TopCenter"

-- Wait for inventory to load.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

-- Wait for stat sheet to load.
while not LOCAL_PLAYER.clientUserData.statSheet do Task.Wait() end
local statSheet = LOCAL_PLAYER.clientUserData.statSheet

-- Players current level
local currentLevel = nil

-----------------------------------------------------------------------------------------------------------------
PLAYER_NAME.text = LOCAL_PLAYER.name
PLAYER_ICON:SetImage(LOCAL_PLAYER)

-----------------------------------------------------------------------------------------------------------------

-- Easy function for playing sounds.
-- @param AssetRef sfx
local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

-- Returns true if the slot has the required children
-- @param UIControl control
-- @return boolean
local function IsSlotControl(control)
    if control:FindChildByName("Icon") and 
    control:FindChildByName("Border") and
    control:FindChildByName("Gradient") then
        return true
    end
    return false
end

-- Checks if the control is either part of the inventory, equip panel, backpack, 
-- loadout, or salvage panel.
-- @param UIControl control
-- @return bool
local function ShouldConsiderControl(control) -- UIControl control
    return control == INVENTORY_VIEW or
           control == PANEL_EQUIPPED or
           control == PANEL_BACKPACK or
           control == PANEL_LOADOUTS or
           control == PANEL_SALVAGE or
            IsSlotControl(control)
end

-- Returns the anchor and dock position of the UI element. This is not a native method in Core yet.
-- @param UIControl control
-- @return string, string
local function GetControlUIParameters(control) -- UIControl control
    local anchor, dock = control:GetCustomProperty("Anchor"), control:GetCustomProperty("Dock")
    assert(anchor and dock, "control must have anchor/dock custom properties")
    return anchor, dock
end

-- Gets the top left position of the parent considering the dock and anchor position
-- @param UIControl control
-- @param int parentWidth
-- @param int parentHeight
-- @return int, int
local function GetTopLeftPositionInParent(control, parentWidth, parentHeight)
    local anchor, dock = GetControlUIParameters(control)
    local x, y = control.x, control.y
    if anchor:find("Center") then
        x = x - control.width / 2
    elseif anchor:find("Right") then
        x = x - control.width
    end
    if anchor:find("Middle") then
        y = y - control.height / 2
    elseif anchor:find("Bottom") then
        y = y - control.height
    end
    
    parentWidth = parentWidth or control.parent.width
    parentHeight = parentHeight or control.parent.height
    if control.parent.name == "Root" then
        local screenSize = UI.GetScreenSize()
        parentWidth = screenSize.x
        parentHeight = screenSize.y
    end
    
    if dock:find("Center") then
        x = x + parentWidth / 2
    elseif dock:find("Right") then
        x = x + parentWidth
    end
    if dock:find("Middle") then
        y = y + parentHeight / 2
    elseif dock:find("Bottom") then
        y = y + parentHeight
    end
    return x, y
end

-- Setup and processe a slot so that it may be considered as a slot for items.
-- @param UIControl control
-- @param function processSlot
local function SetupControl(control, processSlot)
    local x, y = GetTopLeftPositionInParent(control)
    control.clientUserData.xAbsolute = control.parent.clientUserData.xAbsolute + x
    control.clientUserData.yAbsolute = control.parent.clientUserData.yAbsolute + y
    if IsSlotControl(control) then
        control.clientUserData.icon = control:GetCustomProperty("Icon"):WaitForObject()
        control.clientUserData.border = control:GetCustomProperty("Border"):WaitForObject()
        control.clientUserData.gradient = control:GetCustomProperty("Gradient"):WaitForObject()
        control.clientUserData.defaultGradient = control.clientUserData.gradient:GetColor()
        control.clientUserData.gradientColored = control:GetCustomProperty("GradientColored"):WaitForObject()
        control.clientUserData.borderDefaultColor = control.clientUserData.border:GetColor()
        control.clientUserData.borderDefaultImage = control.clientUserData.border:GetImage()
        assert(control.clientUserData.icon and control.clientUserData.border)
        if control:GetCustomProperty("NotAllowed") then
            control.clientUserData.notAllowed = control:GetCustomProperty("NotAllowed"):WaitForObject()
        end
        if control:GetCustomProperty("CooldownBar") then
            control.clientUserData.cooldownBar = control:GetCustomProperty("CooldownBar"):WaitForObject()
        end
        if control:GetCustomProperty("CounterRoot") then
            control.clientUserData.counterRoot = control:GetCustomProperty("CounterRoot"):WaitForObject()
            control.clientUserData.counterNumber = control:GetCustomProperty("CounterNumber"):WaitForObject()
        end
        if processSlot then processSlot(control) end
    end
end

-- Traverse recursively though the the hierarchy from a root and setup the slots.
-- @param UIControl root
-- @param function processSlot
local function HasRequiredSlotProperties(root)
    if root:FindChildByName("Gradient") and 
    root:FindChildByName("Icon") and 
    root:FindChildByName("Border") then
        return true
    end
    return false
end

-- Traverse recursively though the the hierarchy from a root and setup the slots.
-- @param UIControl root
-- @param function processSlot
local function TraverseAndSetupSlots_R(root, processSlot)
    if root:IsA("UIControl") and ShouldConsiderControl(root) then
        SetupControl(root, processSlot)
        for _,child in ipairs(root:GetChildren()) do
            TraverseAndSetupSlots_R(child, processSlot)
        end
    end
end

-- Setup the absolute position of the parent and traverse to the next child.
-- @param UIControl root
-- @param function processSlot
-- @return function
local function TraverseAndSetupSlots(root, processSlot)
    root.parent.clientUserData.xAbsolute = 0
    root.parent.clientUserData.yAbsolute = 0
    return TraverseAndSetupSlots_R(root, processSlot)
end

-- Returns true if a 2D position is inside the slot.
-- @param int slot
-- @param vector2 position
-- @param int xRef
-- @param int yRef
-- @return bool
local function IsInsideHitbox(slot, position, xRef, yRef)
    local xlo, ylo = xRef + slot.clientUserData.xAbsolute, yRef + slot.clientUserData.yAbsolute
    local xhi, yhi = xlo + slot.width, ylo + slot.height
    return xlo <= position.x and position.x <= xhi and ylo <= position.y and position.y <= yhi
end

-----------------------------------------------------------------------------------------------------------------
-- Runtime view logic.
-----------------------------------------------------------------------------------------------------------------
local view = {}

-- Initalizes the inventory view.
function view:Init()
    self:InitStats()
    self:InitEquippedSlots()
    self:InitBackpackSlots()
    self:InitItemHover()
    --self:InitSalvageTray()
    self:Close()
end

-----------------------------------------------------------------------------------------------------------------
function view:InitStats()
    self.statElements = {}
    for _,statElement in ipairs(PANEL_STATS:GetChildren()) do
        local statName = statElement.name
        self.statElements[statName] = statElement
        -- Store all the control references for later.
        statElement.clientUserData.icon = statElement:GetCustomProperty("Icon"):WaitForObject()
        statElement.clientUserData.icon:SetImage(ItemThemes.GetStatIcon(statElement.name))
        statElement.clientUserData.iconDefaultColor = statElement.clientUserData.icon:GetColor()
        statElement.clientUserData.value = statElement:GetCustomProperty("Value"):WaitForObject()
        statElement.clientUserData.previewDelta = statElement:GetCustomProperty("PreviewDelta"):WaitForObject()
        statElement.clientUserData.name = statElement:GetCustomProperty("Name"):WaitForObject()
        statElement.clientUserData.name.text = ItemThemes.GetPlayerStatDisplayName(statName)
        statElement.clientUserData.defaultTextColor = statElement.clientUserData.name:GetColor()
        -- Certain elements come and go with hover buttons.
        local explanation = statElement:GetCustomProperty("Explanation"):WaitForObject()
        local value = statElement:GetCustomProperty("Value"):WaitForObject()
        local name = statElement:GetCustomProperty("Name"):WaitForObject()
        explanation.text = ItemThemes.GetPlayerStatExplanation(statName)
        local hoverHighlight = statElement:GetCustomProperty("HoverHighlight"):WaitForObject()
        local hoverButton = statElement:GetCustomProperty("HoverButton"):WaitForObject()
        hoverButton.hoveredEvent:Connect(function()
            hoverHighlight.visibility = Visibility.INHERIT
            explanation.visibility = Visibility.INHERIT
            value.visibility = Visibility.FORCE_OFF
            name.visibility = Visibility.FORCE_OFF
            statElement.clientUserData.previewDelta.visibility = Visibility.FORCE_OFF
        end)
        hoverButton.unhoveredEvent:Connect(function()
            hoverHighlight.visibility = Visibility.FORCE_OFF
            explanation.visibility = Visibility.FORCE_OFF
            value.visibility = Visibility.INHERIT
            name.visibility = Visibility.INHERIT
            statElement.clientUserData.previewDelta.visibility = Visibility.INHERIT
        end)
    end
end


-----------------------------------------------------------------------------------------------------------------
-- Slot Setup
-----------------------------------------------------------------------------------------------------------------

function view:InitSalvageTray()
    TraverseAndSetupSlots(PANEL_SALVAGE)
    PANEL_SALVAGE.clientUserData.resourceHeader = PANEL_SALVAGE:GetCustomProperty("ResourceHeader"):GetObject()
    PANEL_SALVAGE.clientUserData.resourceScrollPanel = PANEL_SALVAGE:GetCustomProperty("ResourceScrollPanel"):GetObject()
    PANEL_SALVAGE.clientUserData.resourceEntry = PANEL_SALVAGE:GetCustomProperty("ResourceEntry")
    PANEL_SALVAGE.clientUserData.resourceScrollPanel = PANEL_SALVAGE:GetCustomProperty("ResourceScrollPanel"):GetObject()
    PANEL_SALVAGE.clientUserData.salvageProgressBar = PANEL_SALVAGE:GetCustomProperty("SalvageProgress"):GetObject()
    PANEL_SALVAGE.clientUserData.salvageSpinner = PANEL_SALVAGE:GetCustomProperty("Spinner"):GetObject()
end

-- Initalizes equip slots
function view:InitEquippedSlots()
    self.allSlots = self.allSlots or {}
    self.equippedSlots = {}
    TraverseAndSetupSlots(PANEL_EQUIPPED, function(slot) table.insert(self.equippedSlots, slot) end)
    local accessoryOffset = 1
    self.accessoryEquipCycle = 0
    for i,slot in ipairs(self.equippedSlots) do
        slot.clientUserData.isEquipped = true
        local slotOffset = nil
        if slot.name == "Accessory" then
            slotOffset = accessoryOffset
            accessoryOffset = accessoryOffset + 1
        end
        slot.clientUserData.slotIndex = inventory:ConvertEquipSlotIndex(slot.name, slotOffset)
        table.insert(self.allSlots, slot)
    end
end

-- Initalizes backpack slots
function view:InitBackpackSlots()
    self.allSlots = self.allSlots or {}
    self.backpackSlots = {}
    TraverseAndSetupSlots(PANEL_BACKPACK, function(slot) table.insert(self.backpackSlots, slot) end)
    table.sort(self.backpackSlots, function(a, b) return a.y == b.y and a.x < b.x or a.y < b.y end)
    for i,slot in ipairs(self.backpackSlots) do
        slot.clientUserData.isBackpack = true
        slot.clientUserData.slotIndex = inventory:ConvertBackpackSlotIndex(i)
        table.insert(self.allSlots, slot)
    end
end

-- Initalizes the container slots
function view:InitContainerSlots(containerView)
    self.playerStashPosition = LOCAL_PLAYER:GetWorldPosition()
    CONTAINER_VIEW.visibility = Visibility.FORCE_ON
    self.containerView = containerView
    self.containerSlots = containerView.containerSlots
    TraverseAndSetupSlots(CONTAINER_VIEW, function(slot) table.insert(self.containerSlots, slot) end)
end

-- Uninitalizes the container slots
function view:UnInitContainerSlots()
    if self.containerView then
        self.containerView:Close()
        self:Close()
    end
    self.containerSlot = nil
    self.containerSlots = nil
    self.containerView = nil
end

-----------------------------------------------------------------------------------------------------------------

function view:InitItemHover()
    PANEL_ITEM_HOVER.clientUserData.inner = PANEL_ITEM_HOVER:GetCustomProperty("StatParent"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.innerBaseHeight = PANEL_ITEM_HOVER.clientUserData.inner.height
    PANEL_ITEM_HOVER.clientUserData.pointer = PANEL_ITEM_HOVER:GetCustomProperty("Pointer"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.border = PANEL_ITEM_HOVER:GetCustomProperty("Border"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.title = PANEL_ITEM_HOVER:GetCustomProperty("Title"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.classification = PANEL_ITEM_HOVER:GetCustomProperty("Classification"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.level = PANEL_ITEM_HOVER:GetCustomProperty("Level"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.leveldivider = PANEL_ITEM_HOVER:GetCustomProperty("LevelDivider"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.description = PANEL_ITEM_HOVER:GetCustomProperty("Description"):WaitForObject()
    PANEL_ITEM_HOVER.clientUserData.statOffsetY = PANEL_ITEM_HOVER:GetCustomProperty("StatOffsetY")
    PANEL_ITEM_HOVER.clientUserData.statOffsetXBase = PANEL_ITEM_HOVER:GetCustomProperty("StatOffsetXBase")
    PANEL_ITEM_HOVER.clientUserData.statOffsetXBonus = PANEL_ITEM_HOVER:GetCustomProperty("StatOffsetXBonus")
    self.itemHoverStatEntries = {}
end

function view:StopHighlightSlots()
    for i,slot in ipairs(self.loadoutSlots) do
        slot.clientUserData.gradient:SetColor(Color.New())
    end
    script.clientUserData.selectedSlot = nil
end

function view:HighlightSlot(control)
    if not control and script.clientUserData.gradient then
        script.clientUserData.gradient:SetColor(SLOT_HIGHLIGHT_COLOR)
    end
    control.clientUserData.gradient:SetColor(SLOT_HIGHLIGHT_COLOR)
    if script.clientUserData.selectedSlot and control ~= script.clientUserData.selectedSlot then
        script.clientUserData.selectedSlot.clientUserData.gradient:SetColor(Color.New())
    end
    script.clientUserData.selectedSlot = control
end

function view:ApplyLoadoutCooldowns()
    self.onLoadoutCooldown = true
    Task.Spawn(function()
        -- 0.01 estimate for Task.Wait()
        for i=LOADOUT_COOLDOWN_TIME/0.01,0,-1 do
            Task.Wait()
            for _, slot in pairs(self.loadoutSlots) do
                local cooldown = slot.clientUserData.cooldownBar
                cooldown.progress = i/100
            end
        end
        self.onLoadoutCooldown = false
    end)
end

function view:IsLoadoutOnCooldown()
    return self.onLoadoutCooldown
end

-----------------------------------------------------------------------------------------------------------------
function view:AttemptSalvage(fromSlotIndex)
    local canSalvage = inventory:CanAddSalvageProducts(fromSlotIndex)
    if canSalvage then
        PlaySound(TEMP_SFX_SALVAGE)
        inventory:SalvageItem(fromSlotIndex)
        return true
    else
        PlaySound(SFX_DENIED)
    end
end

function view:AttemptMoveItem(fromSlotIndex, toSlotIndex)
    if inventory:CanMoveItem(fromSlotIndex, toSlotIndex) then
        
        local movingItem = inventory:GetItem(fromSlotIndex)
        if movingItem and movingItem:GetLevelRequirement() then
            local itemLevel = movingItem:GetLevelRequirement()
            local playerLevel = LOCAL_PLAYER.clientUserData.statSheet:GetLevel()
            if itemLevel and playerLevel < itemLevel then
                if toSlotIndex ~= nil and inventory:IsEquipSlot(toSlotIndex) then
                    self:DisplayLevelAlert(itemLevel)
                    PlaySound(SFX_DENIED)
                    return
                end
            end
        end
        inventory:MoveItem(fromSlotIndex, toSlotIndex)
        if toSlotIndex then
            -- Equipment Moving Sounds
            if inventory:IsEquipSlot(toSlotIndex) or inventory:IsEquipSlot(fromSlotIndex) then
                local newlyEquippedItem = inventory:GetItem(toSlotIndex)
                PlaySound(ItemThemes.GetItemSFX(newlyEquippedItem:GetType()))
                Events.Broadcast("InventoryView.MovedItem",fromSlotIndex, toSlotIndex)
            else
                PlaySound(SFX_MOVE)
            end
        else
            if inventory.DROP_ITEM_INSTEAD_OF_DELETE then
                Events.Broadcast("InventoryView.DroppedItem")
                PlaySound(SFX_MOVE)
            else
                PlaySound(SFX_DISCARD)
                Events.Broadcast("InventoryView.Discarded")
            end
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:EnsureSufficientHoverStatEntries(numRequired)
    for i=1,numRequired do
        if not self.itemHoverStatEntries[i] then
            local entry = World.SpawnAsset(
                PANEL_ITEM_HOVER:GetCustomProperty("TemplateItemHoverStat"),
                { parent = PANEL_ITEM_HOVER.clientUserData.inner }
            )
            entry.clientUserData.icon = entry:GetCustomProperty("StatIcon"):WaitForObject()
            entry.clientUserData.value = entry:GetCustomProperty("StatValue"):WaitForObject()
            table.insert(self.itemHoverStatEntries, entry)
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
-- Returns true if the container view is visible
-- @return bool
function view:IsVisible()
    return INVENTORY_VIEW.clientUserData.isVisible 
end

-----------------------------------------------------------------------------------------------------------------
-- When a slot is clicked set the click state of the container view.
-- @param int clickSlot
function view:SetClickState(clickSlot)
    self.isClick = true
    self.clickTime = time()
    self.clickPosition = UI.GetCursorPosition()
    self.clickSlot = clickSlot
    self.clickSlotIndex = clickSlot.clientUserData.slotIndex
end

-- Clears the state of the click, reseting to default.
function view:ClearClickState()
    self.isClick = nil
    self.clickTime = nil
    self.clickPosition = nil
    self.clickSlot = nil
    self.clickSlotIndex = nil
end

-- Sets the drag state of the slot that is clicked and hold.
-- @param int originSlot
function view:SetDragState(originSlot)
    self.isDragging = true
    self.fromSlotIndex = originSlot.clientUserData.slotIndex
    self.fromContainerSlot = originSlot.clientUserData.isContainer
    if not self.fromContainerSlot then
        HOLDING_ICON.visibility = Visibility.INHERIT
        HOLDING_ICON:SetImage(originSlot.clientUserData.icon:GetImage())
        HOLDING_ICON:SetColor(originSlot.clientUserData.icon:GetColor())
        HOLDING_ICON.rotationAngle = originSlot.clientUserData.icon.rotationAngle
    end
end

-- Resets the drag state to default.
function view:ClearDragState()
    self.isDragging = nil
    self.fromSlotIndex = nil
    self.fromContainerSlot = nil
    HOLDING_ICON.visibility = Visibility.FORCE_OFF
end

-- Sets the hover state of the view when provided a slot
-- @param int slotUnderCursor
function view:SetHoverState(slotUnderCursor)
    self.slotUnderCursor = slotUnderCursor
    if slotUnderCursor.clientUserData.isContainer then
        self.containerSlot = slotUnderCursor.clientUserData.slotIndex
    end
    self.itemUnderCursor = inventory:GetItem(slotUnderCursor.clientUserData.slotIndex)
end

-- Resets hover stat of the view.
function view:ClearHoverState()
    self.containerSlot = nil
    self.slotUnderCursor = nil
    self.itemUnderCursor = nil
end

function view:PerformClickAction()
    -- Now go ahead an perform the appropriate action.
    local playerLevel = LOCAL_PLAYER.clientUserData.statSheet:GetLevel()
    local clickedItem = inventory:GetItem(self.clickSlotIndex)
    local itemLevel = clickedItem:GetLevelRequirement()
    if itemLevel and playerLevel < itemLevel then
        self:DisplayLevelAlert(itemLevel)
        PlaySound(SFX_DENIED)
        return
    end
    if clickedItem:IsEquippable() then
        -- Equippable item.
        if inventory:IsEquipSlot(self.clickSlotIndex) then
            local emptyBackpackSlotIndex = inventory:GetFreeBackpackSlot()
            if emptyBackpackSlotIndex then
                self:AttemptMoveItem(self.clickSlotIndex, emptyBackpackSlotIndex)
            end
        else
            local equipSlotType = clickedItem:GetEquipSlotType()
            local equipSlotOffset = nil
            local equipSlotIndex = inventory:GetFreeEquipSlot(equipSlotType) or inventory:ConvertEquipSlotIndex(equipSlotType, equipSlotOffset)
            -- Check for the weakest accessory that we should replace if there is any.
            if equipSlotType == "Accessory" then
                local _, slot = inventory:GetWeakestAccessory()
                equipSlotIndex = slot
            end
            if equipSlotIndex then
                if inventory:IsSlotEnabled(equipSlotIndex) then
                    self:AttemptMoveItem(self.clickSlotIndex, equipSlotIndex)
                else
                    PlaySound(SFX_DENIED)
                end

            end
        end
    elseif clickedItem:HasConsumptionEffect() then
        inventory:ConsumeItem(self.clickSlotIndex)
    end
end


-- When a slot is clicked try to add it to the inventory.
function view:PerformClickAction()
    -- Now go ahead and perform the appropriate action.
    local playerLevel = LOCAL_PLAYER.clientUserData.statSheet:GetLevel()
    local clickedItem = inventory:GetItem(self.clickSlotIndex)
    local itemLevel = clickedItem:GetLevelRequirement()
    if itemLevel and playerLevel < itemLevel then
        self:DisplayLevelAlert(itemLevel)
        PlaySound(SFX_DENIED)
        return
    end
    print("Attempting to move into a valid slot")
    if clickedItem:IsEquippable() and not self.isCursorInContainer then
        print("Is equippable")
        -- Equippable item.
        if inventory:IsEquipSlot(self.clickSlotIndex) then
            local emptyBackpackSlotIndex = inventory:GetFreeBackpackSlot()
            if emptyBackpackSlotIndex then
                self:AttemptMoveItem(self.clickSlotIndex, emptyBackpackSlotIndex)
            end
        else
            local equipSlotType = clickedItem:GetEquipSlotType()
            local equipSlotOffset = nil
            local equipSlotIndex = inventory:GetFreeEquipSlot(equipSlotType) or inventory:ConvertEquipSlotIndex(equipSlotType, equipSlotOffset)
            -- Check for the weakest accessory that we should replace if there is any.
            if equipSlotType == "Accessory" then
                local _, slot = inventory:GetWeakestAccessory()
                equipSlotIndex = slot
            end
            if equipSlotIndex then
                self:AttemptMoveItem(self.clickSlotIndex, equipSlotIndex)
            end
        end
    elseif clickedItem:IsBackpack() and not self.isCursorInContainer then
        -- If a backpack item has clicked on in the inventory
        PlaySound(ItemThemes:GetItemSFX(clickedItem))
        inventory:OpenBackpack(self.clickSlotIndex)
    elseif clickedItem:HasConsumptionEffect() and not self.isCursorInContainer then
        -- If a consumable item is clicked on in the inventory
        inventory:ConsumeItem(self.clickSlotIndex)
        PlaySound(ItemThemes.GetItemSFX(clickedItem:GetType()))
    end
end

-- Performs the drag and drop when handling items.
function view:PerformDragDropAction()

    if self.slotUnderCursor or not self.isCursorInBounds and not self.isHoveringOnSalvage then
        local toSlotIndex = self.containerSlot or self.slotUnderCursor and self.slotUnderCursor.clientUserData.slotIndex or nil


        -- For equipment slots
        if self.slotUnderCursor or not self.isCursorInBounds then
            if inventory:IsSlotEnabled(toSlotIndex) then
                self:AttemptMoveItem(self.fromSlotIndex, toSlotIndex)
            else
                PlaySound(SFX_DENIED)
            end
            return
        end
        

        -- If it's a container slot then move the item to the container.
        if self.isCursorInContainer and self.containerSlots and self.containerSlot and not self.fromContainerSlot then
            local containerInventory = LOCAL_PLAYER.clientUserData.containerInventory
            local item = inventory:GetItem(self.fromSlotIndex)
            if item and item:IsBackpack() then
                PlaySound(SFX_DENIED)
                return
            end

            -- If there is an existing item on the slot we want to put our item into
            if containerInventory:GetItem(toSlotIndex) then
                local currentItem, newSlottedStackSize = containerInventory:_StackItemOntoSlot(item,toSlotIndex)
                if newSlottedStackSize then
                    -- Stack item onto slot with matching item
                    if currentItem:GetStackSize() == 0 then
                        self:AttemptMoveItem(self.fromSlotIndex, nil)
                        containerInventory:SetItemToSlot(currentItem,newSlottedStackSize,toSlotIndex)
                    else
                        inventory:SetItemToSlot(currentItem,currentItem:GetStackSize(),self.fromSlotIndex)
                        local copy = containerInventory:_Copy(currentItem)
                        containerInventory:SetItemToSlot(copy,newSlottedStackSize,toSlotIndex)
                    end
                else
                    -- Swap the item from the inventory to the container.
                    local containerItem = containerInventory:GetItem(toSlotIndex)
                    local swapItem = containerInventory:_Copy(containerItem)
                    local fromItem = inventory:GetItem(self.fromSlotIndex)
                    if inventory:IsLoadoutSlot(self.fromSlotIndex) and not (containerItem:GetEquipSlotType() == "Loadout") then
                        PlaySound(SFX_DENIED)
                        return
                    end
                    containerInventory:SetItemToSlot(fromItem,fromItem:GetStackSize(),toSlotIndex)
                    inventory:SetItemToSlot(swapItem,swapItem:GetStackSize(),self.fromSlotIndex)
                end
                PlaySound(ItemThemes:GetItemSFX(currentItem))
            else
                containerInventory:SetItemToSlot(item,item:GetStackSize(),toSlotIndex)
                self:AttemptMoveItem(self.fromSlotIndex, nil)
            end
        
        elseif not self.isCursorInContainer and  not self.fromContainerSlot then
            local item = inventory:GetItem(self.fromSlotIndex)
            self:AttemptMoveItem(self.fromSlotIndex, toSlotIndex)
            if item and item:IsBackpack() then
                view:UnInitContainerSlots()
                Events.Broadcast("CloseMovedBackpack",self.fromSlotIndex)
            end
        end

    -- TODO: UNCOMMENT ME FOR SALVAGE
    --elseif self.isHoveringOnSalvage and self.canSalvageItem then
        -- local hasSalvaged = self:AttemptSalvage(self.fromSlotIndex)
        -- if(self.fromSlotIndex == inventory:GetEquipedLoadout() and hasSalvaged) then 
        --     inventory:UnEquipSlotItem() 
        -- end
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:OnBindingPressed(binding)
    if self.isClosed then return end
    if binding == "ability_primary" then
        if self.itemUnderCursor then
            self:SetClickState(self.slotUnderCursor)
        end
    end
end

function view:OnBindingReleased(binding)
    if binding == "ability_primary" then
        if self.isClick then
            self:PerformClickAction()
        elseif self.isDragging then
            self:PerformDragDropAction()
        end
        self:ClearClickState()
        self:ClearDragState()
    end
end

-----------------------------------------------------------------------------------------------------------------
function view:Open()
    if not self.isClosed then return end
    self.isClosed =  nil
    INVENTORY_VIEW.visibility = Visibility.INHERIT
    self:ClearHoverState()
    self:ClearClickState()
    self:ClearDragState()
end

function view:Close()
    if self.isClosed then return end
    self.isClosed = true
    INVENTORY_VIEW.visibility = Visibility.FORCE_OFF
    -- TODO: UNCOMMENT ME WITH BACKPACKS
    --CONTAINER_VIEW.visibility = Visibility.FORCE_OFF
    self:UnInitContainerSlots()
    self:ClearHoverState()
    self:ClearClickState()
    self:ClearDragState()
    PANEL_ITEM_HOVER.visibility = Visibility.FORCE_OFF
end

-- Updates the state of the cursor. This determines if the cursor is either
-- in the inventory or container and what is being dragged.
function view:UpdateCursorState()
    self:ClearHoverState()
    -- No interactions when the cursor is disabled.
    if not UI.IsCursorVisible() then return end
    local cursorPosition = UI.GetCursorPosition()
    local screenSize = UI.GetScreenSize()
    local xRef, yRef = GetTopLeftPositionInParent(INVENTORY_VIEW, screenSize.x, screenSize.y)
    self.isHoveringOnSalvage = nil
    self.isCursorInBounds = IsInsideHitbox(INVENTORY_VIEW, cursorPosition, xRef, yRef)  
    self.isCursorInBounds = self.isCursorInBounds == false and IsInsideHitbox(PANEL_EQUIPPED, cursorPosition, xRef, yRef) or IsInsideHitbox(INVENTORY_VIEW, cursorPosition, xRef, yRef)
    self.isCursorInContainer = false
    for _,slot in ipairs(self.allSlots) do
        if IsInsideHitbox(slot, cursorPosition, xRef, yRef) then
            self:SetHoverState(slot)
            break
        end
    end

    if self.containerSlots then
        local xRef, yRef = GetTopLeftPositionInParent(CONTAINER_VIEW, screenSize.x, screenSize.y)
        self.isCursorInContainer = IsInsideHitbox(CONTAINER_VIEW, cursorPosition, xRef, yRef)
        for _,slot in ipairs(self.containerSlots) do
            if slot and IsInsideHitbox(slot, cursorPosition, xRef, yRef) then
                self:SetHoverState(slot)
                break
            end
        end
    end
    -- Are they hovering over the salvage tray?
    -- TODO: UNCOMMENT ME FOR SALVAGE
    --if IsInsideHitbox(PANEL_SALVAGE, cursorPosition, xRef, yRef) then
    --    self.isHoveringOnSalvage = true
    --end
    -- Click logic.
    if not self.isCursorInContainer and self.clickTime then
        local elapsed = time() - self.clickTime
        local distance = (cursorPosition - self.clickPosition).size
        if elapsed >= CLICK_TIMEOUT or distance >= CLICK_DEADZONE_RADIUS then
            self:SetDragState(self.clickSlot)
            self:ClearClickState()
        end
    end
    -- Drag logic.
    if not self.fromContainerSlot and self.isDragging then
        HOLDING_ICON.visibility = Visibility.INHERIT
        HOLDING_ICON.x = cursorPosition.x
        HOLDING_ICON.y = cursorPosition.y
    else
        HOLDING_ICON.visibility = Visibility.FORCE_OFF
    end
end

function view:UpdatePlayerInfo()
    local playerLevel = statSheet:GetLevel()
    local playerLevelProgress = statSheet:GetLevelProgress()
    PLAYER_LEVEL.text = tostring(playerLevel)
    PLAYER_LEVEL_PROGRESS.progress = playerLevelProgress
end

function view:Draw()
    self:DrawSlots()
    -- TEMP DIST
    if self.playerStashPosition and (self.playerStashPosition - LOCAL_PLAYER:GetWorldPosition()).size > 100 then
        Events.Broadcast("ForceCloseViewByName","InventoryView")
        Events.Broadcast("ForceCloseViewByName","LootView")
        self.playerStashPosition = nil
        self:UnInitContainerSlots()
    end
    if not self:IsVisible() then
        self:Close()
    else
        self:Open()    
        self:UpdatePlayerInfo()
        self:UpdateCursorState()
        self:DrawStats()
        self:DrawHoverHighlight()
        self:DrawHoverInfo()
        self:DrawSalvageComponents()
        self:DrawHoverStatCompare()
    end
end

function view:DrawStats()
    self.statTotals = self.statTotals or {}
    for _,statName in ipairs(statSheet.STATS) do
        local statAmount = statSheet:GetStatTotalValue(statName)
        local statElement = self.statElements[statName]
        if statElement then
            statElement.clientUserData.value.text = ItemThemes.GetPlayerStatFormattedValue(statName, statAmount)
            statElement.clientUserData.value:SetColor(statElement.clientUserData.defaultTextColor)
            statElement.clientUserData.icon:SetColor(statElement.clientUserData.defaultTextColor)
            statElement.clientUserData.name:SetColor(statElement.clientUserData.defaultTextColor)
        end
        self.statTotals[statName] = statAmount
    end
end

-- Draws all the slots with their coresponding items.
function view:DrawSlots()
    for _,slot in ipairs(self.allSlots) do
        local isHeldSlot = self.isDragging and slot.clientUserData.slotIndex == self.fromSlotIndex
        local item = inventory:GetItem(slot.clientUserData.slotIndex)
        if item and not isHeldSlot then
            local rarityColor = ItemThemes.GetRarityColor(item:GetRarity())
            slot.clientUserData.item = item
            slot.clientUserData.icon.visibility = Visibility.INHERIT
            item:ApplyIconImageSettings(slot.clientUserData.icon)
            slot.clientUserData.gradient.visibility = Visibility.INHERIT
            --slot.clientUserData.gradientColored:SetColor(rarityColor)
            slot.clientUserData.border:SetImage(slot.clientUserData.borderDefaultImage)
            slot.clientUserData.border:SetColor(rarityColor)
            -- Backpacks have counter indicators.
            if inventory:IsBackpackSlot(slot.clientUserData.slotIndex) and slot.clientUserData.counterRoot then
                if item:IsStackable() then
                    slot.clientUserData.counterRoot.visibility = Visibility.INHERIT
                    slot.clientUserData.counterNumber.text = tostring(item:GetStackSize())
                else
                    slot.clientUserData.counterRoot.visibility = Visibility.FORCE_OFF
                end
            end
        elseif not self.fromContainerSlot and slot.clientUserData.slotIndex == self.fromSlotIndex or not isHeldSlot then
            slot.clientUserData.icon.visibility = Visibility.FORCE_OFF
            slot.clientUserData.gradient.visibility = Visibility.FORCE_OFF
            slot.clientUserData.border:SetImage(slot.clientUserData.borderDefaultImage)
            slot.clientUserData.border:SetColor(slot.clientUserData.borderDefaultColor)
            
            -- Backpacks have counter indicators.
            if inventory:IsBackpackSlot(slot.clientUserData.slotIndex) and slot.clientUserData.counterRoot then
                slot.clientUserData.counterRoot.visibility = Visibility.FORCE_OFF
            end
        end

        -- if inventory:IsEquipSlot(slot.clientUserData.slotIndex) then
        --     -- An additional graphic shows when the slot is not enabled.
        --     slot.clientUserData.disabled.visibility = inventory:IsSlotEnabled(slot.clientUserData.slotIndex) and Visibility.FORCE_OFF or Visibility.INHERIT
        -- end
    end
end

function view:DrawHoverHighlight()
    if self.slotUnderCursor then
        local toSlotIndex = self.slotUnderCursor.clientUserData.slotIndex
        local shouldHighlight = false
        if not self.isCursorInContainer and not self.isDragging and self.itemUnderCursor then
            shouldHighlight = true
        elseif not self.isCursorInContainer and self.isDragging and inventory:CanMoveItem(self.fromSlotIndex, toSlotIndex) then
            shouldHighlight = true
        end
        if shouldHighlight then
            self.slotUnderCursor.clientUserData.border:SetImage(CURSOR_HIGHLIGHT_BACKPACK)
        end 
    end
    for _,slot in ipairs(self.equippedSlots) do
        local toSlotIndex = slot.clientUserData.slotIndex
        slot.clientUserData.notAllowed.visibility = Visibility.FORCE_OFF
        if self.isDragging and not inventory:CanMoveItem(self.fromSlotIndex, toSlotIndex) then
            slot.clientUserData.notAllowed.visibility = Visibility.INHERIT
        end
    end
end

function view:ClearSalvageComponents()
    local components = PANEL_SALVAGE.clientUserData.resourceScrollPanel:GetChildren()
    self.canSalvageItem = false
    for _, item in pairs(components) do
        if Object.IsValid(item) then
            item:Destroy()
        end
    end
end

-- Draws the salvage product when an item is hovering over the salvage window.
function view:DrawSalvageComponents()
    local VERTICAL_PADDING = 10
    if self.isHoveringOnSalvage and self.isDragging then
        local itemFromSlot = inventory:GetItem(self.fromSlotIndex)
        local components = itemFromSlot:GetSalvageComponents()
        if components and #PANEL_SALVAGE.clientUserData.resourceScrollPanel:GetChildren() == 0 then
            self.canSalvageItem = true
            PANEL_SALVAGE.clientUserData.resourceHeader.visibility = Visibility.FORCE_ON
            for i, component in pairs(components) do
                local newEntry = World.SpawnAsset(PANEL_SALVAGE.clientUserData.resourceEntry,{ parent = PANEL_SALVAGE.clientUserData.resourceScrollPanel })
                local propGradient = newEntry:GetCustomProperty("Gradient"):WaitForObject()
                local propIconImage = newEntry:GetCustomProperty("IconImage"):WaitForObject()
                local propBorder = newEntry:GetCustomProperty("Border"):WaitForObject()
                local propItemNameLabel = newEntry:GetCustomProperty("ItemNameLabel"):WaitForObject()
                local propItemAmountLabel = newEntry:GetCustomProperty("ItemAmountLabel"):WaitForObject()
                newEntry.y = (i-1) * newEntry.height + (i*VERTICAL_PADDING)
                local item = ItemDatabase:GetItemFromMUID(component.item)
                local rarityColor = ItemThemes.GetRarityColor(item:GetRarity())
                propGradient:SetColor(rarityColor)
                propBorder:SetColor(rarityColor)
                propIconImage:SetImage(item:GetIcon())
                propItemNameLabel.text = item:GetName()
                propItemNameLabel:SetColor(rarityColor)
                propItemAmountLabel.text = string.format("x%s",component.amount)
                propItemAmountLabel:SetColor(rarityColor)
            end
        end
    else
        -- TODO: Uncomment for SALVAGE
        --PANEL_SALVAGE.clientUserData.resourceHeader.visibility = Visibility.FORCE_OFF
        --self:ClearSalvageComponents()
    end
end

-- Draws the tooltip info for an item under the cursor.
function view:DrawHoverInfo()
    if not self.isCursorInContainer and self.itemUnderCursor and not self.isDragging then
        -- UI properties.
        PANEL_ITEM_HOVER.visibility = Visibility.INHERIT
        PANEL_ITEM_HOVER.x = self.slotUnderCursor.clientUserData.xAbsolute
        PANEL_ITEM_HOVER.y = self.slotUnderCursor.clientUserData.yAbsolute
        -- Text
        local item = self.itemUnderCursor
        local playerLevel = LOCAL_PLAYER.clientUserData.statSheet:GetLevel()
        local itemLevel = item:GetLevelRequirement()
        PANEL_ITEM_HOVER.clientUserData.title.text = item:GetName()
        PANEL_ITEM_HOVER.clientUserData.classification.text = string.format("%s %s", item:GetRarity(), item:GetType())
        PANEL_ITEM_HOVER.clientUserData.description.text = item:GetDescription()
        PANEL_ITEM_HOVER.clientUserData.level.text =  string.format("Requires Level %i",itemLevel or 0)
        PANEL_ITEM_HOVER.clientUserData.level.visibility = itemLevel ~= nil and Visibility.FORCE_ON or Visibility.FORCE_OFF
        PANEL_ITEM_HOVER.clientUserData.leveldivider.visibility = itemLevel ~= nil and Visibility.FORCE_ON or Visibility.FORCE_OFF
        if itemLevel then
            PANEL_ITEM_HOVER.clientUserData.level:SetColor(itemLevel <= playerLevel and Color.WHITE or Color.RED)
        end
        -- Attributes
        local stats = item:GetStats()
        self:EnsureSufficientHoverStatEntries(#stats)
        local offsetYBase = itemLevel and 30 or 0
        local offsetYBonus = itemLevel and 30 or 0
        for i,entry in ipairs(self.itemHoverStatEntries) do
            local statInfo = stats[i]
            if statInfo then
                entry.visibility = Visibility.INHERIT
                entry.clientUserData.icon:SetImage(ItemThemes.GetStatIcon(statInfo.name))
                entry.clientUserData.value.text = ItemThemes.GetItemStatFormattedValue(statInfo.name, statInfo.value)
                if statInfo.isBase then
                    entry.x = PANEL_ITEM_HOVER.clientUserData.statOffsetXBase
                    entry.y = PANEL_ITEM_HOVER.clientUserData.statOffsetY + offsetYBase
                    offsetYBase = offsetYBase + entry.height
                else
                    entry.x = PANEL_ITEM_HOVER.clientUserData.statOffsetXBonus
                    entry.y = PANEL_ITEM_HOVER.clientUserData.statOffsetY + offsetYBonus
                    offsetYBonus = offsetYBonus + entry.height
                end
            else
                entry.visibility = Visibility.FORCE_OFF
            end
        end
        PANEL_ITEM_HOVER.clientUserData.inner.height = PANEL_ITEM_HOVER.clientUserData.innerBaseHeight + math.max(offsetYBase, offsetYBonus)
        -- Colors.
        local color = ItemThemes.GetRarityColor(item:GetRarity())
        PANEL_ITEM_HOVER.clientUserData.pointer:SetColor(color)
        PANEL_ITEM_HOVER.clientUserData.border:SetColor(color)
        PANEL_ITEM_HOVER.clientUserData.classification:SetColor(color)
    else
        PANEL_ITEM_HOVER.visibility = Visibility.FORCE_OFF
    end
end

function view:DrawHoverStatCompare()
    -- Lazy initialize a set of modifiers used to test out our hypothetical weapon swap.
    if not self.previewModifiers then
        self.cachedStats = {}
        self.previewModifiers = {}
        for _,statName in ipairs(statSheet.STATS) do
            self.previewModifiers[statName] = {
                add = statSheet:NewStatModifierAdd(statName, 0, true),
                mul = statSheet:NewStatModifierMul(statName, 1, true),
            }
        end
    end
    -- Default initialize modifier values.
    for statName,modifiers in pairs(self.previewModifiers) do
        modifiers.add.addend = 0
        modifiers.mul.multiplier = 1
        self.statElements[statName].clientUserData.previewDelta.text = ""
    end
    -- Conditionally apply hypothetical modifiers to preview stat changes.
    if self.itemUnderCursor and not self.isDragging then
        if inventory:IsBackpackSlot(self.slotUnderCursor.clientUserData.slotIndex) then
            local previewItem = self.itemUnderCursor
            local targetEquipSlotIndex = inventory:ConvertEquipSlotIndex(previewItem:GetEquipSlotType())
            local exchangeItem = inventory:GetItem(targetEquipSlotIndex)
            -- First we're going to check to see if the item is an accessory. If so then we will get the weakest accessory to compare to.
            if previewItem:GetEquipSlotType() == "Accessory" and inventory:HasAvaliableAccessorySlots() then
                local weakestAccessory, slot = inventory:GetWeakestAccessory()
                exchangeItem = weakestAccessory
            end
            -- Second the item we are hypothetically equipping.
            for _,itemStatName in ipairs(previewItem.STATS) do
                local statValue = previewItem:GetStatTotal(itemStatName)
                if itemStatName == "HealthPercent" then
                    self.previewModifiers.Health.mul.multiplier = 1 + statValue / 100
                elseif itemStatName ~= "Value" then
                    self.previewModifiers[itemStatName].add.addend = statValue
                end
            end
            -- Then the item we are hypothetically unequipping. Here we are inverting the modifiers which we know it will have applied.
            if exchangeItem then
                for _,itemStatName in ipairs(exchangeItem.STATS) do
                    local statValue = exchangeItem:GetStatTotal(itemStatName)
                    if itemStatName == "HealthPercent" then
                        self.previewModifiers.Health.mul.multiplier = self.previewModifiers.Health.mul.multiplier * (1 / (1 + statValue / 100))
                    elseif itemStatName ~= "Value" then
                        self.previewModifiers[itemStatName].add.addend = self.previewModifiers[itemStatName].add.addend - statValue
                    end
                end
            end
            -- Then the final stat calculation and drawing of appropriate graphics.
            for _,statName in ipairs(statSheet.STATS) do
                self.cachedStats[statName] = statSheet:GetStatTotalValue(statName)
            end
            statSheet:Update()
            for _,statName in ipairs(statSheet.STATS) do
                local statValue = statSheet:GetStatTotalValue(statName)
                local statDelta = statValue - self.cachedStats[statName]
                local statElement = self.statElements[statName]
                if statDelta ~= 0 then
                    local compareColor = statDelta > 0 and Color.GREEN or Color.RED
                    local compareToken = statDelta > 0 and "+ " or "- "
                    statElement.clientUserData.value.text = ItemThemes.GetPlayerStatFormattedValue(statName,statValue)
                    statElement.clientUserData.value:SetColor(compareColor)
                    statElement.clientUserData.previewDelta.text = compareToken .. ItemThemes.GetPlayerStatFormattedValue(statName, math.abs(statDelta))
                    statElement.clientUserData.previewDelta:SetColor(compareColor)
                end
            end
            -- We got what we came for, restore the original stats.
            for statName,modifiers in pairs(self.previewModifiers) do
                modifiers.add.addend = 0
                modifiers.mul.multiplier = 1
            end
            statSheet:Update()
        end
    end
end

-----------------------------------------------------------------------------------------------------------------
view:Init()
function Tick(dt)
    view:Draw()
end

local function ChangeMouseVisiblity(isVisible)
    UI.SetCursorVisible(isVisible)
    UI.SetCursorLockedToViewport(not isVisible)
    UI.SetCanCursorInteractWithUI(isVisible)
end

-----------------------------------------------------------------------------------------------------------------
LOCAL_PLAYER.bindingPressedEvent:Connect(function(_, binding) view:OnBindingPressed(binding) end)
LOCAL_PLAYER.bindingReleasedEvent:Connect(function(_, binding) view:OnBindingReleased(binding) end)

Events.Connect("RegisterContainer",function(container) 
    -- If the container is already registered then don't register another one.
    if not view.containerView then
        Events.Broadcast("ForceOpenViewByName","InventoryView")
        Events.Broadcast("ForceCloseViewByName","LootView")
        ChangeMouseVisiblity(true)
        view:UnInitContainerSlots()
        view:InitContainerSlots(container)
    end
end)

Events.Connect("UnRegisterContainer",function()
    view:UnInitContainerSlots()
end)