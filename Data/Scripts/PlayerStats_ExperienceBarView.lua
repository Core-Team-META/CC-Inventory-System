local PROGRESS_BAR = script:GetCustomProperty("ProgressBar"):WaitForObject()
local LEVELUP_BLINKER = script:GetCustomProperty("LevelUpBlinker"):WaitForObject()
local HOVER_BUTTON = script:GetCustomProperty("HoverButton"):WaitForObject()
local TOOLTIP_ROOT = script:GetCustomProperty("ToolTipRoot"):WaitForObject()
local TOOLTIP_LEVEL = script:GetCustomProperty("ToolTipLevelText"):WaitForObject()
local TOOLTIP_EXPERIENCE = script:GetCustomProperty("ToolTipExperienceText"):WaitForObject()
local SFX_LEVELUP = script:GetCustomProperty("SFX_LevelUp"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
while not LOCAL_PLAYER.clientUserData.statSheet do Task.Wait() end
local statSheet = LOCAL_PLAYER.clientUserData.statSheet

local PROGRESS_ANIMATION_DURATION = 0.5
local LEVELUP_ANIMATION_DURATION = 0.2
local LEVELUP_ANIMATION_CYCLES = 1
local LEVELUP_ANIMATION_MAX_ALPHA = LEVELUP_BLINKER:GetColor().a

-- Progress bar animation state.
local progressLerpStart = PROGRESS_BAR.progress
local progressLerpStop = PROGRESS_BAR.progress
local progressLerpTimer = 0
-- Level up animation state.
local blinkTimer = nil

local function UpdateToolTipText()
    TOOLTIP_LEVEL.text = string.format("Level %d", statSheet:GetLevel())
    if statSheet:IsMaxLevel() then
        TOOLTIP_EXPERIENCE.text = string.format("max level")
    else
        TOOLTIP_EXPERIENCE.text = string.format("%d to next level", statSheet:GetLevelExperienceRemaining())
    end
end

local function UpdateProgressTargets()
    local currentProgress = statSheet:GetLevelProgress()
    if currentProgress ~= progressLerpStop then
        progressLerpStart = PROGRESS_BAR.progress
        progressLerpStop = currentProgress
        progressLerpTimer = 0
        -- Handle the case where the bar has wrapped around.
        if progressLerpStart > progressLerpStop then
            progressLerpStart = progressLerpStart - 1
        end
    end
end

local function UpdateProgressAnimation(dt)
    if progressLerpTimer <= PROGRESS_ANIMATION_DURATION then
        progressLerpTimer = progressLerpTimer + dt
        local progress = CoreMath.Lerp(progressLerpStart, progressLerpStop, CoreMath.Clamp(progressLerpTimer / PROGRESS_ANIMATION_DURATION))
        if progress < 0 then
            progress = progress + 1
        end
        -- Anytime we wrap around is a level crossing.
        if not blinkTimer and progress < PROGRESS_BAR.progress then
            blinkTimer = 0
            SFX_LEVELUP:Play()
        end
        -- Update.
        PROGRESS_BAR.progress = progress
    else
        PROGRESS_BAR.progress = progressLerpStop
    end
end

local function UpdateLevelUpAnimation(dt)
    if blinkTimer and blinkTimer <= LEVELUP_ANIMATION_DURATION then
        blinkTimer = blinkTimer + dt
        local blinkAmount = 1.0 - 0.5 * math.cos(2 * math.pi * LEVELUP_ANIMATION_CYCLES * blinkTimer / LEVELUP_ANIMATION_DURATION)
        local color = LEVELUP_BLINKER:GetColor()
        color.a = blinkAmount * LEVELUP_ANIMATION_MAX_ALPHA
        LEVELUP_BLINKER:SetColor(color)
        LEVELUP_BLINKER.visibility = Visibility.INHERIT
    else
        blinkTimer = nil
        LEVELUP_BLINKER.visibility = Visibility.FORCE_OFF
    end
end

function Tick(dt)
    UpdateToolTipText()
    UpdateProgressTargets()
    UpdateProgressAnimation(dt)
    UpdateLevelUpAnimation(dt)
end

-- Connect hover button to trigger tooltip.
HOVER_BUTTON.hoveredEvent:Connect(function() TOOLTIP_ROOT.visibility = Visibility.INHERIT end)
HOVER_BUTTON.unhoveredEvent:Connect(function() TOOLTIP_ROOT.visibility = Visibility.FORCE_OFF end)