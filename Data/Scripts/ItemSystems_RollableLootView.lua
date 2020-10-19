local ROLL_LOOTFRAME = script:GetCustomProperty("RoolLootFrame"):WaitForObject()
local ACCEPT_ROLLBUTTON = script:GetCustomProperty("AcceptRollButton"):WaitForObject()
local PASS_ROLLBUTTON = script:GetCustomProperty("PassRollButton"):WaitForObject()
local FRAME_ITEM_HOVER = script:GetCustomProperty("PanelItemHover"):WaitForObject()
local HOVER_STATS_BUTTON = script:GetCustomProperty("HoverStatsButton"):WaitForObject()
local INITAL_REMAININGTIME = World.FindObjectByName("ItemSystems_RollLootManager"):GetCustomProperty("RollExpireTime")

local ItemDatabase = require(script:GetCustomProperty("ItemSystems_Database"))
local ItemThemes = require(script:GetCustomProperty("ItemSystems_ItemThemes"))
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))

ItemDatabase:WaitUntilLoaded()

local function DrawLoot(item)
    local FRAME = script:GetCustomProperty("StyleFrame"):WaitForObject()
    local ITEM_ICON = script:GetCustomProperty("StyleItemIcon"):WaitForObject()
    local ITEM_NAMETEXT = script:GetCustomProperty("StyleItemNameText"):WaitForObject()
    local GRADIENT_INNER = script:GetCustomProperty("StyleGradientInner"):WaitForObject()
    local ITEM_FRAMEBORDER = script:GetCustomProperty("StyleItemBorder"):WaitForObject()
    local rarityColor = ItemThemes.GetRarityColor(item:GetRarity())
    FRAME:SetColor(rarityColor)
    GRADIENT_INNER:SetColor(rarityColor)
    ITEM_FRAMEBORDER:SetColor(rarityColor)
    ITEM_NAMETEXT:SetColor(rarityColor)
    ITEM_NAMETEXT.text = item:GetName()
    ITEM_ICON:SetImage(item:GetIcon())
end

local function EnsureSufficientHoverStatEntries(numRequired)
    local hoverEntries = {}
    for i=1,numRequired do
        if not hoverEntries[i] then
            local entry = World.SpawnAsset(
                FRAME_ITEM_HOVER:GetCustomProperty("TemplateItemHoverStat"),
                { parent = FRAME_ITEM_HOVER.clientUserData.inner }
            )
            entry.clientUserData.icon = entry:GetCustomProperty("StatIcon"):WaitForObject()
            entry.clientUserData.value = entry:GetCustomProperty("StatValue"):WaitForObject()
            table.insert(hoverEntries, entry)
        end
    end
    return hoverEntries
end

local function InitHoverStats()
    FRAME_ITEM_HOVER.clientUserData.inner = FRAME_ITEM_HOVER:GetCustomProperty("StatParent"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.innerBaseHeight = FRAME_ITEM_HOVER.clientUserData.inner.height
    FRAME_ITEM_HOVER.clientUserData.pointer = FRAME_ITEM_HOVER:GetCustomProperty("Pointer"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.border = FRAME_ITEM_HOVER:GetCustomProperty("Border"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.title = FRAME_ITEM_HOVER:GetCustomProperty("Title"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.classification = FRAME_ITEM_HOVER:GetCustomProperty("Classification"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.description = FRAME_ITEM_HOVER:GetCustomProperty("Description"):WaitForObject()
    FRAME_ITEM_HOVER.clientUserData.statOffsetY = FRAME_ITEM_HOVER:GetCustomProperty("StatOffsetY")
    FRAME_ITEM_HOVER.clientUserData.statOffsetXBase = FRAME_ITEM_HOVER:GetCustomProperty("StatOffsetXBase")
    FRAME_ITEM_HOVER.clientUserData.statOffsetXBonus = FRAME_ITEM_HOVER:GetCustomProperty("StatOffsetXBonus")
end

local function DrawHoverStats(item)
    -- Text
    FRAME_ITEM_HOVER.clientUserData.title.text = item:GetName()
    FRAME_ITEM_HOVER.clientUserData.classification.text = string.format("%s %s", item:GetRarity(), item:GetType())
    FRAME_ITEM_HOVER.clientUserData.description.text = item:GetDescription()
    -- Attributes
    local stats = item:GetStats()
    local entries = EnsureSufficientHoverStatEntries(#stats)
    local offsetYBase = 0
    local offsetYBonus = 0
    for i,entry in ipairs(entries) do
        local statInfo = stats[i]
        if statInfo then
            entry.visibility = Visibility.INHERIT
            entry.clientUserData.icon:SetImage(ItemThemes.GetStatIcon(statInfo.name))
            entry.clientUserData.value.text = ItemThemes.GetItemStatFormattedValue(statInfo.name, statInfo.value)
            if statInfo.isBase then
                entry.x = FRAME_ITEM_HOVER.clientUserData.statOffsetXBase
                entry.y = FRAME_ITEM_HOVER.clientUserData.statOffsetY + offsetYBase
                offsetYBase = offsetYBase + entry.height
            else
                entry.x = FRAME_ITEM_HOVER.clientUserData.statOffsetXBonus
                entry.y = FRAME_ITEM_HOVER.clientUserData.statOffsetY + offsetYBonus
                offsetYBonus = offsetYBonus + entry.height
            end
        else
            entry.visibility = Visibility.FORCE_OFF
        end
    end
    FRAME_ITEM_HOVER.clientUserData.inner.height = FRAME_ITEM_HOVER.clientUserData.innerBaseHeight + math.max(offsetYBase, offsetYBonus)
    -- Colors.
    local color = ItemThemes.GetRarityColor(item:GetRarity())
    FRAME_ITEM_HOVER.clientUserData.pointer:SetColor(color)
    FRAME_ITEM_HOVER.clientUserData.border:SetColor(color)
    FRAME_ITEM_HOVER.clientUserData.classification:SetColor(color)
end

local function AcceptRoll()
    local id = script.parent.clientUserData.id
    ReliableEvents.BroadcastToServer("ProcessRollRequest",id,true)
    script.parent:Destroy()
end

local function PassRoll()
    local id = script.parent.clientUserData.id
    ReliableEvents.BroadcastToServer("ProcessRollRequest",id,false)
    script.parent:Destroy()
end

local function StartExpirationTimer()
    local TIME_REMAININGBAR = script:GetCustomProperty("TimeRemainingProgressBar"):WaitForObject()
    for i=1,INITAL_REMAININGTIME do
        local remainingTime = math.abs(i/(INITAL_REMAININGTIME)-1)
        TIME_REMAININGBAR.progress = remainingTime
        Task.Wait(1)
    end
    PassRoll()
end

local function init()
    -- We need to wait for the item data and roll id before we continue.
    script.parent.visibility = Visibility.FORCE_OFF
    while not script.parent.clientUserData.ItemHash do print(script.parent.clientUserData.ItemHash) Task.Wait() end
    script.parent.visibility = Visibility.FORCE_ON
    local itemHash = script.parent.clientUserData.ItemHash
    local item = ItemDatabase:CreateItemFromHash(itemHash)
    DrawLoot(item)
    InitHoverStats()
    DrawHoverStats(item)
    StartExpirationTimer()
end

HOVER_STATS_BUTTON.hoveredEvent:Connect(function() FRAME_ITEM_HOVER.visibility = Visibility.FORCE_ON end)
HOVER_STATS_BUTTON.unhoveredEvent:Connect(function() FRAME_ITEM_HOVER.visibility = Visibility.FORCE_OFF end)
ACCEPT_ROLLBUTTON.pressedEvent:Connect(AcceptRoll)
PASS_ROLLBUTTON.pressedEvent:Connect(PassRoll)
init()