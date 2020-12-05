--[[
    ItemSystems.Regions
    ================
    2D array with 2D areas for every element intended for storing information at positions.
    The only drawback is that this is not space efficient as it's a trade off for quick lookup speed.
]]

Regions = {}
Regions.__index = Regions

-- Setting this to true will draw all the Regions in the world, but this is incredibly expensive
-- when you have more than 32x32 Regions being drawn. Keep this false in release.
local DEBUGDRAW = script:GetCustomProperty("DebugDrawRegions")

----------------------------------------------------------------------------------------
-- Public
----------------------------------------------------------------------------------------

-- Construct a 2D array at a position in the world.
-- Size represents the area of each 2D region
-- count is the amount of regions to store information in.
-- @param center Vector3
-- @param int size
-- @param int count
function Regions.New(center,size,count)
    local self = {}
    setmetatable(self, Regions)
    self.center = center - Vector3.New(size * count) - Vector3.New(size)   -- Center onto map
    self.size = size
    self.count = count
    self.offset = self.center/2
    self.array = {}
    for x=1,count do
        self.array[x] = {} 
        for y=1,count do
            if DEBUGDRAW then
                CoreDebug.DrawBox((self.offset - Vector3.New(0,0,self.center.z) ) + Vector3.New(x,y,center.z)*size, Vector3.New(size,size,0)/2, {
                    duration = 1000,
                    color = Color.GREEN,
                    thickness = 30
                })
            end
            self.array[x][y] = {}
        end
    end
    return self
end

-- Convert a world position to an index that represents an indexed element in the 2D array.
function Regions:ConvertToIndex(position)
    local xPos = math.abs((math.floor(position.x/self.size)+self.count/2)+1)
    local yPos = math.abs((math.floor(position.y/self.size)+self.count/2)+1)
    return Vector2.New(xPos,yPos)
end

-- Insert an element into a region given a position
function Regions:AddValue(position, object)
    local indexs = self:ConvertToIndex(position)
    assert(indexs.x <= self.count and indexs.x > 0 and
            indexs.y <= self.count and indexs.y > 0,
    "Tried to get an element that is out of bounds of regions. Consider expanding the area of regions and enable debug draw (debug draw is a custom property on ItemSystems_Regions script in project content) to see the regions coverage. Adjust the properties on ItemSystems_LootRegions script in project content to ensure you are within the regions.")
    table.insert(self.array[indexs.x][indexs.y],object)
end

-- Remove an element from a region given a position
function Regions:RemoveValue(position,object)
    local indexs = self:ConvertToIndex(position)
    for i, element in pairs(self.array[indexs.x][indexs.y]) do
        if element == object then
            assert(indexs.x <= self.count and indexs.x > 0 and
            indexs.y <= self.count and indexs.y > 0,
            "Tried to get an element that is out of bounds of regions. Consider expanding the area of regions and enable debug draw (debug draw is a custom property on ItemSystems_Regions script in project content) to see the regions coverage. Adjust the properties on ItemSystems_LootRegions script in project content to ensure you are within the regions.")            
            table.remove(self.array[indexs.x][indexs.y], i)
            return
        end
    end
end

-- Returns table information about a region given a position
function Regions:GetElements(pos)
    local indexs = self:ConvertToIndex(pos)
    assert(indexs.x <= self.count and indexs.x > 0 and
            indexs.y <= self.count and indexs.y > 0,
    "Tried to get an element that is out of bounds of regions. Consider expanding the area of regions and enable debug draw (debug draw is a custom property on ItemSystems_Regions script in project content) to see the regions coverage. Adjust the properties on ItemSystems_LootRegions script in project content to ensure you are within the regions.")
    return self.array[indexs.x][indexs.y]
end

-- Return a specific element from a region when given a position and object
function Regions:GetElement(pos,object)
    local indexs = self:ConvertToIndex(pos)
    assert(indexs.x <= self.count and indexs.x > 0 and
            indexs.y <= self.count and indexs.y > 0,
    "Tried to get an element that is out of bounds of regions. Consider expanding the area of regions and enable debug draw (debug draw is a custom property on ItemSystems_Regions script in project content) to see the regions coverage. Adjust the properties on ItemSystems_LootRegions script in project content to ensure you are within the regions.") 
    for _, element in pairs(self.array[indexs.x][indexs.y]) do
        if element == object then
            return self.array[indexs.x][indexs.y]
        end
    end
    return nil
end

----------------------------------------------------------------------------------------
-- Private
----------------------------------------------------------------------------------------

return Regions