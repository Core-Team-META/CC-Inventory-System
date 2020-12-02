--[[
    ItemSystems.LootView
    ================
    Handles the displays and collecting of lootable items on the UI.
]]

local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
local LOOT_SCROLL_PANEL = script:GetCustomProperty("ScrollPanel"):WaitForObject()
local PANEL_CLAIM_INSTRUCTIONS = script:GetCustomProperty("ClaimInstructions"):WaitForObject()
local PANEL_CLAIM_WARNING = script:GetCustomProperty("InventoryFullWarning"):WaitForObject()
local LOOTVIEW_INDIACTOR = script:GetCustomProperty("FauxLootView"):WaitForObject()
local ENTRY_PADDING_BETWEEN = script:GetCustomProperty("PaddingBetween")
local ENTRY_TEMPLATE = script:GetCustomProperty("LootEntryTemplate")
local DEFAULT_ICON = script:GetCustomProperty("DefaultIcon")
local SFX_CLAIM = script:GetCustomProperty("SFX_Claim")
local LOCAL_PLAYER = Game.GetLocalPlayer()

local BINDING_OPENLOOTVIEW = "ability_extra_33" -- [F]

local moreThenZeroCheck = 0
local isCooldown = false
-- Don't do anything until inventory has loaded.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

-- Keep a set of entries which can be re-used.
local view = {}

-- Initalizes the loot window.
function view:Init()
    self.lootEntries = {}
    self.lootEntryFreeSet = {}
    self:Clear()
end

-- Constructs a new UI loot entry for the loot window.
-- @returns UIControl
function view:NewEntry()
    local entry = World.SpawnAsset(ENTRY_TEMPLATE, { parent = LOOT_SCROLL_PANEL })
    entry.clientUserData.icon = entry:GetCustomProperty("Icon"):WaitForObject()
    entry.clientUserData.iconBorder = entry:GetCustomProperty("IconBorder"):WaitForObject()
    entry.clientUserData.iconGradient = entry:GetCustomProperty("IconGradient"):WaitForObject()
    entry.clientUserData.button = entry:GetCustomProperty("Button"):WaitForObject()
    entry.clientUserData.buttonText = entry:GetCustomProperty("ButtonText"):WaitForObject()
    -- The button needs a back-reference so that callbacks can act properly.
    entry.clientUserData.button.clientUserData.entry = entry
    -- Connect callback.
    entry.clientUserData.button.clickedEvent:Connect(function(button) self:OnClick(button) end)
    return entry
end

-- Perpares the loot entry and fills out the entry with the loot information
-- @param Int lootIndex
-- @param table lootInfo
-- @param bool isBackpackFull
-- @return UIControl
function view:PrepareLootEntry(lootIndex, lootInfo, isBackpackFull)
    local entry = nil
    for freeEntry,_ in pairs(self.lootEntryFreeSet) do
        entry = freeEntry
        self.lootEntryFreeSet[freeEntry] = nil
        break
    end
    entry = entry or self:NewEntry()
    self.lootEntries[entry] = true
    -- It is possible that this entry was already prepared.
    if true then
        -- Set the loot index so the button callback can act accordingly.
        entry.clientUserData.lootID = lootInfo.id
        -- Set the icon and name according to the item.
        entry.clientUserData.buttonText.text = lootInfo.item:IsStackable() and 
                                                string.format("%s  x%s",lootInfo.item:GetName(),lootInfo.item:GetStackSize()) or 
                                                lootInfo.item:GetName()
                                                
        lootInfo.item:ApplyIconImageSettings(entry.clientUserData.icon)
        -- Set the colors according to rarity.
        local color = ItemThemes.GetRarityColor(lootInfo.item:GetRarity())
        entry.clientUserData.iconBorder:SetColor(color)
        entry.clientUserData.iconGradient:SetColor(color)
        entry.clientUserData.buttonText:SetColor(color)
        color.a = 0.2
        entry.clientUserData.button:SetButtonColor(color)
        color.a = 0.5
        entry.clientUserData.button:SetHoveredColor(color)
        color.a = 0.7
        entry.clientUserData.button:SetPressedColor(color)
        -- If the backpack is full then check to see if the item is stackable and there is a spot that can accommodate the item.
        if isBackpackFull and lootInfo.item and 
                lootInfo.item:IsStackable() and 
                (inventory:_CanAccommodateStackableIgnoringOverflow(lootInfo.item) > 0)
            then
            isBackpackFull = false
        end
        -- If the backpack is full then check to see if the item is not stackable and there is a free loadout slot for the item
        if (lootInfo.item:GetEquipSlotType() == "Loadout") and
                not lootInfo.item:IsStackable() and
                inventory:GetFreeLoadoutSlot()
            then
            isBackpackFull = false
        end
        -- TODO: If the backpack is full then check to see if the item is stackable in a loadout slot.
        entry.clientUserData.button.isInteractable = not isBackpackFull
    end
    return entry
end

-- Clears all loot entries from the window.
function view:Clear()
    for entry,_ in pairs(self.lootEntries) do
        entry.visibility = Visibility.FORCE_OFF
        entry.clientUserData.button.isInteractable = false
        self.lootEntries[entry] = nil
        self.lootEntryFreeSet[entry] = true
    end
    self.yOffset = 0
    self.numEntries = 0
end

-- Draws a loot entry.
-- @param UIControl lootEntry
function view:DrawEntry(lootEntry)
    lootEntry.visibility = Visibility.INHERIT
    lootEntry.y = self.yOffset
    self.yOffset = self.yOffset + lootEntry.height + ENTRY_PADDING_BETWEEN
    self.numEntries = self.numEntries + 1
end

-- Sizes the scroll window to match the current amount of elements.
function view:FinalizeHeight()
    LOOT_SCROLL_PANEL.height = self.yOffset
end

-- Compares rarity between two loot items
-- @param a table
-- @param b table
-- @return bool
function view:CompareRarity(a,b)
    if(ItemThemes.GetRarityIndex(a.item:GetRarity()) == ItemThemes.GetRarityIndex(b.item:GetRarity())) then
        return self:CompareName(a,b)
    else
        return ItemThemes.GetRarityIndex(a.item:GetRarity()) > ItemThemes.GetRarityIndex(b.item:GetRarity())
    end
end

-- Compares name between two loot items
-- @param a table
-- @param b table
-- @return bool
function view:CompareName(a,b)
    if(a.item:GetName() == b.item:GetName() ) then
        return self:CompareStack(a,b)  
    else
        return a.item:GetName() < b.item:GetName()
    end
end

-- Compares the stack size of two items
-- @param a table
-- @param b table
-- @return bool
function view:CompareStack(a,b)
    return a.item:GetStackSize() > b.item:GetStackSize()
end

-- Called every tick
-- Handles the displaying of the loot entires
function view:Update()

    -- Clear everything from the last frame.
    self:Clear()
    -- Get all loots for the local player.
    local lootInfos = inventory:GetLootInfos()
    local isBackpackFull = inventory:IsBackpackFull()
    local Organisedlootinfos = {}

    --Sort ItemInformation Table
    for _, value in pairs(lootInfos) do
        table.insert(Organisedlootinfos,value)
    end
    table.sort(Organisedlootinfos, function (a , b)
        return view:CompareRarity(a,b)
    end)

    if #Organisedlootinfos ~= 0 then
        LOCAL_PLAYER.clientUserData.isOverLoot = true
        LOOTVIEW_INDIACTOR.visibility = Visibility.FORCE_ON
    else
        LOCAL_PLAYER.clientUserData.isOverLoot = false
        LOOTVIEW_INDIACTOR.visibility = Visibility.FORCE_OFF     
    end

    if not LOOT_VIEW.clientUserData.isVisible  then
        LOOT_VIEW.visibility = Visibility.FORCE_OFF
        moreThenZeroCheck = 0
        return
    end
    if(LOCAL_PLAYER.isDead) then 
        if(LOOT_VIEW.clientUserData.isVisible) then 
            Events.Broadcast("ForceCloseViewByName","LootView")
            LOOT_VIEW.clientUserData.isVisible = false
        end
        return
    end


    --Stop Lootview from opening If no loot found
    if(#Organisedlootinfos <= 0 and moreThenZeroCheck > 0 ) then  Events.Broadcast("ForceCloseViewByName","LootView") return end 
    moreThenZeroCheck = #Organisedlootinfos

    LOOT_VIEW.visibility = Visibility.INHERIT
    PANEL_CLAIM_INSTRUCTIONS.visibility = Visibility.FORCE_OFF

    -- Attach to the view all loots which are still unclaimed.
    for lootIndex,lootInfo in pairs(Organisedlootinfos) do
        if not lootInfo.isClaimed then
            local entry = self:PrepareLootEntry(lootIndex, lootInfo, isBackpackFull)
            view:DrawEntry(entry)
        end
    end
    view:FinalizeHeight()
end

-- The connected call-back that every loot entry will have.
-- @param UIControl button
function view:OnClick(button)
    local lootID = button.clientUserData.entry.clientUserData.lootID
    if not isCooldown then
        local claimedItem = inventory:GetLootItem(lootID)
        inventory:ClaimLoot(lootID)
        PlaySound(ItemThemes.GetItemSFX(claimedItem:GetType()))
        PlaySound(SFX_CLAIM)
        local wasLastLoot = self.numEntries == 1
        if wasLastLoot then
            Events.Broadcast("ForceCloseViewByName","LootView")
        end
        isCooldown = true
        Task.Wait(0.3)
        isCooldown = false
    end
end

view:Init()
function Tick(dt)
    view:Update()
end

LOCAL_PLAYER.bindingPressedEvent:Connect(function(_,binding) 
    if binding == BINDING_OPENLOOTVIEW and LOCAL_PLAYER.clientUserData.isOverLoot then
        Events.Broadcast("ForceOpenViewByName","LootView")
    end
end)