--[[
---------------------------------------------------------------------------------------------------------------------------------------
    ItemSystems - README
    1.0.0 - 10/16/2020
    Creation by: structfoo (Kevin) (Manticore) (https://www.coregames.com/user/b9a4f899f12946f1b467f671f0fc0410)
    Adaptation and Modification by: Coderz (Drake) (META) (https://www.coregames.com/user/d5daea732ee3422fbe85aecb900e73ec)
 
    Description:
    ItemSystems is a framework for inventory and item management such that you'd find in MMO games.
    It contains a plethora of awesome features to help jump start your RPG-style game. 
    It also removes the hassle of creating an inventory system from scratch. It's easy to use and extendable for programmers.
    
    This framework comes with:
        1) Inventory Manager
        2) Loot Spawner
        3) Geometry Equipper
        4) Player Stats Sheet
        5) Roll for loot
        6) Consumable Items
        7) Customizable Item Themes
        8) Example Items and Weapons
 
    Please refer to the "Framework usage" section of this readme for information on how to get the most out of this framework.
---------------------------------------------------------------------------------------------------------------------------------------
 
 
--------------------------------------
Setup
--------------------------------------
 
    1) Drag and drop "ItemSystems" from My Templates into the Hierarchy.
    2) For NPC combat, import standardcombo's "NPC AI Kit" from community content.
    3) Search for "Combat Dependencies" and drop it into the Hierarchy.
 
 
--------------------------------------
Framework usage
--------------------------------------
 
    ------ Creating Weapons ------
        This tutorial will guide you through creating a starter weapon. 
        We will create a level 1 type of weapon that players would hypothetically begin with.
        This method can be generalized and applies to creating other items besides weapons.
 
        1) Start by taking one of the example items from My Templates.
        Search for "ITEM_Dagger_HighLevel".
 
        2) Drag and drop the item into the scene.
 
        3) Right-click the root of the item in the hierarchy and select, "Create new template from this".
 
        4) Give your item the name "ITEM_Dagger_Starter".
 
        5) Right-click the root of item in the hierarchy and select "Deinstance This Object" so we can modify the custom properties.
 
        6) Reselect the root of the item in the hierarchy and navigate to the custom tab in properties.
        
        TIP: At this point you should see numerous custom properties. Each of them have additional help and information in their
        tooltips that can be useful to examine.These properties determine how the item should register into the item database. 
        
        7) Set the level requirement property to have a value of 1.
        
        8) Set the StatKey to "StarterDagger".
        
        9) Set Rarity to "Common".
        
        10) Adjust other custom properties of the weapon to make it feel like a low level dagger.
        
        11) Adjust the colors of your item's geometry if there is any. The geometry is inside the
        client context folder inside the geo group. Make it look like a starter dagger.
        
        Now that your new item is customized we need to register it with the item database.
        The item database requires that your item is an asset reference of a catalog object.
        
        12) Right-click the root of the object in the hierarchy and click "Update Template From This".
        
        13) In the Project Content view search for "Catalog" and locate "ItemSystems_DATA_Dagger_Catalog".
        
        14) Drag and drop the catalog into the scene.
        
        15) Right-click the catalog in the hierarchy and select "Deinstance this object".
        
        16) With the catalog still selected, locate your new dagger template in Project Content.
        
        17) Drag your dagger template into the Properties view, to add a custom property that is an Asset Reference to your dagger.
 
        18) Right-click the catalog in the Hierarchy and select "Update Template from this".
 
        You can now delete the catalog and dagger from the hierarchy.
        Your item is registered with the item database, but it is not imbued with stats.
 
        19) Search for "ItemSystems_DATA_Dagger_Stats" and open the script
 
        20) Copy and paste the following meta-data into the designated section of the script:
 
            {
                StatKey = 'StarterDagger', -- Base stat key that the dagger looks for when rolling stats
                Group = 'Base',
                Stat = 'Attack',
                Min = '3',
                Max = '3',
                Likelihood = '100', 
                ['Author Notes (will be ignored by script)'] = 'example: the starter dagger we will give to new players.',
            },
 
        Your dagger will always have 3 attack damage when created. For Information regarding the properties of the keys
        refer to "Framework Component Details" -> "Item Stats" section of this readme.
 
        To test your item in game we need to add the item name to a loot table.
 
        21) Reselect your item in the hierarchy. 
 
        22) Copy the value of the name property of your dagger and open the "ItemSystems_DATA_Drops" script from project content.
 
        23) Paste your name key 
 
        The ItemName key is looked up in the item database anytime the item is spawned. It should have the value of your item's name.
        likelihood is the weighted amount that your item will drop. The heavier the weight the more likely
        it'll drop. Set your item's likelihood key in the script to 500 so your item is more likely to drop compared to the other items.
 
        22) Go in-game and press the down arrow key on your keyboard until your item has spawned.
 
        23) Once you see your item has spawned on the ground press "L" or approach it and press "F" to open your loot window.
 
        24) Click the loot from the loot window to add it into your inventory.
 
        25) Press "I" to open your inventory. You can click your item or drag it to the slot to equip it!
 
        To create custom stats and catalogs for your weapons please refer to "Creating Catalogs and Stats".
    ------------------------------
 
 
    ------ Creating Item Catalogs and Stats ------
    Catalogs are templates that store Asset References to your items that can register with the Item Database.
    Stats scripts store information regarding how an item will be rolled when an item is created with a paired
    stat key. Your item will be stored in a catalog and will reference a stat key in the stats script when it rolls
    for stats.
 
        This tutorial will guide you through creating catalogs templates and stats for your items.
 
        1) Create an empty group in the hierarchy and name it "ItemSystems_DATA_Ring_Catalog".
        
        If you followed the item creation tutorial then this should be straight forward.
        
        3) In project contents search for "ITEM_Trinket_Example".
 
        4) Drag and drop the item into the scene and create a new template from that object.
 
        5) Name the template "ITEM_Ring_DamageRing".
        
        5) For ItemType set "Ring".
        
        6) For StatKey set "Common_DamageRing".
 
        7) Right-click the item in the hierarchy and update the template.
 
        8) In the Hierarchy, select the ring catalog. Locate your item template in Project Content and add it as a custom property
        of the catalog.
        
        9) Update the catalog template.
        
        10) Create a new script and name it "ItemSystems_DATA_Ring_Stats".
 
        11) Open the script and copy/paste the following:
 
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
 
        When your ring item rolls its stats it will look for all the stat keys that apply to the item.
        In the example meta-data above you can see the StatKey matches the StatKey value we have on our ring.
        When the item is rolled it will have a 50% chance of having an attack stat or a magic stat 
        as those are the base stats for the item.
        The Bonus1 stat is an added bonus when the item is rolled. It will always have this bonus.
        You can continue to add as many bonus stats to this item as you want. For example:
        
        {
            StatKey = 'Common_DamageRing',
            Group = 'Bonus2',
            Stat = 'Haste',
            Min = '10',
            Max = '20',
            Likelihood = '100',
            ['Author Notes (will be ignored by script)'] = 'Another bonus stat!',
        },
 
        Now the ring will have 1 base stat and 2 different bonus stats, for a total of 3 stats on the item.
        You can continue to add more bonuses to the item by copying and pasting what's above and incrementing
        the integer at the end of Bonus.
        The likelihood determines the odds of rolling for that stat. The larger the number is the better the odds for that stat.
 
        Now that the catalog and stats script are complete we need to tell the item database to register our catalog template and stats script.
 
        12) Search for "ItemSystems_Database" in project content and locate custom properties.
        13) Click the "Add Custom Property" button.
        14) For the property name put "Ring_Catalog" as an Asset Reference.
        15) Do this again for the Stats. Name the property "Ring_Stats".
        16) Assign Ring_Catalog, ItemSystems_DATA_Ring_Catalog (Object).
        17) Assign Ring_Stats, ItemSystems_DATA_Ring_Stats (Script).
 
        The Item will register now and can be added to a loot table for spawning, but you won't
        be able to equip the item as the ring item type is not recognized.
 
        18) Search for "ItemSystems_Item" script and open it. Go to Item.TYPES and uncomment the ring entry.
 
        19) Scroll down to Item.SLOT_CONTRAINTS and uncomment the ring entry. 
        This will make it so you can equip rings in the accessory slot.
        
        At this point you're done, but we need to test the Item to make sure it works. 
        So we need to add the item to a loot table.
 
        20) Search for "ItemSystems_DATA_Drops" script and open it. Add your item to the "BasicMobTrash" table.
        21) Spawn your item by pressing the down arrow on your keyboard in-game, loot it, and equip it.
 
        The next part is optional, but I recommend continuing if you want to better understand some parts of this system.
        The item is added to the system, but it does not have a custom interact SFX associated with that item type.
 
        1) Search for "SFX_GenericPickup" and create a new template of it.
        2) Name it, "SFX_EquipRing" and change the sound to your liking.
        3) Update from this template after you're done.
        4) Search for, "ItemSystems_ItemThemes" script in project content and open it.
        5) Uncomment the ring entry in ITEM_SFX.
        6) Add a custom property to "ItemSystems_ItemThemes" that is an asset reference with the name "SFX_EquipRing"
        7) Assign the custom property with SFX_EquipRing template.
 
        You're all done now any ring you make will have that sound effect and the ring you created during this tutorial will always roll
        for stats when you create it. 
    -----------------------------------------
 
 
    ------ Consumable Items ------
        Creating consumable items is similar to creating regular items except that you
        are creating a script for the consumable item and that script must be on a custom property
        on the object.
 
        1) Search for "ITEM_Consumable_ExamplePotion"
 
        2) Create a new template from that Item.
 
        3) Name it "ITEM_Consumable_XPPotion".
 
        4) Change Name, Icon, MaxStackableSize, Description, and Rarity property for this tutorial.
 
        5) Create a new script and call it "ITEM_ConsumptionEffect_XPPotion"
 
        6) Search for "ITEM_ConsumptionEffect_Example" and open the script.
 
        7) Copy the entire script and paste it into your newly created script.
 
        8) In project contents add a custom property to your new script that is a type of Asset Reference.
        
        9) Name the custom property "RuntimeContextDetection".
 
        Runtime context detection detects the content of the script at runtime. Unfortunately
        using cores native way of checking the context is not good enough in this situation.
 
        10) Assign the custom property the RuntimeContextDetection script.
        
        11) Assign the ConsumptionEffect property in your Item with your newly created script, "ITEM_ConsumptionEffect_XPPotion".
        
        12) Replace player:Die() with:
 
            local statsSheet = player.serverUserData.statSheet
            statsSheet:AddExperience(100)
        
        If you want to buff your character here is another example:
        
            local statsSheet = player.serverUserData.statSheet
            statsSheet:NewStatModifierAdd("Attack",100,false) -- Gives 100 damage to your player
 
        13) Search for, "Catalog" in project content and drag and drop, "ItemSystems_DATA_Consumable_Catalog" into the scene.
        
        14) Deinstance the catalog and add a custom property that is a type of Asset Reference and assign the
        "ITEM_Consumable_XPPotion" template
        
        15) Copy the name of your item and create a new loot drop in the BasicMobTrash table.
        
        16) Spawn your item, collect it, and use it by clicking on it in the Inventory.
    ------------------------------
 
    -------- Loot Drops --------
        Loot drops are collectable items that can be spawned into the world. They are an effective way of rewarding.
        Loot drops utilize core's events for spawning loot as they provide an easy to way communicate with
        the loot spawner script. 
 
        1) Make a trigger box in the scene and create a script that is a parent of the trigger box.
        2) Enable interactable on the trigger.
        3) Make a custom property on the script that is a CoreObjectReference and assign it the trigger box.
        4) Get the trigger property and add this line of code to the script.
 
            yourTriggerPropHere.interactedEvent:Connect(function(_,player)
                Events.Broadcast("DropLootForPlayers", "BasicMobTrash", player, player:GetWorldPosition() - Vector3.Up * 100)
            end)
 
        When you use the trigger a random loot will be dropped from the "BasicMobTrash" loot table at the player position.
 
        There are numerous Events that can help you customize your players' looting experience.
        For more events open, "ItemSystems_LootSpawner".
        --------------------------------
        Drops for all players a random loot from a loot table at a position in the world.
        Events.Broadcast("DropLoot", dropKey : String, worldPosition: Vector3)
 
        Drops for a specific player or a table of players a random loot from a loot table at a position in the world.
        If a table of players is provided it will randomly pick a player to receive that loot.
        Events.Broadcast("DropLootForPlayers", dropKey : String, players : Table or player, worldPosition : Vector3)
 
        Drops a specific loot for a specific player or players at a position in the world.
        If a table of players is provided it will randomly pick a player to receive that loot.
        Events.Broadcast("DropLootSpecificForPlayers", itemName : String, players : Table or player, worldPosition : Vector3)
 
        When provided an item hash the item database will create the Item and drop it for a specific player or table of players 
        at a position in the world.
        If a table of players is provided it will randomly pick a player to receive that loot.
        Events.Broadcast("DropLootSpecificHashForPlayers", itemPersistentHash : String,
                             players : Table or player, worldPosition : Vector3)
 
        When provided with a loot drop key and a table of players it will create a roll event for all the players to gamble for the Item.
        Events.Broadcast("RollForLootDrop", dropKey : String, players : Table)
    ----------------------------
 
    ------ Roll For Loot ------
        You may want players to roll for an item after they defeated a really tough enemy.
        This is a great way for players to gamble together on a nice piece of loot or pass it along for others.
        Players can decide to roll for the loot or pass on it. They can also inspect the loot to see if the Item is any good.
        In this tutorial you'll learn how to create a simple roll for loot event.
 
        1) Search for "RPG Skeleton".
        2) Drag and drop the Skeleton into the scene.
        3) Right-click the skeleton in the Hierarchy and click "Create new template from this" and give it a name.
        4) In the custom properties of the skeleton change LootId's value to "BasicMobTrash".
        5) Search for "ItemSystems_LootFactoryAdapter" and open it.
        6) Uncomment the first broadcast.
        7) Kill the skeleton to call the roll for loot event.
        
        We're going to give everyone the chance to roll on the Item regardless of who did damage to the enemy.
        This is just to give you an idea on how to create a roll for loot event.
    ----------------------------
 
 
    -------- Player Stats Sheet --------
        Player stats sheet holds all the information about the players stats.
        Health, defense, crit-chance, and the player's level are stored on the player stats sheet
        and are used by "PlayerStats_Combat" to calculate damage.
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
        Here is a list of custom properties that need or can be added to an item.
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
                    Then assign the root object for the property.
                    Reference all the sockets here: https://docs.coregames.com/api/animations/
    --------------------------------------
 
 
--------------------------------------
Framework Components Details
--------------------------------------
 
    ----- Item Database -----
    Item databases contain factory methods for creating items and loot. They also load the asset derived information
    from catalogs, load stats information for all item types, and load the loot drop tables.
    -------------------------
 
    ----- Item Catalog -----
    Catalogs are objects that store Asset References to your items that are registered with the Item Database.
    Anytime you create an item you must always add it to a catalog so it can be registered with the item database.
    If you want, you could store all your items in a single catalog, but that will bloat the custom properties
    window and make it hard to track what items you're registering.
    ------------------------
 
    ----- Item Drops (ItemSystems_DATA_Drops) -----
    "ItemSystems_DATA_Drops" script contains tables that hold loot information about an item's name that can drop and the likelihood.
    You must always insert your item into a loot table if you want the item to spawn as loot into the world using the Loot spawner events.
    -----------------------------------------------
 
    ----- Item Stats -----
    Stats scripts return entries of rollable stats. An item is usually paired with a stat key to imbue the item with stats.
    An item can have multiple rollable stats.
 
        StatKey = 'EpicBoots', -- The stat key an item will reference and roll from.
        Group = 'Base', -- There must be a Base stat for items that reference a statKey. 
        You can add additional stats to an item by changing this from Base to Bonus1, Bonus2, or Bonus3... etc.
       
        Stat = 'Attack', 
        -- The type of stat this Item will have. Reference ItemSystems_Item script 
        and the Item.TYPES variable to see what kind of stats an Item can have.
        Min = '3', -- Min range of the stat
        Max = '5', -- Max range of the stat
        Likelihood = '100', -- The weight of this stat. 
 
        {
            StatKey = 'EpicBoots',
            Group = 'Bonus1',
            Stat = 'Defense',
            Min = '3',
            Max = '5',
            Likelihood = '100',
        }
 
    ----------------------
 
    ----- Item Themes -----
    ItemSystems_ItemThemes contains helper functions to retrieve theme information of different item types.
    You can get the color of a rarity or the sound of an item when interacted with inside the inventory.
    You can customize the custom properties to change how items are displayed.
    You can also change the dropped loot indicators for item rarities.
    Available Rarities: Common, Uncommon, Rare, Epic, or Legendary.
    -----------------------
 
    ----- Inventory -----
    ItemSystems_Inventory contains the logical representation of an inventory. 
    It stores your items and has several public methods that allow you to leverage it for your own implementations.
    You can access the inventory on either a client or server script by getting the player and accessing the corresponding data
    for example: 
        for client "local inventory = Game.GetLocalPlayer().clientUserData.inventory"
        for server "local inventory = player.serverUserData.inventory"
 
    you can then call various public methods to get or set information for example:
         "local slotIndex = inventory:GetFreeBackpackSlot()"
    
    There is a property on the ItemSystems_Inventory script that enables item dropping in-game. This is enabled by default. 
    If you don't want items dropping from players in-game then you can disable the boolean on the script in project content.
    ---------------------
 
    ----- Loot Spawner -----
    ItemSystems_LootSpawner contains various events that can be used to customize the looting experience for your players.
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