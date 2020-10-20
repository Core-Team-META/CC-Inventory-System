--[[
---------------------------------------------------------------------------------------------------------------------------------------
	ItemSystems - README
    1.0.0 - 10/16/2020
    Creation by: structfoo (Kevin) (Manticore) (https://www.coregames.com/user/b9a4f899f12946f1b467f671f0fc0410)
	Adaption and Modification by: Coderz (Drake) (META) (https://www.coregames.com/user/d5daea732ee3422fbe85aecb900e73ec)

    Description:
    ItemSystems is an item managment framework that has inventory management features you'd find in a MMO game like World of Warcraft.
    It contains a plethora of awesome features to help jump start your RPG style game. 
    It also removes the hassle of creating an inventory system from scratch, it's easy to use and extendable for programmers.
    
    This framework comes with:
        1) Inventory Manager
        2) Loot Spawner
        3) Geometry Equipper
        4) Player Stats Sheet
        5) Roll for loot
        6) Consumable Items
        7) Customizable Item Themes
        8) Example Items and Weapons

    Please refer to "Framework usage" section of this readme for information on how to get the most out of this framework.
---------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------
Setup
--------------------------------------

    1) Drag and drop "ItemSystems" from My Templates into the Hierarchy.
    2) Import StandardCombo's A.I Kit from community content
    3) Search For, "Combat Dependencies" and drop it into the Hierarchy

--------------------------------------
Framework usage
--------------------------------------

    ------ Creating Weapons ------
        This tutorial is going to guide through the general way of creating weapons for your game so they can register with the item database.
        These methods also apply to any item creation aswell, but this tutorial will just focus on creating a weapon. 

        1) Start by taking one of the example items from My Templates
        Search for "ITEM_Sword_ExampleSword"

        2) Drag and drop the item into the scene.

        3) Right click the item in the hierarchy and select, "Create new template from this"

        4) Give your item a name that follows this convention "ITEM_<Type>_<Name>" 
        <Type> being the type of item it will be. example: ITEM_Sword_SteelBlade.

        5) Reselect the root object of the item in the scene and navigate to the custom tab in properties.
        There is tooltip information regarding what each property is intended to do.
        
        At this point you should see numerous custom properties. These properties
        determine how the item should register into the item database.

        6) For now just change Name, Icon, Description and Rarity.
            Your rarity may be: Common, Uncommon, Rare, Epic, or Legendary

        7) Adjust the colors of your items geometry if there is any. The geometry is inside the
        client context folder inside the geo group.
        
        Now that your new item is customized we must register it with the item database.
        The item database requires that your item is as asset reference of a catalog object.
    
        8) Once you've changed your item to your liking right-click the root of the object in the hierarchy
        and click "Update Template From This". (or click the checkmark in the properties window)

        9) Search for, "Catalog" in project content and locate ItemSystems_DATA_Sword_Catalog

        10) Drag and drop the catalog into the scene

        11) Right-Click the catalog in the hierarchy and click, "Deinstance this object"
        
        11) Add a custom property that is a Asset Reference to your weapon.

        11) Right-click the catalog in the Hierarchy and click, "Update Template from this".

        You're basically done! your item is now registered with the item database.
        To test your item in game we have to add the Item name to a loot table.
        
        12) Reslect your Item and Copy the Value for the Name property and open ItemSystems_DATA_Drops. 
        Add your item to the BasicMobTrash loot table. ItemName should be the name of your item and Likelihood
        is weighted amount that your item will drop. The heavier the weight the more likely
        it'll drop. Set your Item's likelihood to 500 so your item is more likely to drop.

        13) Go into the game and press the down arrow until your item has spawned.

        14) Once you see your item spawn on the ground press "L" to open your loot window.

        15) Click your loot to add it into your inventory.

        16) Press "I" to open your inventory. You can click your item to equip it!

        To create custom stats and catalogs for your weapons please refer to "Creating Catalogs and Stats".
    ------------------------------

    ------ Creating Catalogs and Stats (Giving items stats) ------
        This tutorial will guide you through creating catalogs and stats for your items.

        1) Create an Empty Group in the Hierarchy and name it "ItemSystems_DATA_Ring_Catalog"
        
        We're going to need an item for this so make sure you create one.
        If you followed the creating items tutorial then this should be straight forward.
        
        3) Search in My Templates, "ITEM_Trinket_Example"
        4) Create a new template of that object and customize it, but this time change everything and rename it to, "ITEM_Ring_DamageRing".
        5) For ItemType set it as, "Ring"
        6) For StatKey set it as, "Common_DamageRing"
        7) Right-Click the Item in the hierarchy and update your template.
        8) On your ring catalog in Hierarchy add a custom property that is a Asset Reference and assign your Item template. (Update template after)
        9) Create a new script and name it "ItemSystems_DATA_Ring_Stats"
        10) Open the script and copy and paste what's below into the script.

        return {
            -- Base Stats --
            {
                StatKey = 'Common_DamageRing',
                Group = 'Base',
                Stat = 'Attack',
                Min = '5',
                Max = '10',
                Likelihood = '100',
                ['Author Notes (will be ignored by script)'] = 'The base stat will either be this or Magic which is below.',
            },
            {
                StatKey = 'Common_DamageRing',
                Group = 'Base',
                Stat = 'Magic',
                Min = '3',
                Max = '5',
                Likelihood = '100',
                ['Author Notes (will be ignored by script)'] = 'Your ring has a 50% chance of being either Attack or Magic',
            },
            -- Bonus Stats --
            {
                StatKey = 'Common_DamageRing',
                Group = 'Bonus1',
                Stat = 'Attack',
                Min = '1',
                Max = '4',
                Likelihood = '100',
                ['Author Notes (will be ignored by script)'] = 'An added bonus stat that is always going to be on the item when rolled.',
            },
        }

        When your ring Item is rolled it will look for a base stat to apply to the Item.
        In the example above you can see the StatKey matches the StatKey value we have on our Ring.
        When the item is rolled it will have a 50% chance of having an attack stat or a magic stat as those are the base stats for the item.
        The Bonus1 stat is an added bonus when the item is rolled. It will always have this bonus.
        You can continue to add as many bonus stats to this item as you want. An example below.
        
        {
            StatKey = 'Common_DamageRing',
            Group = 'Bonus2',
            Stat = 'Haste',
            Min = '10',
            Max = '20',
            Likelihood = '100',
            ['Author Notes (will be ignored by script)'] = 'Another bonus stat!',
        },

        Now the ring will have 1 base stat and 2 different bonus stats. For a total of 3 stats.
        You can continue to add more bonuses to the item by copy and pasting what's above and incrementing the interger at the end of Bonus.
        The Likelihood determines the odds of rolling for that stat. The larger the number is the better the odds for that stat.

        Now that the catalog and stats script are complete we need to tell the Item Database to register both scripts.

        11) Search for, "ItemSystems_Database" and navigate to the custom properties
        12) Click the, "Add Custom Property" button
        13) For the property name put "Ring_Catalog" and make sure the type is an Asset Reference
        14) Do this again for the Stats. Name the property, "Ring_Stats"
        15) Assign Ring_Catalog, ItemSystems_DATA_Ring_Catalog (Object)
        16) Assign Ring_Stats, ItemSystems_DATA_Ring_Stats (Script)

        The Item will register now and can be added to a loot table for spawning, but you won't
        be able to equip the item as the ring Item type is not recongized.

        17) Open ItemSystems_Item script and go to Item.TYPES and uncomment the ring entry.
        18) Scroll down to Item.SLOT_CONTRAINTS and uncomment the ring entry. This will make it so you can equip rings in the accessory slot.
        
        At this point you're done, but we need to test the Item to make sure it works. 
        So we need to add the Item to a loot table.

        19) Open ItemSystems_DATA_Drops and add your item to the BasicMobTrash table.
        20) Spawn your item by pressing the down arrow, loot it, and equip it.

        This part is Optional, but I recommend continuing if you want to better understand some parts of this system.
        The Item is added to the system, but it does not have a custom interact SFX associated with that item type.

        1) Search for, "SFX_GenericPickup" and create a new template of it.
        2) Name it, "SFX_EquipRing" and change the sound to your liking.
        3) Update from this template after you're done.
        4) Search for, "ItemSystems_ItemThemes" script in project content
        5) Add a new custom property that is a AssetReference with the name, "SFX_EquipRing"
        6) Assign the custom property with SFX_EquipRing.

        You're all done now any ring you make will have that sound effect and the ring you created during this tutorial will always roll
        for stats when you create it. 
    -----------------------------------------

    ------ Consumable Items ------
        Creating consumable Items is similar to creating regular Items except that you
        are creating a script for the consumable Item and that script must be on a custom property
        on the object.

        1) Search for, "ITEM_Consumable_ExamplePotion"
        2) Create a new template from that Item.
        3) Name it, "ITEM_Consumable_XPPotion"
        4) Change Name, Icon, MaxStackableSize, Description, and Rarity for this tutorial.
        5) Create a new script and call it, "ITEM_ConsumptionEffect_XPPotion"
        6) Search for, "ITEM_ConsumptionEffect_Example" and open the script.
        7) Copy the entire script and paste it into your newly created script.
        8) In project contents add a custom property to your scipt that is a type of Asset Reference
        9) Name the custom property, "RuntimeContextDetection"

        Runtime context detection detects the content of the script at runtime. Unfortunately
        using cores native way of checking the context is not good enough in this situation.

        10) Assign the custom property the RuntimeContextDetection script.
        11) Assign the ConsumptionEffect property in your Item with your newly created script, "ITEM_ConsumptionEffect_XPPotion"
        12) Replace player:Die() with

            local statsSheet = player.serverUserData.statSheet
            statsSheet:AddExperience(100)
        
        If you want to buff your character here is another example.
        
            local statsSheet = player.serverUserData.statSheet
            statsSheet:NewStatModifierAdd("Attack",100,false) -- Gives 100 damage to your player

        13) Search for, "Catalog" in project content and drag and drop, "ItemSystems_DATA_Consumable_Catalog" into the scene
        14) Deinstance the catalog and add a custom property that is a type of Asset Reference and assign, "ITEM_Consumable_XPPotion" to it.
        15) Copy the name of your Item and create a new loot drop in the BasicMobTrash table.
        16) Spawn your Item, Collect it, and use it by clicking on it in the Inventory.
    ------------------------------

    ------ Roll For Loot ------
        Some programming knowledge is required to set this up.
        Just like in World of warcraft you may want players to roll for an Item after they defeated a really tough enemy.
        This is a great way to fight an enemy and share really great loot with friends or other players.
        Players can decide to roll for the loot or pass on it. They can also inspect the loot to see if the Item is any good.
        In this tutorial you'll learn how to create simple roll for loot events.

        1) Search for, "RPG Skeleton"
        2) Drag and drop the Sekelton into the scene
        3) Right-Click the skeleton in the Hierarchy and click, "Create new template from this" and give it a name.
        4) In the custom properties of the skeleton change LootId's value to BasicMobTrash
        5) Create a new custom property of type AssetReference with the name, "ItemDatabase". Assign to it ItemSystems_Database
        5) Open the root folder of the skeleton and open the script, "NPCAttackServer"
        6) Scroll to the last function, "DropRewards"
        
        We're going to give everyone the chance to roll on the Item regardless of who did damage
        to the enemy. This is just to give you an idea how to create a roll for loot event.

        7) Between Give resources and drop loot insert the following line:

            Events.Broadcast("RollForLootDrop",LOOT_ID,Game:GetPlayers())

            The code above will create a roll for loot for all players in the server, but if you want just a couple of players to participate
            then you can have a table with some players as the last parameter.
    ----------------------------

    -------- Loot Drops --------
        Loot drops are implemented the same as Rolling for loot as they use Events.Broadcast()
        If you've done the tutorial above you should be able to replace Events.Broadcast() with a loot drop one.

        1) Open the script, "NPCattackServer"
        2) Scroll to the last function
        3) Between give resource and drop loot insert the following:

            Events.Broadcast("DropLootForPlayers",LOOT_ID,killer,ROOT:GetWorldPosition())

            The killer of the NPC will get the item. You can put in a single player or a table of players.
            I recommend avoiding roll for loot when a player is alone as it wouldn't make sense to roll on an Item
            if you're the only one who killed the NPC.

        4) Loot your Item by pressing "L" and clicking on it in the loot window.

        There is numerous Events that can help you customize your players looting experience.
        For more events open, "ItemSystems_LootSpawner".
        --------------------------------
        Drops for all players a random loot from a loot table at a position in the world.
        Events.Broadcast("DropLoot", dropKey : String, worldPosition: Vector3)

        Drops for a specific player or a table of players a random loot from a loot table at a position in the world.
        Events.Broadcast("DropLootForPlayers", dropKey : String, players : Table or player, worldPosition : Vector3)

        Drops a specific loot for a specific player or players at a position in the world.
        Events.Broadcast("DropLootSpecificForPlayers", itemName : String, players : Table or player, worldPosition : Vector3)

        When provided an item hash the Item database will create the Item and drop it for a specific player or table of players at a position in the world.
        Events.Broadcast("DropLootSpecificHashForPlayers", itemPersistentHash : String, players : Table or player, worldPosition : Vector3)

        When provided with a loot drop key and a table of players it will create a roll event for all the player to gamble for the Item.
        Events.Broadcast("RollForLootDrop", dropKey : String, players : Table)
        --------------------------------
    ----------------------------

    -------- Player Stats Sheet --------
        Modifying or getting information about a player stats is really easy to do as the player has the
        the stat sheet stored in both serverUserData and clientUserData.
        Check out the public methods of the players stats sheet in, "PlayerStats_StatSheet" script.

        1) Make a trigger box in the scene and create a script that is a parent of the trigger box.
        2) Make a custom property on the script that is a CoreObjectReference and assign it the trigger box.
        3) Get the trigger property and add this line of code.

            yourTriggerPropHere.interactedEvent:Connect(function(_,player)
                local statsSheet = player.serverUserData.statSheet
                statsSheet:AddExperience(10)
            end)

        4) When you use the trigger you'll add XP to the player.
    ------------------------------------

    --------------------------------------
    Item Custom Properties
    --------------------------------------
        Here is a list of custom properties that can go on an Item.
        Refer to the tooltips of the custom properties for more information about a property on the example items.
            * is required
            @ is optional
        
                * Name : String
                * Icon : AssetReference (Icon)
                * ItemType : String
                * Rarity : String
                @ LevelRequirement: Integer
                @ StatKey : String (Should be required on equipables)
                @ ConsumptionEffect : AssetReference (Script) (Only for consumables)
                @ MaxStackableSize : Integer
                @ Description : String
                @ EquipmentStance : String
                @ DropRotation : Vector3
                @ Socket_x : CoreObjectReference
                    x is the socket we're going to attach the geometry to when
                    the player equips this item. If you want your boots to go on both feet then
                    make sure to have the name of your custom property, "Socket_both_feet".
                    Then assign the root geometry object.
                    Reference all the sockets here: https://docs.coregames.com/api/animations/
    --------------------------------------

--------------------------------------
Framework Components Details
--------------------------------------

    ----- Item Database -----
    Item databases contains factory methods for creating items and loot. They also load the asset derived information
    from catalogs, load stats information for all item types, and load the loot drop tables.
    -------------------------

    ----- Item Catalog -----
    Catalogs are objects that store Asset References to your Items that to register with the Item Database.
    Anytime you create a new item for a type you must always add it to a catalog.
    If you want you can techincally store all your items into a single catalog, but that will bloat the
    custom properties window and make it hard to track what Items you're registering.
    ------------------------

    ----- Item Stats -----
    Stats return entrys of rollable stats. An Item is usually paired with a stat key to imbue the item with stats.
    An Item can have multiple rollable stats and not just 1 base stat or 1 bonus stat. Get creative with your stats.

        StatKey = 'EpicBoots', -- The stat key an item will reference and roll from.
        Group = 'Base', -- There must be a Base stat for items that reference a statKey. You can add additional stats to an item by changing this from Base to Bonus1, Bonus2, or Bonus3... etc.
        Stat = 'Attack', -- The type of stat this Item will have. Reference ItemSystems_Item script and the Item.TYPES variable to see what kind of stats an Item can have.
        Min = '3', -- Min range of the stat
        Max = '5', -- Max range of the stat
        Likelihood = '100', -- The weight of this stat. 

        StatKey = 'EpicBoots',
        Group = 'Bonus1',
        Stat = 'Defense',
        Min = '3',
        Max = '5',
        Likelihood = '100',
    ----------------------

    ----- Inventory -----
    The Inventory is the logical representation of an inventory. It stores your items and it has a bunch of public methods that allow you to leverage it for other uses.
    There is a property on the script that enables Item dropping in-game and it's on by default. If you don't want Item dropping from players in-game then you can disable the boolean on the script
    in project content.
    ---------------------

    ----- Loot Spawner -----
    ItemSystems_LootSpawner contains various events that can be used to customize your players looting experience.
    Refer to the script for more information.
    ------------------------

--------------------------------------
Discord
--------------------------------------


    If you find any bugs or problems with the Item System please direct your questions to
    my discord: Coderz#0441

	If you have any questions, feel free to join the Core Hub Discord server:
		discord.gg/core-creators
	We are a friendly group of creators and players in the Core community. Everyone is welcome to play games together or
    learn about game dev!


--]]