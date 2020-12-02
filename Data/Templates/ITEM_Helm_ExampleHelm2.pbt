Assets {
  Id: 1054608940502046058
  Name: "ITEM_Helm_ExampleHelm2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1103300475510269383
      Objects {
        Id: 1103300475510269383
        Name: "ITEM_Helm_ExampleHelm2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4649353316498909807
        ChildIds: 16882561981336380388
        ChildIds: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Promised Retribution Helm"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 172872068158624424
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Helmet"
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
        Id: 16882561981336380388
        Name: "Stats"
        Transform {
          Location {
            X: -23.6889343
            Y: -79.6553726
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1103300475510269383
        ChildIds: 14246782963709987599
        ChildIds: 13313672236903112115
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
        Id: 14246782963709987599
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
        ParentId: 16882561981336380388
        ChildIds: 2019960882352121287
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
        Id: 2019960882352121287
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
        ParentId: 14246782963709987599
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 8
          }
          Overrides {
            Name: "cs:Max"
            Int: 30
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
        Id: 13313672236903112115
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
        ParentId: 16882561981336380388
        ChildIds: 16570282261306677444
        ChildIds: 6203442185530104891
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
        Id: 16570282261306677444
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
        ParentId: 13313672236903112115
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
        Id: 6203442185530104891
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
        ParentId: 13313672236903112115
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
        ChildIds: 12060041166472824092
        ChildIds: 2381207114849797978
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
        Id: 12060041166472824092
        Name: "Armour Set 2 Helm"
        Transform {
          Location {
            X: -3.81187238e-06
            Y: 1.46779129e-07
          }
          Rotation {
            Yaw: -2.20510864
          }
          Scale {
            X: 1.16387939
            Y: 1.16387939
            Z: 1.16387939
          }
        }
        ParentId: 15673133818328271334
        ChildIds: 3960971981189418355
        ChildIds: 14589606594850297820
        ChildIds: 758403938967175721
        ChildIds: 18076470233321103550
        ChildIds: 4001977864487757264
        ChildIds: 12376491566555482564
        ChildIds: 428584635754261826
        ChildIds: 17003989603459824721
        ChildIds: 8566055699367347815
        ChildIds: 13841003993934907149
        ChildIds: 6955569558785571823
        ChildIds: 11717449252297959778
        ChildIds: 6144343279736664159
        ChildIds: 17164023110832604250
        ChildIds: 15262560508234534647
        ChildIds: 8423496394894588428
        ChildIds: 7145459551399658113
        ChildIds: 7078226069999986
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
        Id: 3960971981189418355
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620072149
            Y: 6.3263
            Z: 11.7141085
          }
          Rotation {
            Pitch: 0.000819622655
            Yaw: 0.000637814228
            Roll: -80.0543213
          }
          Scale {
            X: 0.258632213
            Y: 0.691152692
            Z: 0.183682203
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 14589606594850297820
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620063767
            Y: 10.7943163
            Z: 9.51037
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -179.999893
            Roll: 174.19725
          }
          Scale {
            X: 1.00000179
            Y: 3.17490458
            Z: 0.55211246
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 758403938967175721
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.062010292
            Y: 0.746951044
            Z: 5.39184523
          }
          Rotation {
            Pitch: 32.1797256
            Yaw: 90.0000763
            Roll: 3.22794731e-05
          }
          Scale {
            X: 0.281180888
            Y: 0.198164061
            Z: 0.281181067
          }
        }
        ParentId: 12060041166472824092
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
        Id: 18076470233321103550
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0618914
            Y: -5.77008057
            Z: -0.147015452
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 0.000254496263
            Roll: 30.3390942
          }
          Scale {
            X: 0.182196945
            Y: 0.22628136
            Z: 0.092492722
          }
        }
        ParentId: 12060041166472824092
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
        Id: 4001977864487757264
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620095395
            Y: 3.27405071
            Z: 5.3918438
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
        ParentId: 12060041166472824092
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
        Id: 12376491566555482564
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620112084
            Y: -4.82738829
            Z: 8.71263409
          }
          Rotation {
            Pitch: -1.45809937
            Yaw: 178.686066
            Roll: -48.1385193
          }
          Scale {
            X: 0.259273589
            Y: 0.623250842
            Z: 0.179476514
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
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
        Id: 428584635754261826
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620104298
            Y: 1.27099824
            Z: 4.07597303
          }
          Rotation {
            Yaw: 1.37851557e-05
            Roll: -70.5429077
          }
          Scale {
            X: 0.215902567
            Y: 0.23193568
            Z: 0.589745
          }
        }
        ParentId: 12060041166472824092
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
        Id: 17003989603459824721
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620065
            Y: 4.57605886
            Z: 17.2432537
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -179.999893
            Roll: -122.799225
          }
          Scale {
            X: 0.636205435
            Y: 1.40295112
            Z: 1.33975554
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 8566055699367347815
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.062013153
            Y: -3.47442722
            Z: -1.78144658
          }
          Rotation {
            Pitch: -15.6906433
            Yaw: -89.9995422
            Roll: -0.000183105469
          }
          Scale {
            X: 0.341650575
            Y: 0.2200232
            Z: 0.21405609
          }
        }
        ParentId: 12060041166472824092
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 13841003993934907149
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.062012881
            Y: -4.96209621
            Z: 1.41400409
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 0.000254496146
            Roll: 30.3391495
          }
          Scale {
            X: 0.182196945
            Y: 0.22628136
            Z: 0.092492722
          }
        }
        ParentId: 12060041166472824092
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 6955569558785571823
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.062010102
            Y: 0.746951461
            Z: 6.23854
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
        ParentId: 12060041166472824092
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 11717449252297959778
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620080046
            Y: 15.2152691
            Z: -3.67589593
          }
          Rotation {
            Pitch: 8.19622655e-05
            Yaw: -6.10351563e-05
            Roll: -13.7395325
          }
          Scale {
            X: 0.733813
            Y: 1.50730097
            Z: 0.552112162
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 6144343279736664159
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620077215
            Y: 13.666626
            Z: -0.332526535
          }
          Rotation {
            Pitch: 8.19622655e-05
            Yaw: -6.10351563e-05
            Roll: -13.7393494
          }
          Scale {
            X: 0.682210743
            Y: 1.89909387
            Z: 0.552112341
          }
        }
        ParentId: 12060041166472824092
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.98
              G: 0.146999985
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.789999962
              G: 0.674900711
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
        Id: 17164023110832604250
        Name: "Hemisphere"
        Transform {
          Location {
            X: 0.0620110184
            Y: 2.73638892
            Z: -0.515428
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 1.00618863e-05
            Roll: -164.159973
          }
          Scale {
            X: 0.204710349
            Y: 0.424032569
            Z: 0.358127028
          }
        }
        ParentId: 12060041166472824092
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
        Id: 15262560508234534647
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.0620133169
            Y: -3.00750899
            Z: -3.13572526
          }
          Rotation {
            Pitch: -15.6906433
            Yaw: -89.9995422
            Roll: -0.000183105469
          }
          Scale {
            X: 0.342554599
            Y: 0.220023394
            Z: 0.214056104
          }
        }
        ParentId: 12060041166472824092
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
        Id: 8423496394894588428
        Name: "Capsule"
        Transform {
          Location {
            X: 0.062005721
            Y: 13.4752245
            Z: 8.86029911
          }
          Rotation {
            Pitch: 17.5232391
            Yaw: -89.9998169
            Roll: 0.950537086
          }
          Scale {
            X: 0.213331491
            Y: 0.156294525
            Z: 0.138970956
          }
        }
        ParentId: 12060041166472824092
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 8447054348777426482
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
        Id: 7145459551399658113
        Name: "Capsule"
        Transform {
          Location {
            X: 0.0620090216
            Y: 11.8021832
            Z: -3.67589402
          }
          Rotation {
            Pitch: 8.19622655e-05
            Yaw: -6.10351563e-05
            Roll: -13.7395935
          }
          Scale {
            X: 0.733813
            Y: 1.50730097
            Z: 0.552112162
          }
        }
        ParentId: 12060041166472824092
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
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
        Id: 7078226069999986
        Name: "Pipe - Half Thick"
        Transform {
          Location {
            X: 0.062013153
            Y: -3.47442722
            Z: -1.78144658
          }
          Rotation {
            Pitch: -15.6906433
            Yaw: -89.9995422
            Roll: -0.000183105469
          }
          Scale {
            X: 0.357174635
            Y: 0.119735017
            Z: 0.214056253
          }
        }
        ParentId: 12060041166472824092
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
        Id: 2381207114849797978
        Name: "Basic Projectile Trail VFX"
        Transform {
          Location {
            X: -0.416078568
            Y: -10.8049793
            Z: 28.101059
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15673133818328271334
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.976887345
              G: 0.99
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 22.6132698
          }
          Overrides {
            Name: "bp:ColorB"
            Color {
            }
          }
          Overrides {
            Name: "bp:ColorC"
            Color {
              R: 1
              G: 1
              B: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.362086594
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 17977280587505271142
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
    }
    Assets {
      Id: 172872068158624424
      Name: "Fantasy Gear Head 003"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Head_004"
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
      Id: 10283743880838515553
      Name: "Gem - Baguette Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_baguette_polished_001"
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
      Id: 3702191406046426907
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 8447054348777426482
      Name: "Diamond - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_hq_001"
      }
    }
    Assets {
      Id: 17977280587505271142
      Name: "Basic Projectile Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_basic_projectile_trail"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
