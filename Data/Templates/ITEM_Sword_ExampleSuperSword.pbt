Assets {
  Id: 12213754262020759560
  Name: "ITEM_Sword_ExampleSuperSword"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8507313795634817657
      Objects {
        Id: 8507313795634817657
        Name: "ITEM_Sword_ExampleSuperSword"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4649353316498909807
        ChildIds: 5271815672052294904
        ChildIds: 196839836578414246
        ChildIds: 12124757009665222282
        ChildIds: 8131142938613426191
        ChildIds: 17153366650183265284
        ChildIds: 3415856443368370976
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Super Cool Sword"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 9678763224777123780
            }
          }
          Overrides {
            Name: "cs:LevelRequirement"
            Int: 15
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Greatsword"
          }
          Overrides {
            Name: "cs:Description"
            String: "What a great sword!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Legendary"
          }
          Overrides {
            Name: "cs:EquipmentStance"
            String: "2hand_sword_stance"
          }
          Overrides {
            Name: "cs:PickupSound"
            AssetReference {
              Id: 4020958367257585299
            }
          }
          Overrides {
            Name: "cs:SwingSound"
            AssetReference {
              Id: 1970105428586059764
            }
          }
          Overrides {
            Name: "cs:PlayerImpact"
            AssetReference {
              Id: 307406115803496087
            }
          }
          Overrides {
            Name: "cs:DropRotation"
            Vector {
              X: 90
            }
          }
          Overrides {
            Name: "cs:EquipmentStance:tooltip"
            String: "The stance animation when a player picks up the equipment."
          }
          Overrides {
            Name: "cs:PlayerImpact:tooltip"
            String: "Template that is spawned at the location where the hitbox hit the player."
          }
          Overrides {
            Name: "cs:PickupSound:tooltip"
            String: "Template that is spawned at the equipment owner location when being picked up."
          }
          Overrides {
            Name: "cs:SwingSound:tooltip"
            String: "Template that is spawned at the equipment owner location when a melee ability is executed."
          }
          Overrides {
            Name: "cs:Name:tooltip"
            String: "The name of the Item that will be displayed in the inventory, loot view, and referenced in the drops table."
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "he Icon that will be displayed"
          }
          Overrides {
            Name: "cs:ItemType:tooltip"
            String: "The type of Item this is. This must point to a type from ItemSystems_Item -> Item.TYPES."
          }
          Overrides {
            Name: "cs:Rarity:tooltip"
            String: "The theme of this item. This does not affect stats in anyways, but gives it a nice look in the inventory and loot view."
          }
          Overrides {
            Name: "cs:Description:tooltip"
            String: "The lore for this item when viewed from the Inventory"
          }
          Overrides {
            Name: "cs:DropRotation:tooltip"
            String: "The drop rotation that is applied to the object when dropped."
          }
          Overrides {
            Name: "cs:LevelRequirement:tooltip"
            String: "The required level that a player must be at to equip this item or use it."
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
          }
        }
      }
      Objects {
        Id: 5271815672052294904
        Name: "Stats"
        Transform {
          Location {
            X: -23.1322632
            Y: -365.521118
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8507313795634817657
        ChildIds: 16983289346911108136
        ChildIds: 8593059746300212389
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
      }
      Objects {
        Id: 16983289346911108136
        Name: "Base"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5271815672052294904
        ChildIds: 15341087514883278415
        ChildIds: 2217228497180253416
        ChildIds: 6638326281420588187
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 15341087514883278415
        Name: "Attack"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16983289346911108136
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 20
          }
          Overrides {
            Name: "cs:Max"
            Int: 50
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 200
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2217228497180253416
        Name: "CritChance"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16983289346911108136
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 2
          }
          Overrides {
            Name: "cs:Max"
            Int: 5
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6638326281420588187
        Name: "Defense"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16983289346911108136
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8593059746300212389
        Name: "Bonus1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5271815672052294904
        ChildIds: 1088839013411810385
        ChildIds: 14146659471024482754
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 1088839013411810385
        Name: "Attack"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8593059746300212389
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 1
          }
          Overrides {
            Name: "cs:Max"
            Int: 6
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14146659471024482754
        Name: "CritChance"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8593059746300212389
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 1
          }
          Overrides {
            Name: "cs:Max"
            Int: 3
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 196839836578414246
        Name: "Hitbox Trigger"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 8507313795634817657
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerSocket"
            String: "root"
          }
          Overrides {
            Name: "cs:LocalPosition"
            Vector {
              X: 100
              Z: 150
            }
          }
          Overrides {
            Name: "cs:LocalRotation"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:LocalPosition:tooltip"
            String: "Specify the local position of the object when attached to the player socket."
          }
          Overrides {
            Name: "cs:LocalRotation:tooltip"
            String: "Specify the local rotation of the object when attached to the player socket."
          }
          Overrides {
            Name: "cs:PlayerSocket:tooltip"
            String: "Specify the player socket to attach the object."
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
        }
      }
      Objects {
        Id: 12124757009665222282
        Name: "Attack 1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8507313795634817657
        UnregisteredParameters {
          Overrides {
            Name: "cs:Damage"
            Float: 35
          }
          Overrides {
            Name: "cs:Hitbox"
            ObjectReference {
              SubObjectId: 196839836578414246
            }
          }
          Overrides {
            Name: "cs:SwingEffect"
            AssetReference {
              Id: 171090409284182791
            }
          }
          Overrides {
            Name: "cs:SwingSpawnDelay"
            Float: 0.04
          }
          Overrides {
            Name: "cs:SwingRotationX"
            Float: -4.8
          }
          Overrides {
            Name: "cs:SwingRotationY"
            Float: -4
          }
          Overrides {
            Name: "cs:Damage:tooltip"
            String: "Damage value applied to a player hit by hitbox trigger."
          }
          Overrides {
            Name: "cs:Hitbox:tooltip"
            String: "Reference to the hitbox trigger that this ability will use for damaging enemies."
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            Duration: 0.15
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "2hand_melee_slash_right"
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
      }
      Objects {
        Id: 8131142938613426191
        Name: "Attack 2"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8507313795634817657
        UnregisteredParameters {
          Overrides {
            Name: "cs:Damage"
            Float: 40
          }
          Overrides {
            Name: "cs:Hitbox"
            ObjectReference {
              SubObjectId: 196839836578414246
            }
          }
          Overrides {
            Name: "cs:SwingEffect"
            AssetReference {
              Id: 171090409284182791
            }
          }
          Overrides {
            Name: "cs:SwingSpawnDelay"
            Float: 0
          }
          Overrides {
            Name: "cs:SwingRotationX"
            Float: -180
          }
          Overrides {
            Name: "cs:SwingRotationY"
            Float: 0
          }
          Overrides {
            Name: "cs:Damage:tooltip"
            String: "Damage value applied to a player hit by hitbox trigger."
          }
          Overrides {
            Name: "cs:Hitbox:tooltip"
            String: "Reference to the hitbox trigger that this ability will use for damaging enemies."
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            Duration: 0.15
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "2hand_melee_slash_vertical"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
      }
      Objects {
        Id: 17153366650183265284
        Name: "ServerContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8507313795634817657
        ChildIds: 17345650183811864363
        ChildIds: 11170441688993912674
        ChildIds: 276815213591476127
        ChildIds: 18214356646281138747
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
          Type: Server
        }
      }
      Objects {
        Id: 17345650183811864363
        Name: "EquipmentPickupServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17153366650183265284
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SelfId: 6907903927183883021
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 8459825612529451237
          }
        }
      }
      Objects {
        Id: 11170441688993912674
        Name: "EquipmentStanceServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17153366650183265284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1427829216143793458
          }
        }
      }
      Objects {
        Id: 276815213591476127
        Name: "EquipmentMeleeAttacksServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17153366650183265284
        UnregisteredParameters {
          Overrides {
            Name: "cs:ModuleManager"
            AssetReference {
              Id: 5020659879017544757
            }
          }
          Overrides {
            Name: "cs:PlayerStats_Combat"
            AssetReference {
              Id: 6901022733058076057
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 5082628058110625875
          }
        }
      }
      Objects {
        Id: 18214356646281138747
        Name: "EquipmentAttachObjectToPlayer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17153366650183265284
        UnregisteredParameters {
          Overrides {
            Name: "cs:Object"
            ObjectReference {
              SubObjectId: 196839836578414246
            }
          }
          Overrides {
            Name: "cs:Object:tooltip"
            String: "Set object to attach to player on equip event."
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 12439034694186114331
          }
        }
      }
      Objects {
        Id: 3415856443368370976
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8507313795634817657
        ChildIds: 9744634348832249229
        ChildIds: 15080053339315321452
        ChildIds: 8309725692983798443
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 9744634348832249229
        Name: "Geo"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3415856443368370976
        ChildIds: 14090372540951309712
        ChildIds: 11191868620354895130
        ChildIds: 11236519716068854888
        ChildIds: 15403776331591752599
        ChildIds: 3850583460048897029
        ChildIds: 11475022279458508267
        ChildIds: 14392255731092512552
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14090372540951309712
        Name: "Fantasy Sword Grip 01"
        Transform {
          Location {
            Z: -31.9035034
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.63448834
          }
        }
        ParentId: 9744634348832249229
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3682206342183528038
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11191868620354895130
        Name: "Fantasy Sword Guard 01"
        Transform {
          Location {
            Z: 15.6875534
          }
          Rotation {
          }
          Scale {
            X: 1.14376116
            Y: 1
            Z: 1
          }
        }
        ParentId: 9744634348832249229
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.359375
              G: 0.291129
              B: 0.187908
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 1920010878601219178
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11236519716068854888
        Name: "Fantasy Sword Blade 03"
        Transform {
          Location {
            X: 9.77871704
            Z: 24.9324341
          }
          Rotation {
          }
          Scale {
            X: 0.722034216
            Y: 0.6292454
            Z: 2.04308844
          }
        }
        ParentId: 9744634348832249229
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.032052964
              G: 0.110000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4801985963367974663
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15403776331591752599
        Name: "Fantasy Sword Blade 03"
        Transform {
          Location {
            X: -8.48806763
            Z: 24.9324341
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 0.722034216
            Y: 0.6292454
            Z: 2.04308844
          }
        }
        ParentId: 9744634348832249229
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.032052964
              G: 0.110000014
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4801985963367974663
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3850583460048897029
        Name: "Fantasy Pommel 04"
        Transform {
          Location {
            Z: -30.5862656
          }
          Rotation {
            Yaw: 89.9999771
          }
          Scale {
            X: 1.39352274
            Y: 1.39352274
            Z: 1.39352274
          }
        }
        ParentId: 9744634348832249229
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12510064410993333055
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11475022279458508267
        Name: "Fantasy Pommel 03"
        Transform {
          Location {
            Z: -8.00834656
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9744634348832249229
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9675776263369201294
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14392255731092512552
        Name: "Fantasy Sword Blade 03"
        Transform {
          Location {
            X: 0.390106201
            Z: 24.9324341
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 1.25333261
            Y: 2.61876297
            Z: 2.04308844
          }
        }
        ParentId: 9744634348832249229
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0569535382
              G: 0.429999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4342756216088781504
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15080053339315321452
        Name: "EquipmentPickupClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3415856443368370976
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 440168262593430639
          }
        }
      }
      Objects {
        Id: 8309725692983798443
        Name: "EquipmentMeleeAttacksClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3415856443368370976
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 12971704803185333098
          }
        }
      }
    }
    Assets {
      Id: 9678763224777123780
      Name: "Fantasy Sword 011"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Sword_011"
      }
    }
    Assets {
      Id: 3682206342183528038
      Name: "Fantasy Sword Grip 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_grip_sword_001"
      }
    }
    Assets {
      Id: 1920010878601219178
      Name: "Fantasy Sword Guard 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_guard_sword_001"
      }
    }
    Assets {
      Id: 4801985963367974663
      Name: "Fantasy Sword Blade 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_sword_003"
      }
    }
    Assets {
      Id: 12510064410993333055
      Name: "Fantasy Pommel 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_004"
      }
    }
    Assets {
      Id: 9675776263369201294
      Name: "Fantasy Pommel 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_pommel_003"
      }
    }
    Assets {
      Id: 4342756216088781504
      Name: "Fantasy Sword Blade 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_sword_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
