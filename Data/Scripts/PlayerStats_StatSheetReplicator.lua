local StatSheet = require(script:GetCustomProperty("StatSheet"))
local COMPONENT = script:GetCustomProperty("COMPONENT"):WaitForObject()

---------------------------------------------------------------------------------------------------------
local OWNER = nil
while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT:GetCustomProperty("PlayerId") then
            OWNER = player
            break
        end
    end
end

---------------------------------------------------------------------------------------------------------
local STAT_PROPS = {
    Health      = "HP",
    Defense     = "DF",
    Attack      = "AT",
    Magic       = "MA",
    CritChance  = "CC",
    CDR         = "CD",
    Haste       = "HS",
    Tenacity    = "TE",
}

---------------------------------------------------------------------------------------------------------
local function ServerReplicateStatSheet()
    -- Experience.
    local experience = OWNER.serverUserData.statSheet:GetExperience()
    COMPONENT:SetNetworkedCustomProperty("XP", experience)
    -- Combat stats.
    for _,statName in ipairs(StatSheet.STATS) do
        local prop = STAT_PROPS[statName]
        local isBuffed = OWNER.serverUserData.statSheet:IsStatBuffed(statName)
        local isDebuffed = OWNER.serverUserData.statSheet:IsStatDebuffed(statName)
        local addValue = OWNER.serverUserData.statSheet:GetStatTotalModifierAdd(statName)
        local mulValue = OWNER.serverUserData.statSheet:GetStatTotalModifierMul(statName)
        COMPONENT:SetNetworkedCustomProperty(prop.."A", addValue)
        COMPONENT:SetNetworkedCustomProperty(prop.."M", mulValue)
    end
    -- Hitpoints.
    local oldMaxHitPoints = OWNER.maxHitPoints
    local newMaxHitPoints = OWNER.serverUserData.statSheet:GetStatTotalValue("Health")
    OWNER.maxHitPoints = newMaxHitPoints
    if newMaxHitPoints > oldMaxHitPoints then
        local adjustment = newMaxHitPoints - oldMaxHitPoints
        OWNER.hitPoints = OWNER.hitPoints + adjustment
    else
        OWNER.hitPoints = math.min(OWNER.hitPoints, OWNER.maxHitPoints)
    end
end

local function ServerSaveStatSheet()
    local playerData = Storage.GetPlayerData(OWNER)
    playerData.STATS = playerData.STATS or {}
    playerData.STATS.experience = OWNER.serverUserData.statSheet:GetExperience()
    Storage.SetPlayerData(OWNER, playerData)
end

local function ServerLoadStatSheet()
    local playerData = Storage.GetPlayerData(OWNER)
    OWNER.serverUserData.statSheet = StatSheet.New()
    OWNER.serverUserData.statSheet:SetExperience(playerData.STATS and playerData.STATS.experience or 0)
    -- Replicate the server-side statsheet to clients.
    local statSheetReplicationTask = Task.Spawn(function()
        ServerSaveStatSheet()
        ServerReplicateStatSheet()
    end)
    statSheetReplicationTask.repeatCount = -1
    script.destroyEvent:Connect(function()
        statSheetReplicationTask:Cancel()
    end)
end

---------------------------------------------------------------------------------------------------------
local function ClientUpdateStatSheet(statSheet, modifiers)
    -- Combat stats.
    for statName,prop in pairs(STAT_PROPS) do
        modifiers[statName] = modifiers[statName] or {
            add = statSheet:NewStatModifierAdd(statName, 0),
            mul = statSheet:NewStatModifierMul(statName, 1),
        }
        local addValue = COMPONENT:GetCustomProperty(prop.."A")
        local mulValue = COMPONENT:GetCustomProperty(prop.."M")
        modifiers[statName].add.addend     = tonumber(addValue)
        modifiers[statName].mul.multiplier = tonumber(mulValue)
    end
    -- Experience.
    local experience = COMPONENT:GetCustomProperty("XP")
    statSheet:SetExperience(tonumber(experience) or 0)
end

local function ClientSetupReplicatedStatSheet()
    -- Initialize client side stat sheet.
    OWNER.clientUserData.statSheet = StatSheet.New()
    -- Poll for networked stat changes.
    local statModifiers = {}
    if not Object.IsValid(OWNER) then return end
    if OWNER ~= Game.GetLocalPlayer() and not Object.IsValid(OWNER.clientUserData.statSheet) then return end
    local statSheetUpdateTask = Task.Spawn(function() ClientUpdateStatSheet(OWNER.clientUserData.statSheet, statModifiers) end)
    statSheetUpdateTask.repeatCount = -1
end

---------------------------------------------------------------------------------------------------------
local function InitServer()
    ServerLoadStatSheet()
end

local function InitClient()
    ClientSetupReplicatedStatSheet()
end

---------------------------------------------------------------------------------------------------------
if script.isServerOnly then InitServer() end
if script.isClientOnly then InitClient() end