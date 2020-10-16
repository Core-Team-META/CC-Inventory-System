Assets {
  Id: 857123357129956019
  Name: "Armour Set 2 Male Mannequin"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15284010473359952955
      Objects {
        Id: 15284010473359952955
        Name: "Armour Set 2 Male Mannequin"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1959546913460571814
        ChildIds: 8738536091180098743
        ChildIds: 1522953886869189639
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
        Id: 1959546913460571814
        Name: "readme"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.9999771
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15284010473359952955
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 2364507288000951303
          }
        }
      }
      Objects {
        Id: 8738536091180098743
        Name: "costumeTrigger"
        Transform {
          Location {
            Y: 1.52587891e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15284010473359952955
        ChildIds: 6483172770542117037
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Wear"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 6483172770542117037
        Name: "attach_costume_script"
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
        ParentId: 8738536091180098743
        ChildIds: 16506872053813932613
        ChildIds: 391751543016626074
        ChildIds: 9918342193148698888
        ChildIds: 7206777408844820420
        ChildIds: 5592534572032270767
        ChildIds: 12854736800101730579
        ChildIds: 5070873112874126974
        ChildIds: 15683091160826577420
        ChildIds: 6501220143130881715
        ChildIds: 13682783396840056934
        ChildIds: 8040400740456997652
        ChildIds: 10420409164311542943
        ChildIds: 17024060975885803868
        ChildIds: 18437736887019246295
        ChildIds: 15669293927530235448
        ChildIds: 9423070496122815934
        ChildIds: 6315439839431160227
        ChildIds: 548375052548327282
        ChildIds: 10740748243720549962
        ChildIds: 79599409895057431
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 8738536091180098743
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 224233404326317515
          }
        }
      }
      Objects {
        Id: 16506872053813932613
        Name: "root"
        Transform {
          Location {
            X: -2.28881836e-05
            Y: -1.52587891e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        UnregisteredParameters {
        }
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
        Id: 391751543016626074
        Name: "head"
        Transform {
          Location {
            X: -3.804
            Y: 0.062
            Z: 190.154
          }
          Rotation {
            Pitch: -9.935
            Yaw: 0.000120403849
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 2554155680795622530
        UnregisteredParameters {
        }
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
        Id: 2554155680795622530
        Name: "sample_costume_head"
        Transform {
          Location {
            Y: -1.1137231e-06
            Z: 3.07180572
          }
          Rotation {
            Pitch: -2.04905664e-05
            Yaw: -90.0000839
            Roll: -9.93501377
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 391751543016626074
        ChildIds: 3119997237834863482
        ChildIds: 1169115722467000968
        ChildIds: 4823061130560586086
        ChildIds: 8170670177516478903
        ChildIds: 11526528910149792169
        ChildIds: 8310610210429048730
        ChildIds: 13615430550194444910
        ChildIds: 16687042940896442233
        ChildIds: 4473205131557809065
        ChildIds: 5857535118015140806
        ChildIds: 9353586244012834918
        ChildIds: 3004154416061619537
        ChildIds: 12424362518133238084
        ChildIds: 4272678847982413512
        ChildIds: 5490160396407585337
        ChildIds: 8393742725099860804
        ChildIds: 15502621925748171194
        ChildIds: 7500973562354445902
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
        Id: 3119997237834863482
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
        ParentId: 2554155680795622530
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
        Id: 1169115722467000968
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
        ParentId: 2554155680795622530
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
        Id: 4823061130560586086
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
        ParentId: 2554155680795622530
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
        Id: 8170670177516478903
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
        ParentId: 2554155680795622530
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
        Id: 11526528910149792169
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
        ParentId: 2554155680795622530
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
        Id: 8310610210429048730
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
        ParentId: 2554155680795622530
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
        Id: 13615430550194444910
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
        ParentId: 2554155680795622530
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
        Id: 16687042940896442233
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
        ParentId: 2554155680795622530
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
        Id: 4473205131557809065
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
        ParentId: 2554155680795622530
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
        Id: 5857535118015140806
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
        ParentId: 2554155680795622530
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
        Id: 9353586244012834918
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
        ParentId: 2554155680795622530
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
        Id: 3004154416061619537
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
        ParentId: 2554155680795622530
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
        Id: 12424362518133238084
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
        ParentId: 2554155680795622530
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
        Id: 4272678847982413512
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
        ParentId: 2554155680795622530
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
        Id: 5490160396407585337
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
        ParentId: 2554155680795622530
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
        Id: 8393742725099860804
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
        ParentId: 2554155680795622530
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
        Id: 15502621925748171194
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
        ParentId: 2554155680795622530
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
        Id: 7500973562354445902
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
        ParentId: 2554155680795622530
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
        Id: 9918342193148698888
        Name: "neck"
        Transform {
          Location {
            X: -5.3269
            Y: -3.83257866e-05
            Z: 181.107193
          }
          Rotation {
            Pitch: -9.935
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 15772126938065950424
        UnregisteredParameters {
        }
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
        Id: 15772126938065950424
        Name: "sample_costume_neck"
        Transform {
          Location {
            X: 2.0702908
            Y: 0.0620346069
            Z: 0.0790780261
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -89.9999237
            Roll: -9.93498707
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9918342193148698888
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
        Id: 7206777408844820420
        Name: "left_clavicle"
        Transform {
          Location {
            X: -3.12302399
            Y: -4.72303915
            Z: 172.333
          }
          Rotation {
            Yaw: -8.826
            Roll: 79.686
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 867268066977612528
        UnregisteredParameters {
        }
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
        Id: 867268066977612528
        Name: "sample_costume_left_clavicle"
        Transform {
          Location {
            X: -4.19482851
            Y: -3.94941044
            Z: -9.00021935
          }
          Rotation {
            Pitch: 42.300106
            Yaw: 31.1053791
            Roll: -6.05925846
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7206777408844820420
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
        Id: 5592534572032270767
        Name: "left_shoulder"
        Transform {
          Location {
            X: -6.0573
            Y: -23.619
            Z: 168.666
          }
          Rotation {
            Pitch: -1.64801025
            Yaw: -3.05700684
            Roll: 30.111
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 994683587293030804
        UnregisteredParameters {
        }
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
        Id: 994683587293030804
        Name: "sample_costume_left_shoulder"
        Transform {
          Location {
            X: 0.607562542
            Y: 2.0631218
            Z: -17.8292599
          }
          Rotation {
            Pitch: -20.8267822
            Yaw: -87.837
            Roll: -7.39919376
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5592534572032270767
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
        Id: 12854736800101730579
        Name: "left_elbow"
        Transform {
          Location {
            X: -7.6906
            Y: -39.4378
            Z: 141.289
          }
          Rotation {
            Pitch: 18.42
            Yaw: 9.028
            Roll: 31.908
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 5293095426140194537
        UnregisteredParameters {
        }
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
        Id: 5293095426140194537
        Name: "sample_costume_left_elbow"
        Transform {
          Location {
            X: 1.69237256
            Y: 0.209243059
            Z: -16.638546
          }
          Rotation {
            Pitch: -17.5584412
            Yaw: -99.1899414
            Roll: 6.80496502
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12854736800101730579
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
        Id: 5070873112874126974
        Name: "left_wrist"
        Transform {
          Location {
            X: 1.9377
            Y: -52.7219
            Z: 118.995
          }
          Rotation {
            Pitch: 13.938
            Yaw: 10.197
            Roll: 27.325
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 8415722996479522627
        UnregisteredParameters {
        }
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
        Id: 8415722996479522627
        Name: "sample_costume_left_wrist"
        Transform {
          Location {
            X: 3.96458626
            Y: -0.262760401
            Z: -10.0289917
          }
          Rotation {
            Pitch: 5.90484142
            Yaw: 88.613533
            Roll: 19.0727863
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5070873112874126974
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
        Id: 15683091160826577420
        Name: "right_clavicle"
        Transform {
          Location {
            X: -3.12302399
            Y: 4.72296047
            Z: 172.333
          }
          Rotation {
            Yaw: 8.826
            Roll: -79.6860046
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 1134381753014410017
        UnregisteredParameters {
        }
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
        Id: 1134381753014410017
        Name: "sample_costume_right_clavicle"
        Transform {
          Location {
            X: -5.46520233
            Y: 3.92912865
            Z: -7.39914513
          }
          Rotation {
            Pitch: 39.5191574
            Yaw: -43.3053589
            Roll: -12.0955505
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15683091160826577420
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
        Id: 6501220143130881715
        Name: "right_shoulder"
        Transform {
          Location {
            X: -6.0573
            Y: 23.619
            Z: 168.666
          }
          Rotation {
            Pitch: 1.647
            Yaw: 3.057
            Roll: -30.1109924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 13653655255920272407
        UnregisteredParameters {
        }
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
        Id: 13653655255920272407
        Name: "sample_costume_right_shoulder"
        Transform {
          Location {
            X: 0.237906039
            Y: -2.08449459
            Z: -17.7208977
          }
          Rotation {
            Pitch: 23.3086281
            Yaw: -92.9229736
            Roll: -4.4275732
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6501220143130881715
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
        Id: 13682783396840056934
        Name: "right_elbow"
        Transform {
          Location {
            X: -7.6906
            Y: 41.745575
            Z: 141.289
          }
          Rotation {
            Pitch: 18.42
            Yaw: -9.02801514
            Roll: -31.9079895
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 16400065349845384670
        UnregisteredParameters {
        }
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
        Id: 16400065349845384670
        Name: "sample_costume_right_elbow"
        Transform {
          Location {
            X: 0.437453032
            Y: 0.887064
            Z: -19.4003372
          }
          Rotation {
            Pitch: 16.7235813
            Yaw: -84.1420212
            Roll: 12.1204176
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13682783396840056934
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
        Id: 8040400740456997652
        Name: "right_wrist"
        Transform {
          Location {
            X: 1.9377
            Y: 52.7219
            Z: 118.995697
          }
          Rotation {
            Pitch: 13.938
            Yaw: -10.196991
            Roll: -27.3250122
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 5630522148062247132
        UnregisteredParameters {
        }
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
        Id: 5630522148062247132
        Name: "sample_costume_right_wrist"
        Transform {
          Location {
            X: 0.117823154
            Y: 2.50598383
            Z: -12.2136946
          }
          Rotation {
            Pitch: 5.48273611
            Yaw: -85.4166641
            Roll: 9.23236
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8040400740456997652
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
        Id: 10420409164311542943
        Name: "upper_spine"
        Transform {
          Location {
            X: -0.51
            Y: -3.77893448e-05
            Z: 161.986893
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 17828491741044441295
        UnregisteredParameters {
        }
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
        Id: 17828491741044441295
        Name: "sample_costume_upper_spine"
        Transform {
          Location {
            X: -2.15376496
            Y: 2.69584098e-06
            Z: -12.250104
          }
          Rotation {
            Yaw: -90.000061
            Roll: 7.51320404e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10420409164311542943
        ChildIds: 1698515684737977941
        ChildIds: 7518385502920962488
        ChildIds: 2783075493571702594
        ChildIds: 5854928318239464304
        ChildIds: 3556106416729058873
        ChildIds: 10872879083185113859
        ChildIds: 3625613247048990540
        ChildIds: 292187616537751604
        ChildIds: 10360326029204126336
        ChildIds: 3984645947564069210
        ChildIds: 12252878437415445594
        ChildIds: 15038903503003230520
        ChildIds: 14668198587350158773
        ChildIds: 5219258282017363098
        ChildIds: 10460849906230919884
        ChildIds: 7422492386162179174
        ChildIds: 8806291994445639673
        ChildIds: 2075643359835182067
        ChildIds: 1924868897685628050
        ChildIds: 1496893204905418030
        ChildIds: 2524460789723530189
        ChildIds: 18346451150957129690
        ChildIds: 14492678904081479497
        ChildIds: 13070280038289932613
        ChildIds: 1175404934102389573
        ChildIds: 10965233922119149456
        ChildIds: 10943209563116850569
        ChildIds: 12245804492115537523
        ChildIds: 2228407760141012661
        ChildIds: 1186003592145291557
        ChildIds: 15327436009012611780
        ChildIds: 12157382082851400389
        ChildIds: 9986978216021221955
        ChildIds: 12999651940018510028
        ChildIds: 10480075247662810837
        ChildIds: 11530546541299813080
        ChildIds: 9555774736603624177
        ChildIds: 12479992753196422522
        ChildIds: 10352694283096655681
        ChildIds: 966616604882993845
        ChildIds: 174187494198525888
        ChildIds: 14639353631490543947
        ChildIds: 5238604516261594332
        ChildIds: 8308294606795771599
        ChildIds: 2285471849750353899
        ChildIds: 14476007760984742017
        ChildIds: 15558131447484102399
        ChildIds: 5412795589733763888
        ChildIds: 730491946744940945
        ChildIds: 16490009794154172882
        ChildIds: 14694738638415992264
        ChildIds: 6319351587809123571
        ChildIds: 3123473376353723209
        ChildIds: 14445358771679479432
        ChildIds: 5421031863429126801
        ChildIds: 6119996203209774643
        ChildIds: 14920667263179206279
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
        Id: 1698515684737977941
        Name: "Capsule"
        Transform {
          Location {
            X: 1.9860363e-06
            Y: -3.70227051
            Z: 14.3337708
          }
          Rotation {
            Pitch: 67.4998398
            Yaw: -179.999878
            Roll: -179.999954
          }
          Scale {
            X: 0.425005317
            Y: 0.34231475
            Z: 0.0954765826
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 7518385502920962488
        Name: "Capsule"
        Transform {
          Location {
            X: 1.9860363e-06
            Y: -3.70227051
            Z: 14.3337708
          }
          Rotation {
            Pitch: -67.4996948
            Yaw: -179.999878
            Roll: 179.999893
          }
          Scale {
            X: 0.425005317
            Y: 0.34231475
            Z: 0.0954765826
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 2783075493571702594
        Name: "Capsule"
        Transform {
          Location {
            X: 1.4275829e-06
            Y: -2.66125488
            Z: 22.375946
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 3.30239885e-07
            Roll: 15.7933569
          }
          Scale {
            X: 0.274687409
            Y: 0.282152414
            Z: 0.101484805
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 5854928318239464304
        Name: "Capsule"
        Transform {
          Location {
            X: 5.00000143
            Y: -2.48498273
            Z: 19.411377
          }
          Rotation {
            Pitch: 73.4903336
            Yaw: 89.9981461
            Roll: 83.2915878
          }
          Scale {
            X: 1.48378849
            Y: 1.52411306
            Z: 0.926400304
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12224753716253082240
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
        Id: 3556106416729058873
        Name: "Capsule"
        Transform {
          Location {
            X: -4.99999857
            Y: -2.4848659
            Z: 19.411377
          }
          Rotation {
            Pitch: -73.491
            Yaw: -89.9989
            Roll: 83.2926941
          }
          Scale {
            X: 1.48378849
            Y: 1.52411306
            Z: 0.926400304
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12224753716253082240
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
        Id: 10872879083185113859
        Name: "Capsule"
        Transform {
          Location {
            X: -2.96330791e-06
            Y: 5.52398682
            Z: 9.13249207
          }
          Rotation {
            Pitch: 2.73207552e-05
            Roll: -24.0176697
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 3625613247048990540
        Name: "Capsule"
        Transform {
          Location {
            X: -1.15686089e-06
            Y: 2.15655518
            Z: -4.8289032
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 3.45825611e-05
            Roll: 26.4947548
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 292187616537751604
        Name: "Capsule"
        Transform {
          Location {
            X: -3.86333795e-06
            Y: 7.20178223
            Z: 0.663513184
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 1.49337966e-05
            Roll: -3.8404541
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3043796555406523921
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
        Id: 10360326029204126336
        Name: "Capsule"
        Transform {
          Location {
            X: -2.96329176e-06
            Y: 5.52398682
            Z: -5.05879211
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 2.18275602e-07
            Roll: 14.5404043
          }
          Scale {
            X: 0.329987
            Y: 0.274198294
            Z: 0.146635637
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5944393796542654307
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
        Id: 3984645947564069210
        Name: "Capsule"
        Transform {
          Location {
            X: -14.999999
            Y: -2.64649248
            Z: 2.534729
          }
          Rotation {
            Pitch: 24.7494698
            Yaw: 91.7737961
            Roll: -168.120651
          }
          Scale {
            X: 0.196970165
            Y: 0.0893427
            Z: 0.267642707
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 12252878437415445594
        Name: "Capsule"
        Transform {
          Location {
            X: -3.14767772e-06
            Y: 5.86773682
            Z: -19.0688477
          }
          Rotation {
            Pitch: -0.000122070313
            Yaw: -0.000671386719
            Roll: 7.61460161
          }
          Scale {
            X: 0.406893939
            Y: 1.08786368
            Z: 0.110171452
          }
        }
        ParentId: 17828491741044441295
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
            Id: 8081278958736551803
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
        Id: 15038903503003230520
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123802e-06
            Y: -12.2310791
            Z: 21.1357574
          }
          Rotation {
            Pitch: -24.7673645
            Yaw: 89.9991913
            Roll: -179.998901
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 14668198587350158773
        Name: "Capsule"
        Transform {
          Location {
            X: 8.66616574e-06
            Y: -16.1549072
            Z: 1.95840454
          }
          Rotation {
            Pitch: 14.9510307
            Yaw: 89.9992218
            Roll: -179.999405
          }
          Scale {
            X: 0.0838445
            Y: 0.211037606
            Z: 0.250364095
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 5219258282017363098
        Name: "Capsule"
        Transform {
          Location {
            X: 4.53516719e-07
            Y: -0.845397949
            Z: -8.73544312
          }
          Rotation {
            Pitch: 4.51451588
            Yaw: 89.9995041
            Roll: -179.999222
          }
          Scale {
            X: 0.280093342
            Y: 0.345547289
            Z: 0.267643034
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 10460849906230919884
        Name: "Capsule"
        Transform {
          Location {
            X: -19.9999981
            Y: -2.3362534
            Z: 15.2632294
          }
          Rotation {
            Pitch: 6.14717e-05
            Yaw: -90
            Roll: 78.7498474
          }
          Scale {
            X: 0.214946479
            Y: 0.214946479
            Z: 0.0716488212
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 7422492386162179174
        Name: "Capsule"
        Transform {
          Location {
            X: 20.0000019
            Y: -2.33623195
            Z: 15.2632294
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: -89.999939
            Roll: -78.7498169
          }
          Scale {
            X: 0.214946479
            Y: 0.214946479
            Z: 0.0716488212
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 8806291994445639673
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999933
            Y: 11.9030228
            Z: 16.2026825
          }
          Rotation {
            Pitch: -21.3103333
            Yaw: -36.6815796
            Roll: -89.6750183
          }
          Scale {
            X: 0.121119931
            Y: 0.078801021
            Z: 0.221076369
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 2075643359835182067
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 11.9030151
            Z: 16.2026825
          }
          Rotation {
            Pitch: 21.3103943
            Yaw: 36.6818161
            Roll: -89.6750183
          }
          Scale {
            X: -0.121034779
            Y: 0.078801021
            Z: 0.221076369
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 1924868897685628050
        Name: "Capsule"
        Transform {
          Location {
            X: 15.000001
            Y: -2.64647627
            Z: 2.534729
          }
          Rotation {
            Pitch: 24.7492447
            Yaw: 88.2250443
            Roll: 168.121399
          }
          Scale {
            X: 0.196970165
            Y: 0.0893427
            Z: 0.267642707
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 1496893204905418030
        Name: "Capsule"
        Transform {
          Location {
            X: 2.76756418e-06
            Y: -5.15911865
            Z: 2.38693237
          }
          Rotation {
            Pitch: 0.000532754697
            Yaw: 0.000677446194
            Roll: 164.362747
          }
          Scale {
            X: 0.360787779
            Y: 0.383333802
            Z: 0.325472713
          }
        }
        ParentId: 17828491741044441295
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
        Id: 2524460789723530189
        Name: "Group"
        Transform {
          Location {
            X: 0.122552313
            Y: 11.7094116
            Z: -14.7367706
          }
          Rotation {
            Pitch: -6.10351563e-05
            Yaw: -179.999893
            Roll: 153.691589
          }
          Scale {
            X: 0.957703114
            Y: 0.957703114
            Z: 0.957703114
          }
        }
        ParentId: 17828491741044441295
        ChildIds: 5928401438046797812
        ChildIds: 4948786288595068754
        ChildIds: 17739012208583301676
        ChildIds: 1195247523100572760
        ChildIds: 8345128679330206263
        ChildIds: 18319225971414320175
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
        Id: 5928401438046797812
        Name: "Capsule"
        Transform {
          Location {
            X: -15.1228027
            Y: -7.5581665
          }
          Rotation {
            Pitch: 5.12325621
            Yaw: 78.7042236
            Roll: -91.0217
          }
          Scale {
            X: -0.234686419
            Y: 0.0328887887
            Z: 0.137147561
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 4948786288595068754
        Name: "Capsule"
        Transform {
          Location {
            X: 7.34179688
            Y: 5.04260254
            Z: 1.15206909
          }
          Rotation {
            Pitch: -2.89944243
            Yaw: -33.6399345
            Roll: -94.3471909
          }
          Scale {
            X: -0.137052566
            Y: 0.0328888632
            Z: 0.137148932
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 17739012208583301676
        Name: "Capsule"
        Transform {
          Location {
            X: -6.97375774
            Y: 5.04259872
            Z: 1.15206909
          }
          Rotation {
            Pitch: 2.89950395
            Yaw: 33.6400871
            Roll: -94.347229
          }
          Scale {
            X: 0.137148976
            Y: 0.0328888632
            Z: 0.137148932
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 1195247523100572760
        Name: "Capsule"
        Transform {
          Location {
            X: -0.122805431
            Y: 5.03106689
            Z: 3.88168335
          }
          Rotation {
            Pitch: -0.000427246094
            Yaw: -0.000640869141
            Roll: -13.678009
          }
          Scale {
            X: 0.0903069228
            Y: 0.0903069228
            Z: 0.060204614
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10830976032868219508
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
        Id: 8345128679330206263
        Name: "Capsule"
        Transform {
          Location {
            X: -6.90330601
            Y: 5.60136795
            Z: -3.4654026
          }
          Rotation {
            Pitch: 21.3858
            Yaw: -89.9999847
            Roll: 3.30086186e-05
          }
          Scale {
            X: 0.0367977098
            Y: 0.0237622876
            Z: 0.0126103889
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 17749268126197611831
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
        Id: 18319225971414320175
        Name: "Capsule"
        Transform {
          Location {
            X: 14.8772011
            Y: -7.5581584
            Z: 2.19427532e-11
          }
          Rotation {
            Pitch: -5.12323
            Yaw: -78.7041626
            Roll: -91.0217285
          }
          Scale {
            X: 0.234851509
            Y: 0.0328887887
            Z: 0.137147561
          }
        }
        ParentId: 2524460789723530189
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 18346451150957129690
        Name: "Capsule"
        Transform {
          Location {
            X: -7.47448041e-07
            Y: 1.39337158
            Z: -12.9682007
          }
          Rotation {
            Pitch: 0.000232226419
            Yaw: 0.000847425195
            Roll: -170.637329
          }
          Scale {
            X: 0.360787362
            Y: 0.3426404
            Z: 0.0474735275
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 14492678904081479497
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 13.4956055
            Z: 15.9344177
          }
          Rotation {
            Pitch: 10.0605536
            Yaw: 36.6171684
            Roll: -89.6924438
          }
          Scale {
            X: -0.0777735785
            Y: 0.0506353416
            Z: 0.142057508
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 13070280038289932613
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999924
            Y: 13.5011673
            Z: 15.9344177
          }
          Rotation {
            Pitch: -10.0604858
            Yaw: -36.6170654
            Roll: -89.6924438
          }
          Scale {
            X: 0.0778282732
            Y: 0.0506353416
            Z: 0.142057508
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 1175404934102389573
        Name: "Capsule"
        Transform {
          Location {
            X: -2.39913248e-07
            Y: 0.447265625
            Z: -16.4874115
          }
          Rotation {
            Pitch: 4.51451588
            Yaw: 89.9995499
            Roll: -179.999222
          }
          Scale {
            X: 0.304458976
            Y: 0.362330317
            Z: 0.035505943
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 10965233922119149456
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999943
            Y: 11.4567337
            Z: 14.505188
          }
          Rotation {
            Pitch: -21.3103333
            Yaw: -36.6815796
            Roll: -89.6749878
          }
          Scale {
            X: 0.133019462
            Y: 0.0865428746
            Z: 0.242796242
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 10943209563116850569
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 11.4497681
            Z: 14.505188
          }
          Rotation {
            Pitch: 21.3103943
            Yaw: 36.6817284
            Roll: -89.6750183
          }
          Scale {
            X: -0.132925943
            Y: 0.0865428746
            Z: 0.242796242
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 12245804492115537523
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123848e-06
            Y: -12.2310791
            Z: 20.6120148
          }
          Rotation {
            Pitch: -24.7673645
            Yaw: 89.9991226
            Roll: -179.998901
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 2228407760141012661
        Name: "Capsule"
        Transform {
          Location {
            X: 6.01993e-06
            Y: -11.2219849
            Z: 10.3700714
          }
          Rotation {
            Pitch: -11.0877075
            Yaw: 89.9990387
            Roll: -179.998978
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 1186003592145291557
        Name: "Capsule"
        Transform {
          Location {
            X: 5.95359552e-06
            Y: -11.0983276
            Z: 9.86116
          }
          Rotation {
            Pitch: -11.087677
            Yaw: 89.9989624
            Roll: -179.999023
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 15327436009012611780
        Name: "Capsule"
        Transform {
          Location {
            X: 6.49345657e-06
            Y: -12.1047363
            Z: 26.4110565
          }
          Rotation {
            Pitch: -38.7264404
            Yaw: 89.9989
            Roll: -179.998611
          }
          Scale {
            X: 0.161063477
            Y: 0.290591
            Z: 0.130641922
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 12157382082851400389
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123257e-06
            Y: -12.2310791
            Z: 25.9027863
          }
          Rotation {
            Pitch: -38.7264709
            Yaw: 89.998764
            Roll: -179.998581
          }
          Scale {
            X: 0.161063477
            Y: 0.290591
            Z: 0.130641922
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10167461486394223383
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
        Id: 9986978216021221955
        Name: "Capsule"
        Transform {
          Location {
            X: -5.71235114e-06
            Y: 10.6485596
            Z: 16.296875
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.999939
            Roll: 1.87017176e-05
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 12999651940018510028
        Name: "Capsule"
        Transform {
          Location {
            X: -6.8836448e-06
            Y: 12.8320313
            Z: 6.02261353
          }
          Rotation {
            Pitch: -50.6717224
            Yaw: 89.9997787
            Roll: 0.000153575136
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 10480075247662810837
        Name: "Capsule"
        Transform {
          Location {
            X: -5.71234887e-06
            Y: 10.6485596
            Z: 14.4649048
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.9999
            Roll: 2.0482832e-05
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 11530546541299813080
        Name: "Capsule"
        Transform {
          Location {
            X: -6.88364253e-06
            Y: 12.8320313
            Z: 4.19064331
          }
          Rotation {
            Pitch: -50.6716919
            Yaw: 89.9997864
            Roll: 0.000145492144
          }
          Scale {
            X: 0.317007333
            Y: 0.330431819
            Z: 0.801523447
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 9555774736603624177
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0002136
            Roll: -33.7504272
          }
          Scale {
            X: 0.313469023
            Y: 0.314911336
            Z: 0.208980173
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 12479992753196422522
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996262
            Roll: -33.7502136
          }
          Scale {
            X: 0.313469023
            Y: 0.314911336
            Z: 0.208980173
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 10352694283096655681
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 22.1968842
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.32313177
            Y: 0.324618489
            Z: 0.215421975
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 966616604882993845
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 22.5171661
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.32313177
            Y: 0.324618489
            Z: 0.215421975
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 174187494198525888
        Name: "Capsule"
        Transform {
          Location {
            X: 6.16732768e-06
            Y: -11.4967651
            Z: 15.5651093
          }
          Rotation {
            Pitch: -16.9969177
            Yaw: 89.9995651
            Roll: 8.21347858e-05
          }
          Scale {
            X: 0.341501117
            Y: 0.277092159
            Z: 1.26087022
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 14639353631490543947
        Name: "Capsule"
        Transform {
          Location {
            X: 5.64968059e-06
            Y: -10.5317993
            Z: 14.6509552
          }
          Rotation {
            Pitch: -16.9969482
            Yaw: 89.999588
            Roll: 8.48130949e-05
          }
          Scale {
            X: 0.361633807
            Y: 0.293427616
            Z: 1.33520246
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 5238604516261594332
        Name: "Capsule"
        Transform {
          Location {
            X: -5.7802913e-06
            Y: 10.7752075
            Z: 17.0439301
          }
          Rotation {
            Pitch: -6.3404541
            Yaw: 89.999794
          }
          Scale {
            X: 0.312140614
            Y: 0.330431789
            Z: 0.801523089
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 8308294606795771599
        Name: "Capsule"
        Transform {
          Location {
            X: -6.0165753e-06
            Y: 11.2156982
            Z: 5.11547852
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.9998779
            Roll: 2.49356217e-05
          }
          Scale {
            X: 0.341500312
            Y: 0.345026672
            Z: 0.801522851
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 2285471849750353899
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 24.2316589
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.313470066
            Y: 0.314913392
            Z: 0.16514498
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 14476007760984742017
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.911377
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.313470066
            Y: 0.314913392
            Z: 0.16514498
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 15558131447484102399
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 25.5677032
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.258919775
            Y: 0.260111094
            Z: 0.172613874
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 5412795589733763888
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 25.8879852
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.258919775
            Y: 0.260111094
            Z: 0.172613874
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 730491946744940945
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.241574913
            Y: 0.331965029
            Z: 0.208980128
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 16490009794154172882
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.241574913
            Y: 0.331965029
            Z: 0.208980128
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 14694738638415992264
        Name: "Capsule"
        Transform {
          Location {
            X: 5.00000572
            Y: -10.5252047
            Z: 15.2029572
          }
          Rotation {
            Pitch: -16.4620361
            Yaw: 89.9995193
            Roll: 8.19046327e-05
          }
          Scale {
            X: 0.368722528
            Y: 0.0548091233
            Z: 1.36137104
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 6319351587809123571
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999924
            Y: 13.5011673
            Z: 15.9344177
          }
          Rotation {
            Pitch: -10.0604858
            Yaw: -36.6169434
            Roll: -89.6924438
          }
          Scale {
            X: 0.0912363231
            Y: 0.0576231182
            Z: 0.129442379
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 3123473376353723209
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 13.4956055
            Z: 15.9344177
          }
          Rotation {
            Pitch: 10.0605536
            Yaw: 36.6171
            Roll: -89.6924438
          }
          Scale {
            X: -0.0911722
            Y: 0.0576231182
            Z: 0.129442379
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 267906990579783124
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
        Id: 14445358771679479432
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.307532907
            Y: 0.318170905
            Z: 0.208987877
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 5421031863429126801
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.307532907
            Y: 0.318170905
            Z: 0.208987877
          }
        }
        ParentId: 17828491741044441295
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
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 6119996203209774643
        Name: "Capsule"
        Transform {
          Location {
            X: -4.99999428
            Y: -10.5252104
            Z: 15.2029572
          }
          Rotation {
            Pitch: -16.4620361
            Yaw: 89.9995193
            Roll: 8.19046327e-05
          }
          Scale {
            X: 0.368722528
            Y: 0.0548091233
            Z: 1.36137104
          }
        }
        ParentId: 17828491741044441295
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
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 566098347886128093
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
        Id: 14920667263179206279
        Name: "Capsule"
        Transform {
          Location {
            X: 1.28502336e-06
            Y: -2.39544678
            Z: -4.92578125
          }
          Rotation {
            Pitch: 0.000532754697
            Yaw: 0.000677445671
            Roll: 164.362595
          }
          Scale {
            X: 0.378009647
            Y: 0.401630372
            Z: 0.0296932571
          }
        }
        ParentId: 17828491741044441295
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
        Id: 17024060975885803868
        Name: "lower_spine"
        Transform {
          Location {
            X: -0.51
            Y: -3.77893448e-05
            Z: 133.728897
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 8273323144649743266
        UnregisteredParameters {
        }
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
        Id: 8273323144649743266
        Name: "sample_costume_lower_spine"
        Transform {
          Location {
            X: -2.15373087
            Y: 2.69584098e-06
            Z: 13.8603392
          }
          Rotation {
            Yaw: -90.000061
            Roll: 7.51320476e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17024060975885803868
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
        Id: 18437736887019246295
        Name: "pelvis"
        Transform {
          Location {
            X: -0.51
            Y: -3.77893448e-05
            Z: 120.268
          }
          Rotation {
            Pitch: 7.51320767e-05
            Yaw: 7.17169532e-05
            Roll: -7.43053033e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 11281230172516403057
        UnregisteredParameters {
        }
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
        Id: 11281230172516403057
        Name: "sample_costume_pelvis"
        Transform {
          Location {
            X: -1.34034181
            Y: 0.632255673
            Z: -12.1604366
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -90.0000534
            Roll: 7.51320622e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18437736887019246295
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
        Id: 15669293927530235448
        Name: "left_hip"
        Transform {
          Location {
            X: -1.89601898
            Y: -10.4910393
            Z: 109.635
          }
          Rotation {
            Pitch: 3.17944598
            Yaw: 0.34948042
            Roll: 4.47926188
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 17876901598289815218
        UnregisteredParameters {
        }
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
        Id: 17876901598289815218
        Name: "sample_costume_left_hip"
        Transform {
          Location {
            X: 0.439108431
            Y: 0.151837021
            Z: -31.0134811
          }
          Rotation {
            Pitch: -8.11248779
            Yaw: -90.5565186
            Roll: 3.22938657
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15669293927530235448
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
        Id: 9423070496122815934
        Name: "left_knee"
        Transform {
          Location {
            X: -1.5118
            Y: -16.881
            Z: 59.698
          }
          Rotation {
            Pitch: -3.90987325
            Yaw: -3.62918282
            Roll: 4.28336143
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 4883813324800568017
        UnregisteredParameters {
        }
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
        Id: 4883813324800568017
        Name: "sample_costume_left_knee"
        Transform {
          Location {
            X: -3.53209901
            Y: 0.144981354
            Z: -22.607151
          }
          Rotation {
            Pitch: -0.605011
            Yaw: -86.619751
            Roll: -4.16293335
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9423070496122815934
        ChildIds: 11912520560625397098
        ChildIds: 453555538743850726
        ChildIds: 7909868029618993473
        ChildIds: 2472042575137850929
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
        Id: 11912520560625397098
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
        ParentId: 4883813324800568017
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
        Id: 453555538743850726
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
        ParentId: 4883813324800568017
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
        Id: 7909868029618993473
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
        ParentId: 4883813324800568017
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
        Id: 2472042575137850929
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
        ParentId: 4883813324800568017
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
        Id: 6315439839431160227
        Name: "left_ankle"
        Transform {
          Location {
            X: -8.11602
            Y: -23.0544
            Z: 11.4560013
          }
          Rotation {
            Pitch: -7.46754789
            Yaw: 0.615756929
            Roll: 1.07542
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 17928917036447843371
        UnregisteredParameters {
        }
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
        Id: 17928917036447843371
        Name: "sample_costume_left_ankle"
        Transform {
          Location {
            X: 9.9499588
            Y: 0.859696209
            Z: -5.19177341
          }
          Rotation {
            Pitch: -1.15539551
            Yaw: -90.6106567
            Roll: -7.45565796
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6315439839431160227
        ChildIds: 1837440587436471223
        ChildIds: 13594384390265575301
        ChildIds: 6097062797916965976
        ChildIds: 4009283930613947564
        ChildIds: 12375806408318539765
        ChildIds: 6124965685963120960
        ChildIds: 3017044642274154047
        ChildIds: 8704625462482705020
        ChildIds: 12292685158075672225
        ChildIds: 7429853741127229881
        ChildIds: 17475134631716016952
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
        Id: 1837440587436471223
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
        ParentId: 17928917036447843371
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
        Id: 13594384390265575301
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
        ParentId: 17928917036447843371
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
        Id: 6097062797916965976
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
        ParentId: 17928917036447843371
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
        Id: 4009283930613947564
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
        ParentId: 17928917036447843371
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
        Id: 12375806408318539765
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
        ParentId: 17928917036447843371
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
        Id: 6124965685963120960
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
        ParentId: 17928917036447843371
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
        Id: 3017044642274154047
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
        ParentId: 17928917036447843371
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
        Id: 8704625462482705020
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
        ParentId: 17928917036447843371
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
        Id: 12292685158075672225
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
        ParentId: 17928917036447843371
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
        Id: 7429853741127229881
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
        ParentId: 17928917036447843371
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
        Id: 17475134631716016952
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
        ParentId: 17928917036447843371
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
        Id: 548375052548327282
        Name: "right_hip"
        Transform {
          Location {
            X: -1.89602661
            Y: 10.490963
            Z: 109.635
          }
          Rotation {
            Pitch: 3.17958951
            Yaw: -0.349424213
            Roll: -4.4789567
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 11132170620947521378
        UnregisteredParameters {
        }
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
        Id: 11132170620947521378
        Name: "sample_costume_right_hip"
        Transform {
          Location {
            X: 0.445165187
            Y: 0.591258526
            Z: -30.8758068
          }
          Rotation {
            Pitch: 5.12727261
            Yaw: -89.6122742
            Roll: 3.21001148
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 548375052548327282
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
        Id: 10740748243720549962
        Name: "right_knee"
        Transform {
          Location {
            X: -1.5118
            Y: 16.881
            Z: 59.698
          }
          Rotation {
            Pitch: -3.90996885
            Yaw: 3.62911534
            Roll: -4.28348827
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 8380235652534706270
        UnregisteredParameters {
        }
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
        Id: 8380235652534706270
        Name: "sample_costume_right_knee"
        Transform {
          Location {
            X: -3.33056951
            Y: 1.00224245
            Z: -22.8054695
          }
          Rotation {
            Pitch: 2.06838608
            Yaw: -93.4865723
            Roll: -4.16549683
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10740748243720549962
        ChildIds: 964092034156248548
        ChildIds: 2185109209395589235
        ChildIds: 5269164896283073848
        ChildIds: 11801631400724761529
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
        Id: 964092034156248548
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.121789873
            Y: -0.781440139
            Z: -15.9362326
          }
          Rotation {
            Pitch: -78.8347168
            Yaw: 102.657272
            Roll: -14.0510864
          }
          Scale {
            X: 0.360381037
            Y: 0.252630442
            Z: 0.644284368
          }
        }
        ParentId: 8380235652534706270
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
        Id: 2185109209395589235
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.652944863
            Y: 2.18065929
            Z: -10.7821655
          }
          Rotation {
            Pitch: -2.14599609
            Yaw: 0.777846873
            Roll: -173.422913
          }
          Scale {
            X: 0.193244159
            Y: 0.252630472
            Z: 0.239933893
          }
        }
        ParentId: 8380235652534706270
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
        Id: 5269164896283073848
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.00481737172
            Y: 7.26781273
            Z: -21.4285851
          }
          Rotation {
            Pitch: -2.33215332
            Yaw: -1.68386841
            Roll: 167.674957
          }
          Scale {
            X: 0.1612418
            Y: 0.210795492
            Z: 0.14737767
          }
        }
        ParentId: 8380235652534706270
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
        Id: 11801631400724761529
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 0.121789977
            Y: -3.25977254
            Z: -15.9362316
          }
          Rotation {
            Pitch: -78.8366089
            Yaw: 102.659424
            Roll: -14.0518188
          }
          Scale {
            X: 0.360380858
            Y: 0.115825363
            Z: 0.644285
          }
        }
        ParentId: 8380235652534706270
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
        Id: 79599409895057431
        Name: "right_ankle"
        Transform {
          Location {
            X: -8.11602783
            Y: 23.0544
            Z: 11.4560013
          }
          Rotation {
            Pitch: -7.46794415
            Yaw: -0.616062045
            Roll: -1.07538462
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6483172770542117037
        ChildIds: 14170480576481964090
        UnregisteredParameters {
        }
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
        Id: 14170480576481964090
        Name: "sample_costume_right_ankle"
        Transform {
          Location {
            X: 9.93359852
            Y: 0.677615106
            Z: -5.22274542
          }
          Rotation {
            Pitch: 1.15539479
            Yaw: -89.3890381
            Roll: -7.45605469
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 79599409895057431
        ChildIds: 9216800136211328726
        ChildIds: 18289162845369291999
        ChildIds: 11067966000983371850
        ChildIds: 10245900560016845536
        ChildIds: 15493017818689901615
        ChildIds: 14223787669312745838
        ChildIds: 4112578151939264745
        ChildIds: 4305019087978313330
        ChildIds: 1026703143795655761
        ChildIds: 7746629491554022835
        ChildIds: 10517012604369587807
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
        Id: 9216800136211328726
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.09837747
            Y: 20.1570454
            Z: -2.7088387
          }
          Rotation {
            Pitch: -65.2730103
            Yaw: -87.1364746
            Roll: 177.550629
          }
          Scale {
            X: 0.0826881453
            Y: 0.548395753
            Z: 0.807826757
          }
        }
        ParentId: 14170480576481964090
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
        Id: 18289162845369291999
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.09839356
            Y: -8.84613
            Z: 0.874811053
          }
          Rotation {
            Pitch: -83.0944214
            Yaw: 84.9554901
            Roll: 3.86726356
          }
          Scale {
            X: 0.125617921
            Y: 0.359684378
            Z: 0.68178165
          }
        }
        ParentId: 14170480576481964090
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
        Id: 11067966000983371850
        Name: "Crescent - 03"
        Transform {
          Location {
            X: 0.631463826
            Y: 10.1088877
            Z: -3.47473764
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.9998779
            Roll: 9.81034646e-07
          }
          Scale {
            X: 0.3
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 14170480576481964090
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
        Id: 10245900560016845536
        Name: "Crescent - 03"
        Transform {
          Location {
            X: 0.631589115
            Y: 4.18658543
            Z: -3.47473907
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: 89.9999542
            Roll: 4.79193795e-06
          }
          Scale {
            X: 0.496637076
            Y: 0.2
            Z: 0.0419057496
          }
        }
        ParentId: 14170480576481964090
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
        Id: 15493017818689901615
        Name: "Thorn"
        Transform {
          Location {
            X: 0.838138461
            Y: -7.20373487
            Z: -1.29249167
          }
          Rotation {
            Pitch: -75.0064697
            Yaw: 90.0106125
            Roll: -0.00131225586
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 14170480576481964090
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
        Id: 14223787669312745838
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.09839058
            Y: -2.4172976
            Z: 4.87386799
          }
          Rotation {
            Pitch: -83.6258545
            Yaw: -84.5741882
            Roll: 173.436966
          }
          Scale {
            X: 0.133723795
            Y: 0.268933892
            Z: 0.685859144
          }
        }
        ParentId: 14170480576481964090
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
        Id: 4112578151939264745
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.09838307
            Y: 12.1074209
            Z: 6.86348104
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 2.44040621e-05
            Roll: 49.4373779
          }
          Scale {
            X: 0.102864183
            Y: 0.468306154
            Z: 0.287245631
          }
        }
        ParentId: 14170480576481964090
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
        Id: 4305019087978313330
        Name: "Thorn"
        Transform {
          Location {
            X: 0.83813107
            Y: 6.49572802
            Z: -1.57809973
          }
          Rotation {
            Pitch: -90
            Yaw: 90
            Roll: 0.000518798828
          }
          Scale {
            X: 0.484400332
            Y: 0.263557494
            Z: 0.235261261
          }
        }
        ParentId: 14170480576481964090
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
        Id: 1026703143795655761
        Name: "Thorn"
        Transform {
          Location {
            X: 0.83813709
            Y: -4.61431837
            Z: -1.29690206
          }
          Rotation {
            Pitch: -90
            Yaw: 90
            Roll: 0.000640869141
          }
          Scale {
            X: 0.689653695
            Y: 0.268731415
            Z: 0.336292952
          }
        }
        ParentId: 14170480576481964090
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
        Id: 7746629491554022835
        Name: "Thorn"
        Transform {
          Location {
            X: 0.838138
            Y: -6.44464
            Z: -1.92357028
          }
          Rotation {
            Pitch: -75.0066528
            Yaw: 90.0107117
            Roll: -0.00131225586
          }
          Scale {
            X: 0.689653456
            Y: 0.26872772
            Z: 0.344444603
          }
        }
        ParentId: 14170480576481964090
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
        Id: 10517012604369587807
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: 1.09839082
            Y: -2.41729784
            Z: 6.5762167
          }
          Rotation {
            Pitch: -83.6197205
            Yaw: -84.5677567
            Roll: 173.43634
          }
          Scale {
            X: 0.125617981
            Y: 0.252632231
            Z: 0.644285083
          }
        }
        ParentId: 14170480576481964090
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
        Id: 1522953886869189639
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
        ParentId: 15284010473359952955
        ChildIds: 10470130216335527457
        UnregisteredParameters {
        }
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
        Id: 10470130216335527457
        Name: "male_body_GEO"
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
        ParentId: 1522953886869189639
        ChildIds: 10660911793118929058
        ChildIds: 17809596970468426229
        ChildIds: 9346229589077092874
        ChildIds: 6040898867011555023
        ChildIds: 11631998495047539133
        ChildIds: 17092097083071224623
        ChildIds: 6965268181198887522
        ChildIds: 10368254107872498645
        ChildIds: 7039369158399760219
        ChildIds: 5467698295578015733
        ChildIds: 6124037488071012306
        ChildIds: 169048850431202935
        ChildIds: 16107977806191788421
        ChildIds: 10389427083616261315
        ChildIds: 10582636809161823695
        ChildIds: 15732806322245974677
        ChildIds: 918191834755600594
        ChildIds: 4266424831574612829
        ChildIds: 6302616721014474625
        ChildIds: 10574310535649613515
        ChildIds: 68271543795173856
        ChildIds: 6503761465773228244
        ChildIds: 13962798552639321114
        ChildIds: 9071864626046035584
        ChildIds: 8134415431526972635
        ChildIds: 8597607649367590776
        ChildIds: 17945033743352166429
        ChildIds: 8943911524145011014
        ChildIds: 6477235621191951777
        ChildIds: 16745874720473941050
        ChildIds: 12776455630197199788
        ChildIds: 18233206819962527825
        ChildIds: 14513095085592853208
        ChildIds: 3963195418221523105
        ChildIds: 339677721300491462
        ChildIds: 18180509558309957543
        ChildIds: 14067807728027533798
        ChildIds: 13614051417318935306
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10660911793118929058
        Name: "foot_l"
        Transform {
          Location {
            X: 4.42401075
            Y: -22.6887131
            Z: 4.23051071
          }
          Rotation {
            Pitch: 3.82162714
            Yaw: -89.9999084
            Roll: 7.8251152
          }
          Scale {
            X: 0.1395
            Y: 0.3055
            Z: 0.08134
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 17809596970468426229
        Name: "head_top"
        Transform {
          Location {
            X: -0.355
            Y: -2.08616257e-07
            Z: 198.199
          }
          Rotation {
            Yaw: -89.9999619
            Roll: -25.8629
          }
          Scale {
            X: 0.161
            Y: 0.2105
            Z: 0.2077
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 9346229589077092874
        Name: "head_bottom"
        Transform {
          Location {
            X: -0.458000183
            Y: -2.38418579e-07
            Z: 192.233
          }
          Rotation {
            Yaw: -89.9999466
            Roll: -40.5489845
          }
          Scale {
            X: 0.138
            Y: 0.16
            Z: 0.22954
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6040898867011555023
        Name: "nose"
        Transform {
          Location {
            X: 7.65399885
            Y: 4.29153442e-06
            Z: 193.414
          }
          Rotation {
            Yaw: -89.9999695
            Roll: -60.6029892
          }
          Scale {
            X: 0.0422
            Y: 0.05052
            Z: 0.06554
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 11631998495047539133
        Name: "neck"
        Transform {
          Location {
            X: -4.958
            Y: -2.86102295e-06
            Z: 181.759
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 12.5190945
          }
          Scale {
            X: 0.14298
            Y: 0.14298
            Z: 0.2555
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 17092097083071224623
        Name: "chest"
        Transform {
          Location {
            X: -4.029
            Y: -2.38418579e-06
            Z: 154.938
          }
          Rotation {
            Yaw: -89.9999542
            Roll: -5.90501928
          }
          Scale {
            X: 0.38
            Y: 0.2601
            Z: 0.58918
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6965268181198887522
        Name: "abs"
        Transform {
          Location {
            X: 7.456
            Y: 3.81469727e-06
            Z: 145.639
          }
          Rotation {
            Yaw: -89.9999619
            Roll: 9.78002739
          }
          Scale {
            X: 0.2055
            Y: 0.071
            Z: 0.25554
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 10368254107872498645
        Name: "pec_l"
        Transform {
          Location {
            X: 5.22100544
            Y: -9.14999
            Z: 163.179
          }
          Rotation {
            Pitch: 1.15399456
            Yaw: -108.310982
            Roll: -22.9819412
          }
          Scale {
            X: 0.2326
            Y: 0.10066
            Z: 0.2103
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 7039369158399760219
        Name: "pec_r"
        Transform {
          Location {
            X: 5.22099543
            Y: 9.15000343
            Z: 163.179
          }
          Rotation {
            Pitch: -1.15400136
            Yaw: -71.6889343
            Roll: -22.9819298
          }
          Scale {
            X: 0.2326
            Y: 0.10066
            Z: 0.2103
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 5467698295578015733
        Name: "shoulder_r"
        Transform {
          Location {
            X: -4.49801254
            Y: 20.2719955
            Z: 165.276
          }
          Rotation {
            Pitch: 33.5259743
            Yaw: -89.9999695
          }
          Scale {
            X: 0.25275
            Y: 0.18772
            Z: 0.1942
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6124037488071012306
        Name: "trap_r"
        Transform {
          Location {
            X: -8.49370575
            Y: 11.2439957
            Z: 175.381866
          }
          Rotation {
            Pitch: 27.8549919
            Yaw: -102.431
            Roll: -18.5490112
          }
          Scale {
            X: 0.25274
            Y: 0.127
            Z: 0.10198
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 169048850431202935
        Name: "trap2_r"
        Transform {
          Location {
            X: -12.4860048
            Y: 10.609993
            Z: 161.375
          }
          Rotation {
            Pitch: 82.1749573
            Yaw: -97.7129822
            Roll: -92.1978607
          }
          Scale {
            X: 0.3191
            Y: 0.20148
            Z: 0.10114
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 16107977806191788421
        Name: "arm_upper_r"
        Transform {
          Location {
            X: -6.32143
            Y: 31.6251678
            Z: 152.04805
          }
          Rotation {
            Pitch: -35.7780457
            Yaw: -90.0435791
            Roll: 6.29590702
          }
          Scale {
            X: 0.12588
            Y: 0.1795
            Z: 0.44236
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 10389427083616261315
        Name: "arm_elbow_r"
        Transform {
          Location {
            X: -5.9078846
            Y: 42.997345
            Z: 137.71579
          }
          Rotation {
            Pitch: -32.8738708
            Yaw: -82.8823242
            Roll: -23.4528198
          }
          Scale {
            X: 0.13076
            Y: 0.14438
            Z: 0.22142
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 10582636809161823695
        Name: "arm_lower_r"
        Transform {
          Location {
            X: -3.53014469
            Y: 47.8106384
            Z: 131.389862
          }
          Rotation {
            Pitch: -33.4920654
            Yaw: -82.5541687
            Roll: -23.632843
          }
          Scale {
            X: 0.1048
            Y: 0.11936
            Z: 0.4478
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 15732806322245974677
        Name: "hand_r"
        Transform {
          Location {
            X: 5.40677643
            Y: 60.5893097
            Z: 111.538651
          }
          Rotation {
            Pitch: -20.6506958
            Yaw: -87.5425415
            Roll: -21.8203735
          }
          Scale {
            X: 0.11758
            Y: 0.17884
            Z: 0.20704
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 918191834755600594
        Name: "shoulder_l"
        Transform {
          Location {
            X: -4.4979887
            Y: -20.272
            Z: 165.276
          }
          Rotation {
            Pitch: -33.5259705
            Yaw: -89.9999695
          }
          Scale {
            X: 0.25275
            Y: 0.18772
            Z: 0.1942
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 4266424831574612829
        Name: "trap_l"
        Transform {
          Location {
            X: -8.49369431
            Y: -11.2440033
            Z: 175.381866
          }
          Rotation {
            Pitch: -27.855011
            Yaw: -77.5689087
            Roll: -18.5490112
          }
          Scale {
            X: 0.25274
            Y: 0.127
            Z: 0.10198
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6302616721014474625
        Name: "trap2_l"
        Transform {
          Location {
            X: -12.4859934
            Y: -10.6100073
            Z: 161.375
          }
          Rotation {
            Pitch: -82.1747818
            Yaw: -82.2867126
            Roll: -92.1978226
          }
          Scale {
            X: 0.3191
            Y: 0.20148
            Z: 0.10114
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 10574310535649613515
        Name: "arm_upper_l"
        Transform {
          Location {
            X: -6.32198524
            Y: -29.3076782
            Z: 151.493
          }
          Rotation {
            Pitch: 33.8532486
            Yaw: -94.2371521
            Roll: -1.35818481
          }
          Scale {
            X: 0.12588
            Y: 0.1795
            Z: 0.44236
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 68271543795173856
        Name: "arm_elbow_l"
        Transform {
          Location {
            X: -5.97303152
            Y: -40.060051
            Z: 136.687439
          }
          Rotation {
            Pitch: 30.0792637
            Yaw: -101.335022
            Roll: -30.4950256
          }
          Scale {
            X: 0.13076
            Y: 0.14438
            Z: 0.22142
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6503761465773228244
        Name: "arm_lower_l"
        Transform {
          Location {
            X: -2.94339657
            Y: -44.7030334
            Z: 130.514679
          }
          Rotation {
            Pitch: 30.6590576
            Yaw: -101.738708
            Roll: -30.6995544
          }
          Scale {
            X: 0.1048
            Y: 0.11936
            Z: 0.4478
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 13962798552639321114
        Name: "hand_l"
        Transform {
          Location {
            X: 7.98439503
            Y: -56.4092712
            Z: 111.460068
          }
          Rotation {
            Pitch: 18.4341125
            Yaw: -95.2103882
            Roll: -28.4431763
          }
          Scale {
            X: 0.11758
            Y: 0.17884
            Z: 0.20704
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 9071864626046035584
        Name: "belly"
        Transform {
          Location {
            X: -1.47
            Y: -8.34465e-07
            Z: 128.314
          }
          Rotation {
            Yaw: -89.9999542
            Roll: 0.10499993
          }
          Scale {
            X: 0.32344
            Y: 0.2231
            Z: 0.34266
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 8134415431526972635
        Name: "hips"
        Transform {
          Location {
            X: -2.508
            Y: -1.1920929e-06
            Z: 113.868
          }
          Rotation {
            Yaw: -89.9999542
            Roll: 4.12600899
          }
          Scale {
            X: 0.34982
            Y: 0.23586
            Z: 0.37
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 8597607649367590776
        Name: "glute_l"
        Transform {
          Location {
            X: -4.61499691
            Y: -5.3450036
            Z: 110.565
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.2314
            Y: 0.21034
            Z: 0.25558
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 17945033743352166429
        Name: "glute_r"
        Transform {
          Location {
            X: -4.61500216
            Y: 5.34499693
            Z: 110.565
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.2314
            Y: 0.21034
            Z: 0.25558
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 8943911524145011014
        Name: "leg_upper_r"
        Transform {
          Location {
            X: -0.78153038
            Y: 12.2429962
            Z: 85.497
          }
          Rotation {
            Pitch: -2.61181641
            Yaw: -89.999939
            Roll: -2.55099487
          }
          Scale {
            X: 0.1959
            Y: 0.1959
            Z: 0.5633
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 6477235621191951777
        Name: "knee_r"
        Transform {
          Location {
            X: 0.528604507
            Y: 16.2635117
            Z: 59.5712891
          }
          Rotation {
            Pitch: -10.7416687
            Yaw: -92.1142
            Roll: 19.1911507
          }
          Scale {
            X: 0.09062
            Y: 0.092
            Z: 0.1789
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 16745874720473941050
        Name: "leg_calf_r"
        Transform {
          Location {
            X: -6.6993928
            Y: 19.2883606
            Z: 46.9246101
          }
          Rotation {
            Pitch: -6.72976685
            Yaw: -89.999939
            Roll: 16.1954575
          }
          Scale {
            X: 0.1631
            Y: 0.16066
            Z: 0.36628
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 12776455630197199788
        Name: "leg_lower_r"
        Transform {
          Location {
            X: -5.14377403
            Y: 21.0400848
            Z: 32.0789871
          }
          Rotation {
            Pitch: -6.72973633
            Yaw: -89.9999084
            Roll: 4.38303709
          }
          Scale {
            X: 0.10354
            Y: 0.10198
            Z: 0.5944
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 18233206819962527825
        Name: "ankle_r"
        Transform {
          Location {
            X: -6.78939486
            Y: 23.6019745
            Z: 7.94342041
          }
          Rotation {
            Pitch: -6.72973633
            Yaw: -89.9998169
            Roll: 18.9070873
          }
          Scale {
            X: 0.1139
            Y: 0.1687
            Z: 0.13244
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 14513095085592853208
        Name: "foot_r"
        Transform {
          Location {
            X: 3.21760511
            Y: 23.8919449
            Z: 4.39424896
          }
          Rotation {
            Pitch: -4.67074585
            Yaw: -89.9999084
            Roll: 7.82522
          }
          Scale {
            X: 0.1395
            Y: 0.3055
            Z: 0.08134
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 3963195418221523105
        Name: "leg_upper_l"
        Transform {
          Location {
            X: -0.781518936
            Y: -12.2429962
            Z: 85.497
          }
          Rotation {
            Pitch: 1.76263273
            Yaw: -89.999939
            Roll: -2.55099487
          }
          Scale {
            X: 0.1959
            Y: 0.1959
            Z: 0.5633
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 339677721300491462
        Name: "knee_l"
        Transform {
          Location {
            X: 0.528618813
            Y: -15.8788376
            Z: 59.5145645
          }
          Rotation {
            Pitch: 9.8930912
            Yaw: -87.8913269
            Roll: 19.1593513
          }
          Scale {
            X: 0.09062
            Y: 0.092
            Z: 0.1789
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 18180509558309957543
        Name: "leg_calf_l"
        Transform {
          Location {
            X: -6.69938087
            Y: -18.7159653
            Z: 46.82444
          }
          Rotation {
            Pitch: 5.88064241
            Yaw: -89.999939
            Roll: 16.1951962
          }
          Scale {
            X: 0.1631
            Y: 0.16066
            Z: 0.36628
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 14067807728027533798
        Name: "leg_lower_l"
        Transform {
          Location {
            X: -5.14375687
            Y: -20.2474518
            Z: 31.954464
          }
          Rotation {
            Pitch: 5.88064241
            Yaw: -89.999939
            Roll: 4.38301468
          }
          Scale {
            X: 0.10354
            Y: 0.10198
            Z: 0.5944
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
        Id: 13614051417318935306
        Name: "ankle_l"
        Transform {
          Location {
            X: -6.78937817
            Y: -22.4513855
            Z: 7.78358459
          }
          Rotation {
            Pitch: 5.88064241
            Yaw: -89.999939
            Roll: 18.9070644
          }
          Scale {
            X: 0.1139
            Y: 0.1687
            Z: 0.13244
          }
        }
        ParentId: 10470130216335527457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15745211306479370650
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
            Id: 2275260513309488867
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
      Id: 3043796555406523921
      Name: "Pipe - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_004"
      }
    }
    Assets {
      Id: 12224753716253082240
      Name: "Bone Human Jaw 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_jaw_01_ref"
      }
    }
    Assets {
      Id: 5944393796542654307
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 10167461486394223383
      Name: "Cylinder - Chamfered Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_002"
      }
    }
    Assets {
      Id: 8081278958736551803
      Name: "Fantasy Shield 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_003"
      }
    }
    Assets {
      Id: 267906990579783124
      Name: "Scifi Panel 1x3m Angled Right"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_panel_1x3m_angledR_001"
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
      Id: 10830976032868219508
      Name: "Cylinder - Chamfered"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_chamfer"
      }
    }
    Assets {
      Id: 17749268126197611831
      Name: "Arch Fancy Peaked 6m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arch_fancy_ogive_6m_001"
      }
    }
    Assets {
      Id: 566098347886128093
      Name: "Gem - Trillion Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_trillion_polished_001"
      }
    }
    Assets {
      Id: 16102254645995823356
      Name: "Dodecahedron"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_dodecahedron_001"
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
    Assets {
      Id: 2275260513309488867
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 15745211306479370650
      Name: "Marble Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_marble_tiles_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
