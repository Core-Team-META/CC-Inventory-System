Assets {
  Id: 14306718394135860943
  Name: "ITEM_Boots_ExampleBoots2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4129509117028474446
      Objects {
        Id: 4129509117028474446
        Name: "ITEM_Boots_ExampleBoots2"
        Transform {
          Scale {
            X: 1.15003169
            Y: 1.15003169
            Z: 1.15003169
          }
        }
        ParentId: 4649353316498909807
        ChildIds: 8368475805096733658
        ChildIds: 3058378324772844662
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Promised Retribution Boots"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 703957094748170813
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Boots"
          }
          Overrides {
            Name: "cs:Description"
            String: "Forged by Mucusinator."
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Epic"
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
        Id: 8368475805096733658
        Name: "Geo"
        Transform {
          Location {
            X: 3.05464578
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
        ChildIds: 9791800862693172438
        ChildIds: 17971649372105419226
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
        Id: 9791800862693172438
        Name: "Armour Set 2 Left UpperBoot"
        Transform {
          Location {
            X: -8.37480164
            Y: 0.755592346
            Z: 35.8244
          }
          Rotation {
            Pitch: -0.000671386719
            Yaw: -89.9998779
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8368475805096733658
        ChildIds: 18158135330870644717
        ChildIds: 11726095944815698293
        ChildIds: 14768072587114170168
        ChildIds: 18284352310511169166
        UnregisteredParameters {
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
        Id: 18158135330870644717
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.484480619
            Y: 0.121693276
            Z: -17.0906773
          }
          Rotation {
            Pitch: -79.0296
            Yaw: 84.941452
            Roll: 6.40993261
          }
          Scale {
            X: 0.360381037
            Y: 0.252630442
            Z: 0.644284368
          }
        }
        ParentId: 9791800862693172438
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 11726095944815698293
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.13314037
            Y: -0.112493701
            Z: -9.64894199
          }
          Rotation {
            Pitch: 0.450758308
            Yaw: 0.10497231
            Roll: -173.362778
          }
          Scale {
            X: 0.193244159
            Y: 0.252630472
            Z: 0.239933893
          }
        }
        ParentId: 9791800862693172438
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 14768072587114170168
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.620323181
            Y: 3.6133287
            Z: -21.3718166
          }
          Rotation {
            Pitch: 0.450758308
            Yaw: 0.104973018
            Roll: 167.481
          }
          Scale {
            X: 0.1612418
            Y: 0.210795492
            Z: 0.14737767
          }
        }
        ParentId: 9791800862693172438
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 18284352310511169166
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.484477192
            Y: -2.35663939
            Z: -17.0906715
          }
          Rotation {
            Pitch: -79.0296
            Yaw: 84.9415131
            Roll: 6.40993357
          }
          Scale {
            X: 0.360380858
            Y: 0.115825363
            Z: 0.644285
          }
        }
        ParentId: 9791800862693172438
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
        Id: 17971649372105419226
        Name: "Armour Set 2 Left LowerBoot"
        Transform {
          Location {
            Y: 7.62939453e-06
          }
          Rotation {
            Yaw: -90.0000076
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8368475805096733658
        ChildIds: 12501592921767108227
        ChildIds: 880734056744549622
        ChildIds: 3588537055323253539
        ChildIds: 3372204366832794762
        ChildIds: 8273096241174740834
        ChildIds: 2973654188759693716
        ChildIds: 10215804798761582424
        ChildIds: 17854139427152032510
        ChildIds: 5715964922289181350
        ChildIds: 6106800384788433829
        ChildIds: 9305031659629827479
        UnregisteredParameters {
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
        Id: 12501592921767108227
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.893061161
            Y: -7.97619677
            Z: -0.115952842
          }
          Rotation {
            Pitch: -83.104126
            Yaw: 95.0879
            Roll: -3.86691284
          }
          Scale {
            X: 0.125617921
            Y: 0.359684378
            Z: 0.68178165
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 880734056744549622
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -0.579595923
            Y: 10.3797617
            Z: -3.4746964
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -89.9996643
            Roll: -3.05175781e-05
          }
          Scale {
            X: 0.3
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
        Id: 3588537055323253539
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -0.579592049
            Y: 4.45788622
            Z: -3.47470093
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 90.0000763
            Roll: 4.28633721e-05
          }
          Scale {
            X: 0.496637076
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
        Id: 3372204366832794762
        Name: "Thorn"
        Transform {
          Location {
            X: -0.900883
            Y: 6.76647949
            Z: -1.57805526
          }
          Rotation {
            Pitch: -90
            Yaw: -5.71060181
            Roll: 95.7112885
          }
          Scale {
            X: 0.484400332
            Y: 0.263557494
            Z: 0.235261261
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 8273096241174740834
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.898925841
            Y: -1.58740437
            Z: 5.33509207
          }
          Rotation {
            Pitch: -83.6367798
            Yaw: -95.4926758
            Roll: -173.413132
          }
          Scale {
            X: 0.125617981
            Y: 0.252632231
            Z: 0.644285083
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 2973654188759693716
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.893078923
            Y: 20.2959595
            Z: -3.85765529
          }
          Rotation {
            Pitch: -65.2504883
            Yaw: -92.2328491
            Roll: -177.487061
          }
          Scale {
            X: 0.0826881453
            Y: 0.548395753
            Z: 0.807826757
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 10215804798761582424
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.898935854
            Y: 13.4384747
            Z: 6.18766832
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 1.48110967e-05
            Roll: 49.4374275
          }
          Scale {
            X: 0.102864183
            Y: 0.468306154
            Z: 0.287245631
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 17854139427152032510
        Name: "Thorn"
        Transform {
          Location {
            X: -0.900875807
            Y: -4.34356737
            Z: -1.29685867
          }
          Rotation {
            Pitch: -90
            Yaw: -14.0362549
            Roll: 104.037071
          }
          Scale {
            X: 0.689653695
            Y: 0.268731415
            Z: 0.336292952
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 5715964922289181350
        Name: "Thorn"
        Transform {
          Location {
            X: -0.900874138
            Y: -6.9422
            Z: -1.2222966
          }
          Rotation {
            Pitch: -75.0067444
            Yaw: 90.0106125
            Roll: -0.00161743164
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 6106800384788433829
        Name: "Thorn"
        Transform {
          Location {
            X: -0.900874496
            Y: -6.18310547
            Z: -1.85337508
          }
          Rotation {
            Pitch: -75.0061646
            Yaw: 90.0099487
            Roll: -0.00161743164
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
        Id: 9305031659629827479
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -0.898925483
            Y: -1.58740389
            Z: 3.63274336
          }
          Rotation {
            Pitch: -83.6376953
            Yaw: -95.4935913
            Roll: -173.413132
          }
          Scale {
            X: 0.133723795
            Y: 0.268933892
            Z: 0.685859144
          }
        }
        ParentId: 17971649372105419226
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
        Id: 3058378324772844662
        Name: "Stats"
        Transform {
          Location {
            X: -109.149071
            Y: -332.944763
          }
          Rotation {
          }
          Scale {
            X: 0.869541287
            Y: 0.869541287
            Z: 0.869541287
          }
        }
        ParentId: 4129509117028474446
        ChildIds: 16847098478837549299
        ChildIds: 8724907079020150246
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
        Id: 16847098478837549299
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
        ParentId: 3058378324772844662
        ChildIds: 7209991867004716077
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
        Id: 7209991867004716077
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
        ParentId: 16847098478837549299
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
        Id: 8724907079020150246
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
        ParentId: 3058378324772844662
        ChildIds: 10734399345856207691
        ChildIds: 6395125312744319808
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
        Id: 10734399345856207691
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
        ParentId: 8724907079020150246
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
        Id: 6395125312744319808
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
        ParentId: 8724907079020150246
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 2
          }
          Overrides {
            Name: "cs:Max"
            Int: 8
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
    }
    Assets {
      Id: 703957094748170813
      Name: "Fantasy Boot 009"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Boot_009"
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
