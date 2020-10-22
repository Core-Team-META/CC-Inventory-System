local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local LOOT_VIEW = script:GetCustomProperty("LootView"):WaitForObject()
local LOOT_SCROLL_PANEL = script:GetCustomProperty("ScrollPanel"):WaitForObject()
local PANEL_CLAIM_INSTRUCTIONS = script:GetCustomProperty("ClaimInstructions"):WaitForObject()
local PANEL_CLAIM_WARNING = script:GetCustomProperty("InventoryFullWarning"):WaitForObject()
local ENTRY_PADDING_BETWEEN = script:GetCustomProperty("PaddingBetween")
local ENTRY_TEMPLATE = script:GetCustomProperty("LootEntryTemplate")
local DEFAULT_ICON = script:GetCustomProperty("DefaultIcon")
local SFX_CLAIM = script:GetCustomProperty("SFX_Claim")
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Don't do anything until inventory has loaded.
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

-- Keep a set of entries which can be re-used.
local view = {}

function view:Init()
    self.lootEntries = {}
    self.lootEntryFreeSet = {}
    self:Clear()
end

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
        entry.clientUserData.lootIndex = lootIndex
        -- Set the icon and name according to the item.
        entry.clientUserData.buttonText.text = lootInfo.item:GetName()
        lootInfo.item:ApplyIconImageSettings(entry.clientUserData.icon)
        -- Set the colors according to rarity.
        local color = shouldGrayOut and COLOR_GRAYED_OUT or ItemThemes.GetRarityColor(lootInfo.item:GetRarity())
        entry.clientUserData.iconBorder:SetColor(color)
        entry.clientUserData.iconGradient:SetColor(color)
        entry.clientUserData.buttonText:SetColor(color)
        color.a = 0.2
        entry.clientUserData.button:SetButtonColor(color)
        color.a = 0.5
        entry.clientUserData.button:SetHoveredColor(color)
        color.a = 0.7
        entry.clientUserData.button:SetPressedColor(color)
        entry.clientUserData.button.isInteractable = not isBackpackFull
    end
    return entry
end

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

function view:DrawEntry(lootEntry)
    lootEntry.visibility = Visibility.INHERIT
    lootEntry.y = self.yOffset
    self.yOffset = self.yOffset + lootEntry.height + ENTRY_PADDING_BETWEEN
    self.numEntries = self.numEntries + 1
end

function view:FinalizeHeight()
    LOOT_SCROLL_PANEL.height = self.yOffset
end

function view:Update()
    if not LOOT_VIEW.clientUserData.isVisible then
        LOOT_VIEW.visibility = Visibility.FORCE_OFF
        return
    end
    -- Clear everything from the last frame.
    self:Clear()
    LOOT_VIEW.visibility = Visibility.INHERIT
    PANEL_CLAIM_INSTRUCTIONS.visibility = Visibility.FORCE_OFF
    PANEL_CLAIM_WARNING.visibility = Visibility.FORCE_OFF
    -- Get all loots for the local player.
    local lootInfos = inventory:GetLootInfos()
    local isBackpackFull = inventory:IsBackpackFull()
    -- Set the warning if backpack is full.
    if #lootInfos > 0 then
        PANEL_CLAIM_INSTRUCTIONS.visibility = isBackpackFull and Visibility.FORCE_OFF or Visibility.INHERIT
        PANEL_CLAIM_WARNING.visibility = isBackpackFull and Visibility.INHERIT or Visibility.FORCE_OFF
    end
    -- Attach to the view all loots which are still unclaimed.
    for lootIndex,lootInfo in ipairs(lootInfos) do
        if not lootInfo.isClaimed then
            local entry = self:PrepareLootEntry(lootIndex, lootInfo, isBackpackFull)
            view:DrawEntry(entry)
        end
    end
    view:FinalizeHeight()
end

function view:OnClick(button)
    local lootIndex = button.clientUserData.entry.clientUserData.lootIndex
    if inventory:CanClaimLoot(lootIndex) then
        inventory:ClaimLoot(lootIndex)
        local claimedItem = inventory:GetLootItem(lootIndex)
        PlaySound(ItemThemes.GetItemSFX(claimedItem:GetType()))
        PlaySound(SFX_CLAIM)
        local wasLastLoot = self.numEntries == 1
        if wasLastLoot then
            Events.Broadcast("ForceCloseViewByName","LootView")
        end
    end
end

view:Init()
function Tick(dt)
    view:Update()
end