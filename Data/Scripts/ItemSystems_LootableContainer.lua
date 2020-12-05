--[[
    ItemSystems.LootableContainer : ItemSystems_Inventory
    ====================
    Logical representation of a lootable container that inherits from an inventory.
    This is unfinshed as more methods will be added.
]]

local LootableContainer = {}
LootableContainer.__index = LootableContainer
local Inventory = require(script:GetCustomProperty("ItemSystems_Inventory"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))
setmetatable(LootableContainer, Inventory)

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------

-- Constructs a new lootable inventory
function LootableContainer.New(stash,owner,backpackSize)
    Database:WaitUntilLoaded()
    local self = Inventory.New(Database,owner,backpackSize,nil)
    setmetatable(self, LootableContainer)
    self:_Init(stash)
    return self
end

-- Generates random loot for the inventory with a loot table key and the amount of items to generate into the inventory
function LootableContainer:GenerateLoot(lootTableName, itemCount) -- string lootTableName, int itemCount
    assert(itemCount <= self.BACKPACK_CAPACITY,"Item count exceeds size of the inventory. Reduce the amount of items you're going to generate into this stash")
    self:_Clear()
    for i=1,itemCount do
        local newItem = Database:CreateLootItemFromDropKey(lootTableName)
        if newItem then
            self:SetItemToSlot(newItem,newItem:GetStackSize(),i)
        end
    end
end


---------------------------------------------------------------------------------------------------------
-- Private
---------------------------------------------------------------------------------------------------------

function LootableContainer:_Init(stash)
    self.stash = stash
end

return LootableContainer