Assets {
  Id: 17226259549463923582
  Name: "ITEM_Armor_ExampleBoots"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4129509117028474446
      Objects {
        Id: 4129509117028474446
        Name: "ITEM_Armor_ExampleBoots"
        Transform {
          Scale {
            X: 1.07386231
            Y: 1.07386231
            Z: 1.07386231
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5743149853269884150
        ChildIds: 8368475805096733658
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Warden Eterna Boots"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 1202045029553306098
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Boots"
          }
          Overrides {
            Name: "cs:Description"
            String: "Forged by Mucusinator in the depths of Eterna."
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Epic"
          }
          Overrides {
            Name: "cs:StatKey"
            String: "EpicBoots"
          }
          Overrides {
            Name: "cs:SOCKET_both_feet"
            ObjectReference {
              SubObjectId: 4129509117028474446
            }
          }
          Overrides {
            Name: "cs:DropRotation"
            Vector {
              X: 90
            }
          }
          Overrides {
            Name: "cs:Name:tooltip"
            String: "The name of the Item that will be displayed in the inventory, loot view, and referenced in the drops table."
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The Icon that will be displayed"
          }
          Overrides {
            Name: "cs:ItemType:tooltip"
            String: "The type of Item this is. This will reference a type from ItemSystems_Item -> Item.TYPES."
          }
          Overrides {
            Name: "cs:Description:tooltip"
            String: "The lore for this item when viewed from the Inventory"
          }
          Overrides {
            Name: "cs:Rarity:tooltip"
            String: "The theme of this item. This does not affect stats in anyways, but gives it a nice look in the inventory and loot view."
          }
          Overrides {
            Name: "cs:StatKey:tooltip"
            String: "The stat key this item points to when when rolling for stats. Usually assoicated with the Item type. ItemSystems_DATA_TYPEHERE_Stats."
          }
          Overrides {
            Name: "cs:SOCKET_both_feet:tooltip"
            String: "the socket we\'re going to attach the geomtry to when  the player equips this item. If you want your boots to go on both feet then make sure to have the name of your custom property, \"Socket_both_feet\". Then assign the root geometry object. Reference all the sockets here: https://docs.coregames.com/api/animations/"
          }
          Overrides {
            Name: "cs:DropRotation:tooltip"
            String: "The drop rotation that is applied to the object dropped."
          }
        }
        WantsNetworking: true
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
        Id: 5743149853269884150
        Name: "Stats"
        Transform {
          Location {
            X: -118.103447
            Y: -10.1961317
          }
          Rotation {
          }
          Scale {
            X: 0.931218088
            Y: 0.931218088
            Z: 0.931218088
          }
        }
        ParentId: 4129509117028474446
        ChildIds: 2013892852727373720
        ChildIds: 11726785199877112108
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
        Id: 2013892852727373720
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
        ParentId: 5743149853269884150
        ChildIds: 4087476714825463205
        ChildIds: 14744161486722578742
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
        Id: 4087476714825463205
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
        ParentId: 2013892852727373720
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 8
          }
          Overrides {
            Name: "cs:Max"
            Int: 13
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
        Id: 14744161486722578742
        Name: "Haste"
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
        ParentId: 2013892852727373720
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
        Id: 11726785199877112108
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
        ParentId: 5743149853269884150
        ChildIds: 7408075614307514119
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
        Id: 7408075614307514119
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
        ParentId: 11726785199877112108
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
        Id: 8368475805096733658
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
        ParentId: 4129509117028474446
        ChildIds: 569847914053777597
        ChildIds: 11241606869893753953
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 569847914053777597
        Name: "Armour Set 1  UpperBoot"
        Transform {
          Location {
            X: -10.7690277
            Y: -0.414668083
            Z: 30.8335495
          }
          Rotation {
            Yaw: -87.7948608
            Roll: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8368475805096733658
        ChildIds: 16633149294133041382
        ChildIds: 15233806506078300913
        ChildIds: 225957739264724432
        ChildIds: 13455450558495429273
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
        Id: 16633149294133041382
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.183349624
            Y: -3.25977373
            Z: -15.9425135
          }
          Rotation {
            Pitch: 88.0354614
            Yaw: 179.999207
            Roll: -90.0013885
          }
          Scale {
            X: 0.360380858
            Y: 0.115825363
            Z: 0.644285
          }
        }
        ParentId: 569847914053777597
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9889464252761915147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 10283743880838515553
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15233806506078300913
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.183268458
            Y: 1.54155946
            Z: -10.7884445
          }
          Rotation {
            Pitch: -1.96438956
            Yaw: -179.999893
            Roll: -11.250165
          }
          Scale {
            X: 0.193244159
            Y: 0.252630472
            Z: 0.239933893
          }
        }
        ParentId: 569847914053777597
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 14333007140866644560
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 225957739264724432
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.00481225457
            Y: 7.2678113
            Z: -21.4284096
          }
          Rotation {
            Pitch: -1.96438956
            Yaw: 179.999939
            Roll: 33.750061
          }
          Scale {
            X: 0.1612418
            Y: 0.210795492
            Z: 0.14737767
          }
        }
        ParentId: 569847914053777597
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 14333007140866644560
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13455450558495429273
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.183349609
            Y: -0.781441152
            Z: -15.9425144
          }
          Rotation {
            Pitch: -88.0349579
            Yaw: -0.000896625686
            Roll: -89.999
          }
          Scale {
            X: 0.360381037
            Y: 0.252630442
            Z: 0.644284368
          }
        }
        ParentId: 569847914053777597
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 10283743880838515553
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11241606869893753953
        Name: "Armour Set 1  LowerBoot"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -87.7948837
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8368475805096733658
        ChildIds: 5960105122216932659
        ChildIds: 4488064101711983023
        ChildIds: 2857200644331974088
        ChildIds: 14629526970904384599
        ChildIds: 5257044899248432114
        ChildIds: 8231132559866185947
        ChildIds: 12617861948136229742
        ChildIds: 2237845241857677215
        ChildIds: 18343454294591313897
        ChildIds: 3056246388551378046
        ChildIds: 4331882791312883516
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
        Id: 5960105122216932659
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.15265709e-06
            Y: -2.41729689
            Z: 6.57621479
          }
          Rotation {
            Pitch: -83.619751
            Yaw: -84.5677948
            Roll: 173.436295
          }
          Scale {
            X: 0.125617981
            Y: 0.252632231
            Z: 0.644285083
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 10283743880838515553
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4488064101711983023
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 4.21816321e-06
            Y: -8.84613
            Z: 0.874810755
          }
          Rotation {
            Pitch: -83.0944138
            Yaw: 84.9553833
            Roll: 3.86739922
          }
          Scale {
            X: 0.125617921
            Y: 0.359684378
            Z: 0.68178165
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 10283743880838515553
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2857200644331974088
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -4.82029236e-06
            Y: 10.1088867
            Z: -3.47474217
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -89.9998856
            Roll: -6.48946298e-06
          }
          Scale {
            X: 0.3
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9889464252761915147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8478482560594155968
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14629526970904384599
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -1.99631882e-06
            Y: 4.18658447
            Z: -3.47474241
          }
          Rotation {
            Pitch: -4.09811328e-05
            Yaw: 89.9999619
            Roll: 1.22624706e-05
          }
          Scale {
            X: 0.496637076
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9889464252761915147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8478482560594155968
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5257044899248432114
        Name: "Thorn"
        Transform {
          Location {
            X: 3.43500847e-06
            Y: -7.20373535
            Z: -1.29249251
          }
          Rotation {
            Pitch: -75.0065231
            Yaw: 90.0106125
            Roll: -0.00127384905
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8210514785031040523
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8231132559866185947
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.15265709e-06
            Y: -2.41729712
            Z: 4.87386608
          }
          Rotation {
            Pitch: -83.6258087
            Yaw: -84.5740128
            Roll: 173.436844
          }
          Scale {
            X: 0.133723795
            Y: 0.268933892
            Z: 0.685859144
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9889464252761915147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 10283743880838515553
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12617861948136229742
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -5.77326819e-06
            Y: 12.1074219
            Z: 6.86347628
          }
          Rotation {
            Pitch: 4.78113216e-05
            Yaw: 2.09889786e-05
            Roll: 49.437397
          }
          Scale {
            X: 0.102864183
            Y: 0.468306154
            Z: 0.287245631
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 15484605620023334162
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2237845241857677215
        Name: "Thorn"
        Transform {
          Location {
            X: -3.09740403e-06
            Y: 6.49572754
            Z: -1.57810342
          }
          Rotation {
            Pitch: -90
            Yaw: 26.565033
            Roll: 63.4355
          }
          Scale {
            X: 0.484400332
            Y: 0.263557494
            Z: 0.235261261
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8210514785031040523
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18343454294591313897
        Name: "Thorn"
        Transform {
          Location {
            X: 2.20027846e-06
            Y: -4.61431885
            Z: -1.29690337
          }
          Rotation {
            Pitch: -90
            Yaw: 26.565033
            Roll: 63.4356232
          }
          Scale {
            X: 0.689653695
            Y: 0.268731415
            Z: 0.336292952
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8210514785031040523
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3056246388551378046
        Name: "Thorn"
        Transform {
          Location {
            X: 3.07304413e-06
            Y: -6.44464111
            Z: -1.92357123
          }
          Rotation {
            Pitch: -75.0067062
            Yaw: 90.0106888
            Roll: -0.00126726564
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9889464252761915147
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8210514785031040523
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4331882791312883516
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -9.61162641e-06
            Y: 20.1570435
            Z: -2.70884538
          }
          Rotation {
            Pitch: -65.2729721
            Yaw: -87.136467
            Roll: 177.550629
          }
          Scale {
            X: 0.0826881453
            Y: 0.548395753
            Z: 0.807826757
          }
        }
        ParentId: 11241606869893753953
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 64
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 64
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
            Id: 15484605620023334162
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 1202045029553306098
      Name: "Fantasy Boot 017"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Boot_017"
      }
    }
    Assets {
      Id: 10283743880838515553
      Name: "Gem - Baguette Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_baguette_polished_001"
      }
    }
    Assets {
      Id: 14333007140866644560
      Name: "Prism - 3-Sided Convex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_triangle_convex_001"
      }
    }
    Assets {
      Id: 8478482560594155968
      Name: "Crescent - 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crescent_003"
      }
    }
    Assets {
      Id: 8210514785031040523
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
      }
    }
    Assets {
      Id: 15484605620023334162
      Name: "Wedge - Corner Complex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_corelogo_shape_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
