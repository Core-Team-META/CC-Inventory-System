--[[
    ItemSystems.StashInteractor
    ====================
    Handles the client interaction with stashes
]]

local LOCAL_PLAYER = Game.GetLocalPlayer()
local PROPERTY_TO_SEARCH_FOR = script:GetCustomProperty("PropertyToSearchFor")
local USE_KEY = script:GetCustomProperty("OpenKey")
local INTERACT_DISTANCE = script:GetCustomProperty("InteractDistance")
local IS_DEBUG = script:GetCustomProperty("IS_DEBUG")
local CANCEL_USAGE_DISTANCE = script:GetCustomProperty("CancelUsageDistance")
local ReliableEvents = require(script:GetCustomProperty("ReliableEvents"))
local SearchIndicatorUI = script:GetCustomProperty("SearchUI"):WaitForObject()
local timerUI = script:GetCustomProperty("SearchRadialTimer"):WaitForObject()

-- Wait until the inventory is loaded
while not LOCAL_PLAYER.clientUserData.inventory do Task.Wait() end
local inventory = LOCAL_PLAYER.clientUserData.inventory

-- Runtime Variables
local onUseCooldown = false
local hasCanceled = false
local id = nil
local secondsToSearch = 1
local playersOldPosition = nil
local playersNewPosition = nil

-- Sound references
local sfxOpenSound = nil
local sfxSearchingSound = nil
local sfxClosedSound = nil

-- Easy function for playing sounds.
-- @param AssetRef sfx
local function PlaySound(sfx)
    World.SpawnAsset(sfx, { parent = script })
end

-- Creates a radial timer
-- Credit: Waffle
local timerTasks = {}
local function StartTimerCountdown(endTime, timerUI, emptyToSolid)
	local leftInner = timerUI:GetCustomProperty("LeftInner"):WaitForObject()
	local rightInner = timerUI:GetCustomProperty("RightInner"):WaitForObject()
	timerUI.visibility = Visibility.FORCE_ON
	local startTime = time()
	
	if timerTasks[timerUI] then
		timerTasks[timerUI]:Cancel()
		timerTasks[timerUI] = nil
	end
	
    timerTasks[timerUI] = Task.Spawn(function()
        playersNewPosition = LOCAL_PLAYER:GetWorldPosition()
        local timeRemaining = endTime - time()
		local progress = 1 - timeRemaining / (endTime - startTime)
		rightInner.rotationAngle = math.min(1, progress * 2) * 180
		leftInner.rotationAngle = math.max(0, math.min(1, progress * 2 - 1)) * 180
		if emptyToSolid then -- fill the radial meter from empty to solid instead of solid to empty
			rightInner.rotationAngle = rightInner.rotationAngle - 180
			leftInner.rotationAngle = leftInner.rotationAngle - 180
		end
		if timeRemaining < 0 then
			timerTasks[timerUI]:Cancel()
			timerTasks[timerUI] = nil
            timerUI.visibility = Visibility.FORCE_OFF
        elseif (playersOldPosition - playersNewPosition).size > CANCEL_USAGE_DISTANCE or not id then
            hasCanceled = true
            timerTasks[timerUI]:Cancel()
			timerTasks[timerUI] = nil
            timerUI.visibility = Visibility.FORCE_OFF
		end
	end)
	timerTasks[timerUI].repeatCount = -1
	
	return timerTasks[timerUI]
end

-- Resets the runtime variables
local function Reset()
    hasCanceled = false
    onUseCooldown = false
    id = nil
    LOCAL_PLAYER.clientUserData.containerInventory = nil
end

-- Called when opening a valid stash and not on use cooldown.
local function OpenStash(_,keybind)
    if keybind == USE_KEY and id and not onUseCooldown and
     not timerTasks[timerUI] and not hasCanceled then

        -- Begin the raidal progress search
        if sfxSearchingSound then
            PlaySound(sfxSearchingSound)
        end

        playersOldPosition = LOCAL_PLAYER:GetWorldPosition()
        StartTimerCountdown(time()+secondsToSearch,timerUI)
        Task.Wait(secondsToSearch)

        -- If the searching was interupted
        if not id or hasCanceled then
            Reset()
            return
        end
        
        ReliableEvents.BroadcastToServer("OnStashUse",id)

        -- Ensure we don't spam broadcasts.
        onUseCooldown = true
        Task.Wait(2) -- TODO: Move use cooldown to property.
        onUseCooldown = false
        hasCanceled = false
    end
end

-- Shoots a ray from the camera forward to some distance and check to see if the object is a stash.
function Tick()
    local cameraPos = LOCAL_PLAYER:GetViewWorldPosition()
	local cameraTransform = Transform.New(LOCAL_PLAYER:GetViewWorldRotation(), LOCAL_PLAYER:GetViewWorldPosition(), Vector3.New(1,1,1))
	local lookDirection = cameraTransform:GetForwardVector()
	local activeCamera = LOCAL_PLAYER:GetActiveCamera()
	local minInteractDistance = 0
	if activeCamera then
		minInteractDistance = activeCamera.currentDistance - 50
	end
	local startPos = cameraPos + lookDirection * minInteractDistance
	local endPos = cameraPos + lookDirection * INTERACT_DISTANCE
    local hitResult = World.Raycast(startPos, endPos, {ignorePlayers = true})
    if IS_DEBUG then
        -- Draws a ray from the camera forward
		CoreDebug.DrawLine(cameraPos, cameraPos  + lookDirection * INTERACT_DISTANCE, {
  			duration = 2,
  			color = Color.GREEN,
  			thickness = 0.1
        })
        if hitResult then
            CoreDebug.DrawBox(hitResult:GetImpactPosition(),Vector3.New(5,5,5))
        end
    end
    -- If the player is looking at something and they're not dead and they're not on use cooldown and they're not looting a container.
    if hitResult and not LOCAL_PLAYER.isDead and not onUseCooldown and 
        not LOCAL_PLAYER.clientUserData.containerInventory and
        not LOCAL_PLAYER.clientUserData.isOverLoot then

        if hitResult.other then
            local stashObject = hitResult.other.parent
            if stashObject and stashObject:GetCustomProperty("ID") then
                id = stashObject:GetCustomProperty("ID")
                secondsToSearch = stashObject:GetCustomProperty("SecondsToSearch") or 1
                sfxOpenSound = stashObject:GetCustomProperty("SFX_OpenSound")
                sfxSearchingSound = stashObject:GetCustomProperty("SFX_SearchingSound")
                sfxClosedSound = stashObject:GetCustomProperty("SFX_ClosedSound")
                SearchIndicatorUI.visibility = Visibility.FORCE_ON
                LOCAL_PLAYER.clientUserData.stashObject = stashObject
            end
            if id and stashObject and type(id) == "userdata" and id:IsA("CoreObjectReference") then
                id = id:GetObject().id -- MUID support
            elseif not id then
                SearchIndicatorUI.visibility = Visibility.FORCE_OFF
            end
        end
    else
        SearchIndicatorUI.visibility = Visibility.FORCE_OFF
        id = nil
    end
end

-- When the container UI closes.
Events.Connect("StashClosed",function() 
    if sfxClosedSound then
        PlaySound(sfxClosedSound)
    end
    sfxClosedSound = nil
end)

-- When the container UI opens.
Events.Connect("RegisterContainer",function() 
    if sfxOpenSound then
        PlaySound(sfxOpenSound)
    end
    sfxOpenSound = nil
end)

LOCAL_PLAYER.bindingPressedEvent:Connect(OpenStash)