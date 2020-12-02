--[[
    ItemSystems.LootableRegions
    ================
    A simple singleton that provides an interface to regions with easy to understand method names.
]]

LootableRegions = {}
LootableRegions.__index = LootableRegions

local regions = require(script:GetCustomProperty("Region"))

local AREA_SIZE_PER_REGION = script:GetCustomProperty("AreaSizePerRegion")
local REGION_COUNT = script:GetCustomProperty("RegionCount")

local instancedRegions -- 2D region object

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------

-- Initalizes regions singleton
function LootableRegions.init()
    --62.5 is for drawing the regions when debugging.
    instancedRegions = regions.New(Vector3.New(0,0,-62.5),AREA_SIZE_PER_REGION,REGION_COUNT)
end

-- Adds an item to a region
-- @param Item item
function LootableRegions.AddItemToRegion(item)
    instancedRegions:AddValue(item:GetWorldPosition(),item)
end

-- Removes an item from regions
-- @param Item item
function LootableRegions.RemoveItemFromRegion(item)
    instancedRegions:RemoveValue(item:GetWorldPosition(),item)
end

-- Returns a table of all loot items at a location
-- @param Vector3 pos
-- @return table
function LootableRegions.GetLootsAtLocation(pos)
    return instancedRegions:GetElements(pos)
end

-- Searches for the provided item within the region and returns it if present
-- @param Item item
-- @return Item
function LootableRegions.GetLoot(item)
    return instancedRegions.GetElement(item:GetWorldPosition(),item)
end

-- Returns the area of a region in meters
-- @return int
function LootableRegions.GetRegionSize()
    return AREA_SIZE_PER_REGION
end

-- Returns the number of regions
-- @return int
function LootableRegions.GetRegionCount()
    return REGION_COUNT^2
end

return LootableRegions