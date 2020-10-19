Assets {
  Id: 12889700838915016367
  Name: "ITEM_Armor_ExampleHelm"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1103300475510269383
      Objects {
        Id: 1103300475510269383
        Name: "ITEM_Armor_ExampleHelm"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Warden Eterna Helm"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 5171043325198665113
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Helmet"
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
            String: "EpicHelmet"
          }
          Overrides {
            Name: "cs:SOCKET_head"
            ObjectReference {
              SubObjectId: 1103300475510269383
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
            Name: "cs:Rarity:tooltip"
            String: "The theme of this item. This does not affect stats in anyways, but gives it a nice look in the inventory and loot view."
          }
          Overrides {
            Name: "cs:Description:tooltip"
            String: "The lore for this item when viewed from the Inventory"
          }
          Overrides {
            Name: "cs:StatKey:tooltip"
            String: "The stat key this item points to when when rolling for stats. Usually assoicated with the Item type. ItemSystems_DATA_TYPEHERE_Stats."
          }
          Overrides {
            Name: "cs:SOCKET_head:tooltip"
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
        Id: 15673133818328271334
        Name: "Geo"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -87.7948608
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1103300475510269383
        ChildIds: 3563683431340968950
        ChildIds: 1279183270080179352
        ChildIds: 169002816337931983
        ChildIds: 8185304024100077301
        ChildIds: 14182032856166077743
        ChildIds: 13058373247644904555
        ChildIds: 9991003754307810419
        ChildIds: 10435324204197428893
        ChildIds: 17188983925280481523
        ChildIds: 12429826650496672408
        ChildIds: 6479868771624213732
        ChildIds: 759316416758939714
        ChildIds: 8247926709941097004
        ChildIds: 15348973521574176632
        ChildIds: 2575605827439235677
        ChildIds: 14685063527767863572
        ChildIds: 13120795076835643372
        ChildIds: 278341976200546073
        ChildIds: 10184968285312323270
        ChildIds: 12068859213516104629
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
        Id: 3563683431340968950
        Name: "Capsule"
        Transform {
          Location {
            X: -4.93798828
            Y: 1.37127686
            Z: -1.25346375
          }
          Rotation {
            Pitch: -3.15349817
            Yaw: -89.9992218
            Roll: 11.2508736
          }
          Scale {
            X: -0.201039791
            Y: 0.134322852
            Z: 0.0896813795
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 1279183270080179352
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620117188
            Y: 6.32629395
            Z: 11.7141113
          }
          Rotation {
            Pitch: 0.000819622655
            Yaw: 0.000637814228
            Roll: -80.054306
          }
          Scale {
            X: 0.258632213
            Y: 0.691152692
            Z: 0.183682203
          }
        }
        ParentId: 15673133818328271334
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 1247493420454027953
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
            Id: 10262225396143285161
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
        Id: 169002816337931983
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620117188
            Y: 13.4663086
            Z: 10.3817825
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -179.999893
            Roll: -178.252548
          }
          Scale {
            X: 1.00000334
            Y: 2.11199975
            Z: 0.552112341
          }
        }
        ParentId: 15673133818328271334
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12909729295927048223
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
            Id: 1024134866532057554
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
        Id: 8185304024100077301
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620117188
            Y: 0.746948242
            Z: 5.3918457
          }
          Rotation {
            Pitch: 32.1797256
            Yaw: 90.000061
            Roll: 3.22794731e-05
          }
          Scale {
            X: 0.281180888
            Y: 0.198164061
            Z: 0.281181067
          }
        }
        ParentId: 15673133818328271334
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
            Id: 5489775416547967874
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
        Id: 14182032856166077743
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0618896484
            Y: -5.77008057
            Z: -0.147018433
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 0.000254496204
            Roll: 30.3391018
          }
          Scale {
            X: 0.182196945
            Y: 0.22628136
            Z: 0.092492722
          }
        }
        ParentId: 15673133818328271334
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
            Id: 18367172901088327762
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
        Id: 13058373247644904555
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620117188
            Y: 3.27404785
            Z: 5.3918457
          }
          Rotation {
            Pitch: 4.00053024
            Yaw: 90.0000763
            Roll: 3.08109229e-05
          }
          Scale {
            X: 0.244594947
            Y: 0.192058757
            Z: 0.244595036
          }
        }
        ParentId: 15673133818328271334
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
            Id: 5489775416547967874
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
        Id: 9991003754307810419
        Name: "Capsule"
        Transform {
          Location {
            X: 5.61621094
            Y: 3.37524414
            Z: -1.13264465
          }
          Rotation {
            Pitch: 3.15349126
            Yaw: 89.9990311
            Roll: 11.2504263
          }
          Scale {
            X: 0.17499961
            Y: 0.116924331
            Z: 0.0780651793
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 10435324204197428893
        Name: "Capsule"
        Transform {
          Location {
            X: 5.61621094
            Y: 3.41967773
            Z: 0.0933227539
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: 4.14480892e-05
            Roll: 176.845657
          }
          Scale {
            X: 0.116924167
            Y: 0.175
            Z: 0.116924167
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 17188983925280481523
        Name: "Capsule"
        Transform {
          Location {
            X: -5.18383789
            Y: 3.37457275
            Z: -1.14215088
          }
          Rotation {
            Pitch: -3.15349817
            Yaw: -89.9992218
            Roll: 11.2507887
          }
          Scale {
            X: -0.17499961
            Y: 0.116924331
            Z: 0.0780651793
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 12429826650496672408
        Name: "Capsule"
        Transform {
          Location {
            X: -5.18383789
            Y: 3.41925049
            Z: 0.0893859863
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 3.36864214e-05
            Roll: 176.845383
          }
          Scale {
            X: -0.116924196
            Y: 0.175381184
            Z: 0.116924793
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 6479868771624213732
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0618896484
            Y: -6.30615234
            Z: -2.90809631
          }
          Rotation {
            Pitch: -16.5838013
            Yaw: -89.9995422
            Roll: -0.000182619973
          }
          Scale {
            X: 0.22378701
            Y: 0.22378701
            Z: 0.224522918
          }
        }
        ParentId: 15673133818328271334
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
            Id: 14850889699687519085
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
        Id: 759316416758939714
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620117188
            Y: -4.82739258
            Z: 8.71263123
          }
          Rotation {
            Pitch: -1.45809507
            Yaw: 178.686066
            Roll: -48.1384926
          }
          Scale {
            X: 0.259273589
            Y: 0.623250842
            Z: 0.179476514
          }
        }
        ParentId: 15673133818328271334
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1247493420454027953
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 1247493420454027953
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
            Id: 10262225396143285161
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
        Id: 8247926709941097004
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620117188
            Y: -1.16101074
            Z: 4.33853149
          }
          Rotation {
            Yaw: 1.37851575e-05
            Roll: -70.5428925
          }
          Scale {
            X: 0.200765848
            Y: 0.231936008
            Z: 0.3512263
          }
        }
        ParentId: 15673133818328271334
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
        Id: 15348973521574176632
        Name: "Capsule"
        Transform {
          Location {
            X: 0.06199646
            Y: 14.0540161
            Z: 16.1204453
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -179.999893
            Roll: 176.159698
          }
          Scale {
            X: 0.636205852
            Y: 1.40295136
            Z: 0.871777773
          }
        }
        ParentId: 15673133818328271334
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12909729295927048223
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
            Id: 1024134866532057554
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
        Id: 2575605827439235677
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0620117188
            Y: -6.30615234
            Z: -1.78144836
          }
          Rotation {
            Pitch: -15.6906309
            Yaw: -89.9995499
            Roll: -0.000181798125
          }
          Scale {
            X: 0.220019817
            Y: 0.220019192
            Z: 0.214055732
          }
        }
        ParentId: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12909729295927048223
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
            Id: 14850889699687519085
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
        Id: 14685063527767863572
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0620117188
            Y: -4.96209717
            Z: 1.41400146
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 0.000254496146
            Roll: 30.339159
          }
          Scale {
            X: 0.182196945
            Y: 0.22628136
            Z: 0.092492722
          }
        }
        ParentId: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12909729295927048223
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
            Id: 18367172901088327762
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
        Id: 13120795076835643372
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620117188
            Y: 0.746948242
            Z: 6.23854065
          }
          Rotation {
            Pitch: 32.179718
            Yaw: 90.0000534
            Roll: 3.22794695e-05
          }
          Scale {
            X: 0.281180888
            Y: 0.198164061
            Z: 0.281181067
          }
        }
        ParentId: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12909729295927048223
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
            Id: 5489775416547967874
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
        Id: 278341976200546073
        Name: "Capsule"
        Transform {
          Location {
            X: -4.93798828
            Y: 1.41595459
            Z: -0.0219421387
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 3.36864323e-05
            Roll: 176.845383
          }
          Scale {
            X: -0.134322658
            Y: 0.201478168
            Z: 0.134323344
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 10184968285312323270
        Name: "Capsule"
        Transform {
          Location {
            X: 5.06201172
            Y: 1.41638184
            Z: -0.017074585
          }
          Rotation {
            Pitch: 6.83018879e-05
            Yaw: 4.14480892e-05
            Roll: 176.845657
          }
          Scale {
            X: 0.134322628
            Y: 0.201040253
            Z: 0.134322628
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
        Id: 12068859213516104629
        Name: "Capsule"
        Transform {
          Location {
            X: 5.06201172
            Y: 1.37194824
            Z: -1.24304199
          }
          Rotation {
            Pitch: 3.15349126
            Yaw: 89.9990311
            Roll: 11.2504988
          }
          Scale {
            X: 0.201039791
            Y: 0.134322852
            Z: 0.0896813795
          }
        }
        ParentId: 15673133818328271334
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8111180802293541984
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
      Id: 5171043325198665113
      Name: "Fantasy Gear Head 010"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Head_010"
      }
    }
    Assets {
      Id: 8111180802293541984
      Name: "Pipe - Quarter Wedge Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_pipe_wedge_003"
      }
    }
    Assets {
      Id: 10262225396143285161
      Name: "Shield 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_shield_001"
      }
    }
    Assets {
      Id: 1024134866532057554
      Name: "Fantasy Gauntlet Hand 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_gauntlet_hand_001"
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Hemisphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 18367172901088327762
      Name: "Pipe - Half Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half-pipe_003"
      }
    }
    Assets {
      Id: 14850889699687519085
      Name: "Cone - Truncated Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_concave_001"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
