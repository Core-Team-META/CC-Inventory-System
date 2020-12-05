--[[
    ItemSystems.ContainerView
    ================
    Handles all the interactions between the inventory and the containers data.
]]

local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local ItemDatabase = require(script:GetCustomProperty("ItemSystems_Database"))
local Inventory = require(script:GetCustomProperty("ItemSystems_Inventory"))
local StashReplicator = require(script:GetCustomProperty("StashReplicator"))
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))
local HOLDING_ICON = script:GetCustomProperty("HeldIcon"):WaitForObject()
local CONTAINER_VIEW = script:GetCustomProperty("ContainerView"):WaitForObject()
local INVENTORY_VIEW = script:GetCustomProperty("InventoryView"):WaitForObject()
local PANEL_ITEM_HOVER = script:GetCustomProperty("ItemHoverPanel"):WaitForObject()
local PANEL_CONTAINER = script:GetCustomProperty("BackpackSlotsPanel"):WaitForObject()
local PANEL_STATS = script:GetCustomProperty("StatsPanel"):WaitForObject()
local PLAYER_STASH_STATES = script:GetCustomProperty("PlayerStashStates"):WaitForObject()
local SFX_MOVE = script:GetCustomProperty("SFX_Move")
local SFX_DISCARD = script:GetCustomProperty("SFX_Discard")
local SFX_DENY = script:GetCustomProperty("SFX_DENY")
local CURSOR_HIGHLIGHT_BACKPACK = script:GetCustomProperty("CursorHighlight")
local PANEL_INVENTORY_BACKPACK = script:GetCustomProperty("InventoryBackpackSlotsPanel"):WaitForObject()
local CONTAINER_HEADER1 = script:GetCustomProperty("ContainerHeader1"):WaitForObject()
local CONTAINER_HEADER2 = script:GetCustomProperty("ContainerHeader2"):WaitForObject()
local CONTAINER_HEADER3 = script:GetCustomProperty("ContainerHeader3"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local LOCAL_INVENTORY = LOCAL_PLAYER.clientUserData.inventory

-- Wait for stat sheet to load.
while not LOCAL_PLAYER.clientUserData.statSheet do Task.Wait() end
local statSheet = LOCAL_PLAYER.clientUserData.statSheet

local containerInventory = nil -- Stash inventory waiting to be created on the client
local openBackpackIndex = nil
local containerViewTask = nil

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

-- Checks if the control is either part of the container or inventory
-- @param UIControl control
-- @return bool
local function ShouldConsiderControl(control) -- UIControl control
    return control == PANEL_CONTAINER or
            control == PANEL_INVENTORY_BACKPACK or
            IsSlotControl(control)
end

-- Returns the anchor and dock position of the UI element. This is not a native method in Core yet.
-- @param UIControl control
-- @return string, string
local function GetControlUIParameters(control)
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
local function IsInsideHitbox(slot, position, xRef, yRef) -- UIControl slot, position Vector2, int xRef, int yRef
    local xlo, ylo = xRef + slot.clientUserData.xAbsolute, yRef + slot.clientUserData.yAbsolute
    local xhi, yhi = xlo + slot.width, ylo + slot.height
    return xlo <= position.x and position.x <= xhi and ylo <= position.y and position.y <= yhi
end

-----------------------------------------------------------------------------------------------------------------
-- Runtime view logic.
-----------------------------------------------------------------------------------------------------------------
local view = {}

-- ContainerView Constructor
-- Constructs the container window when provided a stashID and stashHash
-- @param int or MUID stashID
-- @param string stashHash
function view:InitStashContainer(stashID,stashHash)
    -- If the stash we're trying to use is the one we're currently on then don't do anything.
    if self.stashID == stashID then return end
    -- If we're in an existing stash and we're opening another one then unlock the other stash
    if self.stashID then
        Events.BroadcastToServer("UnlockStash",self.stashID)
    end
    self:ResetSlots()

    if containerInventory then
        containerInventory.itemMovedEvent:Disconnect()
        containerInventory.itemDropEvent:Disconnect()
        containerInventory.itemSetToSlot:Disconnect()
    end

    -- Construct a inventory with 20 backpack slots only
    containerInventory = Inventory.New(ItemDatabase,LOCAL_PLAYER,20,nil)
    containerInventory:LoadHash(stashHash)

    -- Whenever a local rearrangement is made, broadcast to server.
    containerInventory.itemMovedEvent:Connect(function(fromSlotIndex, toSlotIndex)
        ReliableEvents.BroadcastToServer("SIM",stashID,fromSlotIndex,toSlotIndex)
    end)

    -- Whenever an item is dropped out of the inventory, broadcast to server.
    containerInventory.itemDropEvent:Connect(function(fromSlotIndex)
        ReliableEvents.BroadcastToServer("SDI",stashID,fromSlotIndex)
    end)

    -- Whenever an item is dropped out of the inventory, broadcast to server.
    containerInventory.itemSetToSlot:Connect(function(itemHash,quantity,toSlot)
        ReliableEvents.BroadcastToServer("SSI",stashID,itemHash,quantity,toSlot)
    end)

    self.stashID = stashID
    LOCAL_PLAYER.clientUserData.containerInventory = containerInventory

    CONTAINER_HEADER1.text = "[F] Stash"
    CONTAINER_HEADER2.text = "[F] Stash"
    CONTAINER_HEADER3.text = "[F] Stash"
    local stashObject = LOCAL_PLAYER.clientUserData.stashObject
    if not Object.IsValid(stashObject) then
        stashObject = nil
    end

    -- If the stash is player owned then display the name
    if stashObject then
        local stashPlayerID = stashObject:GetCustomProperty("PLAYERID")
        for _, player in ipairs(Game.GetPlayers()) do
            if player.id == stashPlayerID then
                CONTAINER_HEADER1.text = string.format("%s Stash",player.name)
                CONTAINER_HEADER2.text = string.format("%s Stash",player.name)
                CONTAINER_HEADER3.text = string.format("%s Stash",player.name)
                break
            end
        end
    end

    self:initContainerSlots(containerInventory.BACKPACK_CAPACITY) -- Container Slots
    self:InitItemHover()
    self:InitStats()
    self:InitBackpackSlots() -- Commuincation between container and local inventory
    Task.Spawn(function() self:BeginUpdate() end)
    Events.Broadcast("RegisterContainer",self)
    self:DrawSlots()
    self:Open()
end

function view:InitBackpackContainer(inventory,backpackIndex)
    
    if containerViewTask then
        containerViewTask:Cancel()
    end
    self:UnitBackpackContainer()

    if containerInventory then
        containerInventory.itemMovedEvent:Disconnect()
        containerInventory.itemDropEvent:Disconnect()
        containerInventory.itemSetToSlot:Disconnect()
        containerInventory.itemDropEvent:Disconnect()
    end

    openBackpackIndex = backpackIndex
    containerInventory = inventory

    self:ResetSlots()

    -- Whenever a local rearrangement is made, broadcast to server.
    containerInventory.itemMovedEvent:Connect(function(fromSlotIndex, toSlotIndex)
        ReliableEvents.BroadcastToServer("BIM",fromSlotIndex,toSlotIndex,backpackIndex)
    end)
    
    -- Whenever an item is dropped out of the inventory, broadcast to server.
    containerInventory.itemDropEvent:Connect(function(fromSlotIndex,toSlotIndex)
        ReliableEvents.BroadcastToServer("BDI",fromSlotIndex,toSlotIndex,backpackIndex)
    end)
    
    -- Whenever an item is dropped out of the inventory, broadcast to server.
    containerInventory.itemSetToSlot:Connect(function(itemHash,quantity,toSlot)
        ReliableEvents.BroadcastToServer("BSI",itemHash,quantity,toSlot,backpackIndex)
    end)
        
    CONTAINER_HEADER1.text = "Backpack"
    CONTAINER_HEADER2.text = "Backpack"
    CONTAINER_HEADER3.text = "Backpack"

    LOCAL_PLAYER.clientUserData.containerInventory = containerInventory
    self:initContainerSlots(inventory.BACKPACK_CAPACITY) -- Container Slots
    self:InitItemHover()
    self:InitStats()
    self:InitBackpackSlots() -- Commuincation between container and local inventory
    containerViewTask = Task.Spawn(function() self:BeginUpdate() end)
    Events.Broadcast("RegisterContainer",self)
    self:DrawSlots()
    self:Open()
end

function view:UnitBackpackContainer(backpackSlot)
    if containerInventory and backpackSlot == openBackpackIndex then
        containerInventory.itemMovedEvent:Disconnect()
        containerInventory.itemDropEvent:Disconnect()
        containerInventory.itemSetToSlot:Disconnect()
        self.isDone = true
    end
end

local initialHeight = nil
function view:InitItemHover()
    PANEL_ITEM_HOVER.clientUserData.inner = PANEL_ITEM_HOVER:GetCustomProperty("StatParent"):WaitForObject()
    if not initialHeight then
        initialHeight = PANEL_ITEM_HOVER.clientUserData.inner.height
    end
    PANEL_ITEM_HOVER.clientUserData.innerBaseHeight = initialHeight
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
    -- Reset the stats height anytime the hover is initalized
    PANEL_ITEM_HOVER.clientUserData.inner.height = initialHeight
    if self.itemHoverStatEntries then
        for _, entry in pairs(self.itemHoverStatEntries) do
            if Object.IsValid(entry) then
                entry:Destroy()
            end
        end
    end
    self.itemHoverStatEntries = {}
end

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

----------------------------------------------------------------------------------
-- Setup
----------------------------------------------------------------------------------

-- Begin drawing the container slots until the conatiner is no longer used.
-- This will reset the clients container view when finished.
function view:BeginUpdate()
    self.isDone = false
    while not self.isDone do
        Task.Wait()
        view:Draw()
    end
    LOCAL_PLAYER.clientUserData.containerInventory = nil
    view:ClearClickState()
    view:ClearDragState()
    view:ClearHoverState()
    self:ResetSlots()
    if self.stashID then
        Events.BroadcastToServer("UnlockStash",self.stashID) -- Tell the server to unlock the stash
        Events.Broadcast("StashClosed") -- Tell the stash interactor that the stash was closed
    end
    self.stashID = nil
end

-- Initializes the container slots
function view:initContainerSlots(slotCount)
    self.containerSlots = {}
    self.disabledSlots = {}
    local count = 0
    TraverseAndSetupSlots(PANEL_CONTAINER, function(slot)
        count = count + 1
        if count <= slotCount then
            table.insert(self.containerSlots, slot)
        else
            table.insert(self.disabledSlots, slot)
        end
    end)
    table.sort(self.containerSlots, function(a, b) return a.y == b.y and a.x < b.x or a.y < b.y end)
    for i,slot in ipairs(self.containerSlots) do
        slot.clientUserData.isContainer = true
        slot.clientUserData.slotIndex = i
    end
end

-- Initializes the inventory slots
function view:InitBackpackSlots()
    self.containerInventorySlots = {}
    for _, slot in pairs(PANEL_INVENTORY_BACKPACK:GetChildren()) do
        table.insert(self.containerInventorySlots,slot)
    end
    table.sort(self.containerInventorySlots, function(a, b) return a.y == b.y and a.x < b.x or a.y < b.y end)
    for i,slot in ipairs(self.containerInventorySlots) do
        slot.clientUserData.containerSlotIndex = i + #LOCAL_INVENTORY.EQUIP_SLOTS
    end
end

-- TODO: Allow container items to stat compare to the inventory.
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

----------------------------------------------------------------------------------

-- Returns true if the container view is visible
-- @return bool
function view:IsVisible()
    return CONTAINER_VIEW.clientUserData.isVisible 
end

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
    if not originSlot.clientUserData.isBackpack then
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
    self.slotUnderCursorIsContainer = slotUnderCursor.clientUserData.isContainer
    self.itemUnderCursor = containerInventory:GetItem(slotUnderCursor.clientUserData.slotIndex)
end

-- Resets hover stat of the view.
function view:ClearHoverState()
    self.slotUnderCursor = nil
    self.itemUnderCursor = nil
    self.slotUnderCursorIsContainer = nil
end

-----------------------------------------------------------------------------------------------------------------

-- Attempt to move an item from one slot to another
-- @param int fromSlotIndex
-- @param int toSlotIndex
function view:AttemptMoveItem(fromSlotIndex, toSlotIndex)
    if containerInventory:CanMoveItem(fromSlotIndex, toSlotIndex) then
        local movingItem = containerInventory:GetItem(fromSlotIndex)
        if fromSlotIndex ~= toSlotIndex then
            containerInventory:MoveItem(fromSlotIndex, toSlotIndex)
        end
        if toSlotIndex then
            PlaySound(SFX_MOVE)
        else
            if containerInventory.DROP_ITEM_INSTEAD_OF_DELETE then
               PlaySound(SFX_MOVE)
            else
               PlaySound(SFX_DISCARD)
            end
        end
    end
end

-- Performs the drag and drop when handling the items in the container.
function view:PerformDragDropAction()
    if self.slotUnderCursor or not self.isCursorInBounds and not self.isHoveringOnSalvage then
        local toSlotIndex = self.inventoryDropSlot or self.slotUnderCursor and self.slotUnderCursor.clientUserData.slotIndex or nil
        -- If the item is dropped into the inventory slot besides the container inventory
        if self.inventoryDropSlot and self.fromContainerSlot then
            if LOCAL_INVENTORY:GetItem(toSlotIndex) then
                local item = LOCAL_INVENTORY:GetItem(toSlotIndex)
                if item and item:IsBackpack() then
                    PlaySound(SFX_DENY)
                    return
                end


                local containerSlottedItem = containerInventory:GetItem(self.fromSlotIndex)
                local currentItem, newSlottedStackSize = LOCAL_INVENTORY:_StackItemOntoSlot(containerSlottedItem,toSlotIndex)
                if newSlottedStackSize then
                    if currentItem:GetStackSize() == 0 then
                        containerInventory:MoveItem(self.fromSlotIndex, 0)
                        LOCAL_INVENTORY:SetItemToSlot(currentItem,newSlottedStackSize,toSlotIndex)
                    else
                        containerInventory:SetItemToSlot(currentItem,currentItem:GetStackSize(),self.fromSlotIndex)
                        local copy = LOCAL_INVENTORY:_Copy(currentItem)
                        LOCAL_INVENTORY:SetItemToSlot(copy,newSlottedStackSize,toSlotIndex)
                    end
                else
                    -- Try to swap an item.
                    local containerItem = LOCAL_INVENTORY:GetItem(toSlotIndex)
                    local swapItem = LOCAL_INVENTORY:_Copy(containerItem)
                    local fromItem = containerInventory:GetItem(self.fromSlotIndex)
                    LOCAL_INVENTORY:SetItemToSlot(fromItem,fromItem:GetStackSize(),toSlotIndex)
                    containerInventory:SetItemToSlot(swapItem,swapItem:GetStackSize(),self.fromSlotIndex)
                end
                PlaySound(ItemThemes:GetItemSFX(currentItem))
            else
                local item = containerInventory:GetItem(self.fromSlotIndex)
                PlaySound(ItemThemes.GetItemSFX(item:GetType()))
                LOCAL_INVENTORY:SetItemToSlot(item,item:GetStackSize(),toSlotIndex)
                containerInventory:MoveItem(self.fromSlotIndex, 0)
            end
        -- If the item was dragged into another slot in the container
        elseif self.fromContainerSlot and toSlotIndex then
            PlaySound(SFX_MOVE)
            self:AttemptMoveItem(self.fromSlotIndex, toSlotIndex)
        -- If an item was dragged out from the container and not onto any slot.
        elseif self.fromContainerSlot and not self.isCursorInContainer then
            PlaySound(SFX_MOVE)
            containerInventory:MoveItem(self.fromSlotIndex, nil)
        end
    end
end

-- When a slot is clicked try to add it to the inventory.
function view:PerformClickAction()
    -- Now go ahead and perform the appropriate action.
    if not self.isCursorInContainer then return end
    local clickedItem = containerInventory:GetItem(self.clickSlotIndex)
    local canAddItem = false
    if clickedItem and clickedItem:IsStackable() then
        canAddItem = LOCAL_INVENTORY:_CanAccommodateStackableItem(clickedItem)
    elseif clickedItem and LOCAL_INVENTORY:GetFreeBackpackSlot()  ~= nil then
        canAddItem = true
    end
    if canAddItem then
        LOCAL_INVENTORY:AddItem(clickedItem,clickedItem:GetStackSize())
        containerInventory:MoveItem(self.clickSlotIndex,0)
        PlaySound(ItemThemes.GetItemSFX(clickedItem:GetType()))
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
    CONTAINER_VIEW.clientUserData.isVisible = true 
    CONTAINER_VIEW.visibility = Visibility.INHERIT
    self:ClearHoverState()
    self:ClearClickState()
end

function view:Close()
    --if self.isClosed then return end
    self.isClosed = true
    CONTAINER_VIEW.clientUserData.isVisible = false
    CONTAINER_VIEW.visibility = Visibility.FORCE_OFF
    self:ClearHoverState()
    self:ClearClickState()
    self.isDone = true
    PANEL_ITEM_HOVER.visibility = Visibility.FORCE_OFF
end

-- Updates the state of the cursor. This determines if the cursor is either in the inventory or container and what is being dragged.
function view:UpdateCursorState()
    self:ClearHoverState()
    -- No interactions when the cursor is disabled.
    if not UI.IsCursorVisible() then return end
    local cursorPosition = UI.GetCursorPosition()
    local screenSize = UI.GetScreenSize()
    self.isHoveringOnSalvage = nil
    local xRef, yRef = GetTopLeftPositionInParent(CONTAINER_VIEW, screenSize.x, screenSize.y)
    self.isCursorInBounds = IsInsideHitbox(CONTAINER_VIEW, cursorPosition, xRef, yRef)
    self.isCursorInContainer = IsInsideHitbox(CONTAINER_VIEW, cursorPosition, xRef, yRef)
    for _,slot in ipairs(self.containerSlots) do
        if IsInsideHitbox(slot, cursorPosition, xRef, yRef) then
            self.inventoryDropSlot = nil
            self:SetHoverState(slot)
            break
        end
    end
    local xRef, yRef = GetTopLeftPositionInParent(INVENTORY_VIEW, screenSize.x, screenSize.y)
    self.isCursorInBounds = IsInsideHitbox(INVENTORY_VIEW, cursorPosition, xRef, yRef)
    for _,slot in ipairs(self.containerInventorySlots) do
        if IsInsideHitbox(slot, cursorPosition, xRef, yRef) then
            self.inventoryDropSlot = slot.clientUserData.containerSlotIndex
            self:SetHoverState(slot)
            break
        end
    end
    -- Click logic.
    if not IsInsideHitbox(INVENTORY_VIEW, cursorPosition, xRef, yRef) and self.clickTime then
        local elapsed = time() - self.clickTime
        local distance = (cursorPosition - self.clickPosition).size
        if elapsed >= 3 or distance >= 3 then
            self:SetDragState(self.clickSlot)
            self:ClearClickState()
        end
    end
    -- Drag logic.
    if self.fromContainerSlot and self.isDragging then
        HOLDING_ICON.visibility = Visibility.INHERIT
        HOLDING_ICON.x = cursorPosition.x
        HOLDING_ICON.y = cursorPosition.y
    else
        HOLDING_ICON.visibility = Visibility.FORCE_OFF
    end
end

-- Resets the containers visuals to their defualt states.
function view:ResetSlots()
    if self.containerSlots then
        for i,slot in ipairs(self.containerSlots) do
            if slot and slot.clientUserData.borderDefaultColor then
                slot.clientUserData.border:SetColor(slot.clientUserData.borderDefaultColor)
                slot.clientUserData.icon.visibility = Visibility.FORCE_OFF
            end
        end
    end
end

-- Draws all the slots with their coresponding items.
function view:DrawSlots()
    for i,slot in ipairs(self.containerSlots) do
        local isHeldSlot = self.isDragging and slot.clientUserData.slotIndex == self.fromSlotIndex
        local item = containerInventory:GetItem(slot.clientUserData.slotIndex)
        -- If there is an item and it's not being held and it's a container slot. We don't want to draw over the inventory.
        if item and not isHeldSlot then
            local rarityColor = ItemThemes.GetRarityColor(item:GetRarity())
            slot.clientUserData.item = item
            slot.clientUserData.icon.visibility = Visibility.FORCE_ON
            item:ApplyIconImageSettings(slot.clientUserData.icon)
            slot.clientUserData.gradient.visibility = Visibility.INHERIT
            slot.clientUserData.border.visibility = Visibility.FORCE_ON
            slot.clientUserData.border:SetImage(slot.clientUserData.borderDefaultImage)
            slot.clientUserData.border:SetColor(rarityColor)
            -- Backpacks have counter indicators.
            if item and item:IsStackable() then
                slot.clientUserData.counterRoot.visibility = Visibility.FORCE_ON
                slot.clientUserData.counterNumber.text = tostring(item:GetStackSize())
            elseif item then
                slot.clientUserData.counterRoot.visibility = Visibility.FORCE_OFF
            end
        elseif self.fromContainerSlot and slot.clientUserData.slotIndex == self.fromSlotIndex or not item then
            slot.clientUserData.icon.visibility = Visibility.FORCE_OFF
            slot.clientUserData.gradient.visibility = Visibility.FORCE_OFF
            slot.clientUserData.border:SetImage(slot.clientUserData.borderDefaultImage)
            slot.clientUserData.border:SetColor(slot.clientUserData.borderDefaultColor)
            slot.clientUserData.counterRoot.visibility = Visibility.FORCE_OFF
        end
        slot.clientUserData.icon.parent.visibility = Visibility.FORCE_ON
    end
    for i,slot in ipairs(self.disabledSlots) do
        slot.clientUserData.icon.parent.visibility = Visibility.FORCE_OFF
    end
end

-- Draws the highlight hover when hovering over an item in the container.
function view:DrawHoverHighlight()
    if self.slotUnderCursor then
        local toSlotIndex = self.slotUnderCursor.clientUserData.slotIndex
        local shouldHighlight = false
        if self.slotUnderCursorIsContainer and not self.isDragging and self.itemUnderCursor then
            shouldHighlight = true
        elseif self.slotUnderCursorIsContainer and self.isDragging and containerInventory:CanMoveItem(self.fromSlotIndex, toSlotIndex) then
            shouldHighlight = true
        end
        if shouldHighlight then
            self.slotUnderCursor.clientUserData.border:SetImage(CURSOR_HIGHLIGHT_BACKPACK)
        end 
    end
end

-- Draws the tooltip info for an item under the cursor.
function view:DrawHoverInfo()
    if self.isCursorInContainer and self.itemUnderCursor and not self.isDragging then
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
        if #stats == 0 then
            PANEL_ITEM_HOVER.clientUserData.inner.height = 0
        end
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
    if not self.isCursorInContainer then return end
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
        if containerInventory:IsBackpackSlot(self.slotUnderCursor.clientUserData.slotIndex) then
            local previewItem = self.itemUnderCursor
            local targetEquipSlotIndex = containerInventory:ConvertEquipSlotIndex(previewItem:GetEquipSlotType())
            local exchangeItem = containerInventory:GetItem(targetEquipSlotIndex)
            -- First we're going to check to see if the item is an accessory. If so then we will get the weakest accessory to compare to.
            if previewItem:GetEquipSlotType() == "Accessory" and containerInventory:HasAvaliableAccessorySlots() then
                local weakestAccessory, slot = containerInventory:GetWeakestAccessory()
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

-- Runtime function that calls all the drawing methods.
function view:Draw()
    self:DrawSlots()
    self:DrawHoverInfo()
    self:DrawHoverHighlight()
    --self:DrawHoverStatCompare() -- TODO: Reiterate on this as it's not the same as InventoryView statscompare.
    self:UpdateCursorState()
end


-----------------------------------------------------------------------------------------------------------------
PLAYER_STASH_STATES.networkedPropertyChangedEvent:Connect(function(_,propertyName)
    local stashData = PLAYER_STASH_STATES:GetCustomProperty(propertyName)
    local playerID, containerHash, containerID = stashData:match(StashReplicator.PLAYER_STASH_PROPERTY_PATTERN)
    
    if playerID == LOCAL_PLAYER.id and containerHash and containerID then
        view:InitStashContainer(containerID, containerHash)
    end
end)


Events.Connect("BackpackOpen",function(inventory,backpackSlot)
    view:InitBackpackContainer(inventory,backpackSlot)
end)

Events.Connect("CloseMovedBackpack",function(backpackSlot)
    view:UnitBackpackContainer(backpackSlot)
end)

-- Events.Connect("CO",function(stashID,playerPropName) -- Container Open
--     while StashReplicator.GetPlayerStashPropertyByName(playerPropName) == "" do Task.Wait() end
--     view:InitStashContainer(stashID, StashReplicator.GetPlayerStashPropertyByName(playerPropName))
-- end)

Events.Connect("CC",function(stashID) -- Container Close
    if view.stashID == stashID then
        -- Events.Broadcast("ForceCloseViewByName","InventoryView")
        -- Events.Broadcast("ForceCloseViewByName","LootView")
        Events.Broadcast("UnRegisterContainer")
    end
end)

LOCAL_PLAYER.bindingPressedEvent:Connect(function(_, binding) view:OnBindingPressed(binding) end)
LOCAL_PLAYER.bindingReleasedEvent:Connect(function(_, binding) view:OnBindingReleased(binding) end)