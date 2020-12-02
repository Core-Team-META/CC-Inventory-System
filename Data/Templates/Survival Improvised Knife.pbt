Assets {
  Id: 15328159966925277124
  Name: "Survival Improvised Knife"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6233557889635161314
      Objects {
        Id: 6233557889635161314
        Name: "Survival Improvised Knife"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17691873226102074490
        ChildIds: 9577909935174553293
        ChildIds: 11199429802301382985
        ChildIds: 15364251126404789058
        UnregisteredParameters {
          Overrides {
            Name: "cs:EquipmentStance"
            String: "1hand_melee_stance"
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
        Id: 17691873226102074490
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
        ParentId: 6233557889635161314
        ChildIds: 6740694208454593628
        ChildIds: 15415740032300999306
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
        Id: 6740694208454593628
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
        ParentId: 17691873226102074490
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
        Id: 15415740032300999306
        Name: "MeleeAbilityServer"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.00270126e-05
          }
          Scale {
          }
        }
        ParentId: 17691873226102074490
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 11199429802301382985
            }
          }
          Overrides {
            Name: "cs:HitBox"
            ObjectReference {
              SubObjectId: 15364251126404789058
            }
          }
          Overrides {
            Name: "cs:DamageRange"
            Vector2 {
              X: 12
              Y: 15
            }
          }
          Overrides {
            Name: "cs:AttackImpulse"
            Float: 30000
          }
          Overrides {
            Name: "cs:VerticalImpulse"
            Float: 0
          }
          Overrides {
            Name: "cs:DamageRangePlayers"
            Vector2 {
              X: 12
              Y: 15
            }
          }
          Overrides {
            Name: "cs:HeadshotNPCs"
            Vector2 {
              X: 20
              Y: 25
            }
          }
          Overrides {
            Name: "cs:HeadshotPlayers"
            Vector2 {
              X: 20
              Y: 25
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
            Id: 2059119958766888270
          }
        }
      }
      Objects {
        Id: 9577909935174553293
        Name: "Client Context"
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
        ParentId: 6233557889635161314
        ChildIds: 17241988032352690556
        ChildIds: 15978468598319269773
        ChildIds: 10990135366400627826
        UnregisteredParameters {
        }
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
        Id: 17241988032352690556
        Name: "DestructibleWeaponClient"
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
        ParentId: 9577909935174553293
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1745020032661794594
          }
        }
      }
      Objects {
        Id: 15978468598319269773
        Name: "MeleeAbilityClient"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: 179.999893
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9577909935174553293
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 11199429802301382985
            }
          }
          Overrides {
            Name: "cs:CalibrateSwipe"
            Bool: false
          }
          Overrides {
            Name: "cs:SwipeDelay"
            Float: 0.02
          }
          Overrides {
            Name: "cs:PlayerImpactVFX"
            AssetReference {
              Id: 431329159696610267
            }
          }
          Overrides {
            Name: "cs:SwipeEffect"
            AssetReference {
              Id: 16673441874583589830
            }
          }
          Overrides {
            Name: "cs:SwipeRotation"
            Rotator {
              Roll: -128
            }
          }
          Overrides {
            Name: "cs:SwipePosition"
            Vector {
              Z: 5
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
            Id: 16402346348308610123
          }
        }
      }
      Objects {
        Id: 10990135366400627826
        Name: "Geo"
        Transform {
          Location {
            X: -1.34988403
            Z: 8.16503906
          }
          Rotation {
            Pitch: 3.7338593
          }
          Scale {
            X: 0.700174332
            Y: 0.700174332
            Z: 0.700174332
          }
        }
        ParentId: 9577909935174553293
        ChildIds: 9172989571522991592
        ChildIds: 2952874846502385443
        ChildIds: 1764449478656302644
        ChildIds: 18129845523675395599
        ChildIds: 119238642280622666
        ChildIds: 15409416462955097808
        ChildIds: 17013547987836425102
        ChildIds: 5112013079241065449
        ChildIds: 12886639260542442624
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
        Id: 9172989571522991592
        Name: "Fantasy Sword Blade 01"
        Transform {
          Location {
            X: 1.03741956
            Y: -7.62939453e-05
            Z: -9.18583107
          }
          Rotation {
            Pitch: -7.25939941
            Yaw: 3.28320509e-12
            Roll: 0.000820674875
          }
          Scale {
            X: 0.794249237
            Y: 1.05202734
            Z: 1.14759946
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 6611378559053753307
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 6611378559053753307
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 12.7252
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 31.1898308
          }
          Overrides {
            Name: "ma:Shared_Detail1:utile"
            Float: 11.1954956
          }
          Overrides {
            Name: "ma:Shared_Detail1:vtile"
            Float: 35.4514465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6611378559053753307
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 35.4514465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 31.1898308
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.566000044
              G: 0.44827202
              B: 0.44827202
              A: 1
            }
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
            Id: 5605120965849612947
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2952874846502385443
        Name: "Fantasy Pommel 01"
        Transform {
          Location {
            X: 0.448476434
            Y: -0.547306538
            Z: 6.82457256
          }
          Rotation {
            Pitch: 8.42649937
            Yaw: 7.66893578
            Roll: -7.2802124
          }
          Scale {
            X: 0.0279020071
            Y: 0.024705505
            Z: 0.0437901616
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6611378559053753307
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.603000045
              G: 0.603000045
              B: 0.603000045
              A: 1
            }
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
            Id: 13701972243854537239
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1764449478656302644
        Name: "Fantasy Sword Guard 02"
        Transform {
          Location {
            X: 1.6930027
            Y: 0.549078703
            Z: -13.3780622
          }
          Rotation {
            Pitch: 3.5527432
            Yaw: -105.568085
            Roll: -15.4959717
          }
          Scale {
            X: 0.676220715
            Y: 1.15920329
            Z: 0.389209837
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 35.4514465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 35.4514465
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 2
              G: 1.67258275
              B: 1.52
              A: 1
            }
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
            Id: 15186763367493361441
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18129845523675395599
        Name: "Rope"
        Transform {
          Location {
            X: 1.71740127
            Y: 0.357053936
            Z: 2.57790303
          }
          Rotation {
            Pitch: -4.79284668
            Yaw: -91.2405396
            Roll: 32.8996658
          }
          Scale {
            X: 0.0891545191
            Y: 0.171114668
            Z: 0.41639334
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 119238642280622666
        Name: "Rope"
        Transform {
          Location {
            X: 2.25433302
            Y: 0.206421807
            Z: 3.04446626
          }
          Rotation {
            Pitch: -3.43191528
            Yaw: -91.9979248
            Roll: 60.9858627
          }
          Scale {
            X: 0.139084399
            Y: 0.194398314
            Z: 0.395990819
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15409416462955097808
        Name: "Rope"
        Transform {
          Location {
            X: 0.73357296
            Y: 0.764318585
            Z: -7.96842957
          }
          Rotation {
            Pitch: -4.7928772
            Yaw: -91.2401733
            Roll: 15.9423523
          }
          Scale {
            X: 0.0684076846
            Y: 0.101392895
            Z: 0.316399366
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17013547987836425102
        Name: "Rope"
        Transform {
          Location {
            X: 0.43058911
            Y: 0.78105551
            Z: -9.31215858
          }
          Rotation {
            Pitch: -4.92449951
            Yaw: -90.5042114
            Roll: -9.85913086
          }
          Scale {
            X: 0.0575853735
            Y: 0.0884088576
            Z: 0.32066381
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5112013079241065449
        Name: "Rope"
        Transform {
          Location {
            X: -0.231920794
            Y: 0.80337137
            Z: -16.3351364
          }
          Rotation {
            Pitch: -4.59884644
            Yaw: -91.833252
            Roll: 6.18968868
          }
          Scale {
            X: 0.0537578166
            Y: 0.0851011
            Z: 0.307565093
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12886639260542442624
        Name: "Rope"
        Transform {
          Location {
            X: -0.156149805
            Y: 0.79221344
            Z: -19.2928925
          }
          Rotation {
            Pitch: 6.43483686
            Yaw: -103.455139
            Roll: -10.2542725
          }
          Scale {
            X: 0.0505422354
            Y: 0.0969778597
            Z: 0.261970788
          }
        }
        ParentId: 10990135366400627826
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.494791657
              G: 0.472804576
              B: 0.440364599
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14212988502358508072
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15380740538046429488
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.401000023
              G: 0.333350539
              B: 0.292329
              A: 1
            }
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
            Id: 46061843978868412
          }
          Teams {
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11199429802301382985
        Name: "Stab 1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
          }
        }
        ParentId: 6233557889635161314
        UnregisteredParameters {
          Overrides {
            Name: "cs:IsAbilityChain"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 0.2
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
            Duration: 0.25
            CanMove: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.02
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          CooldownPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
          }
          Animation: "1hand_melee_thrust"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
      }
      Objects {
        Id: 15364251126404789058
        Name: "Hit Box"
        Transform {
          Location {
            Z: 91.5370865
          }
          Rotation {
            Yaw: 5.21765724e-05
            Roll: -6.10351563e-05
          }
          Scale {
            X: 3.5
            Y: 3.5
            Z: 3.5
          }
        }
        ParentId: 6233557889635161314
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
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
        }
      }
    }
    Assets {
      Id: 5605120965849612947
      Name: "Fantasy Sword Blade 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_blade_sword_001"
      }
    }
    Assets {
      Id: 6611378559053753307
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
      }
    }
    Assets {
      Id: 13701972243854537239
      Name: "Rock 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_001"
      }
    }
    Assets {
      Id: 15186763367493361441
      Name: "Bone Human Tibula 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_tib_01_ref"
      }
    }
    Assets {
      Id: 14212988502358508072
      Name: "Metal Basic Steel"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "steel_001"
      }
    }
    Assets {
      Id: 46061843978868412
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 15380740538046429488
      Name: "Rope"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rope_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
