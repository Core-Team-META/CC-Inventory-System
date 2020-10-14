local EFFECT_TEXTS = script:GetCustomProperty("EffectTexts"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local effectsTexts = {}
for _, child in ipairs(EFFECT_TEXTS:GetChildren()) do
    local effectName = child:GetCustomProperty("EffectName")
    local effectText = child:GetCustomProperty("FlyUpText")
    local effectTextColor = child:GetCustomProperty("TextColor")
    effectsTexts[effectName] = {
        text = effectText,
        color = effectTextColor
    }
end

function ShowEffectText(targetPlayer, sourcePlayer, effectName)
    if effectsTexts[effectName] then
        if LOCAL_PLAYER == targetPlayer then
            UI.ShowFlyUpText(effectsTexts[effectName].text, targetPlayer:GetWorldPosition(),
            {color = effectsTexts[effectName].color, duration = 1})
        end
    end
end

Events.Connect("AppliedPlayerEffect", ShowEffectText)