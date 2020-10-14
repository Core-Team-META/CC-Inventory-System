Assets {
  Id: 11492785123024612264
  Name: "Crossbow Scope"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10231058435190031181
      Objects {
        Id: 10231058435190031181
        Name: "Crossbow Scope"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11751147532119837545
        ChildIds: 5182539678941468997
        ChildIds: 16186697780932143267
        ChildIds: 15474120547315567930
        UnregisteredParameters {
        }
        WantsNetworking: true
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
        Id: 11751147532119837545
        Name: "Depth of Field Post Process"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.4
          }
        }
        ParentId: 10231058435190031181
        UnregisteredParameters {
          Overrides {
            Name: "bp:Method"
            Enum {
              Value: "mc:edoftype:1"
            }
          }
          Overrides {
            Name: "bp:Focal Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Focal Region"
            Float: 100
          }
          Overrides {
            Name: "bp:Near Blur Size"
            Float: 1.5
          }
          Overrides {
            Name: "bp:Near Transition Region"
            Float: 0
          }
          Overrides {
            Name: "bp:Far Transition Region"
            Float: 0
          }
          Overrides {
            Name: "bp:Far Blur Size"
            Float: 0
          }
          Overrides {
            Name: "bp:Vignette Size"
            Float: 65
          }
          Overrides {
            Name: "bp:Sky Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Occlusion"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Use Focus Object"
            Bool: false
          }
          Overrides {
            Name: "bp:Unbounded"
            Bool: false
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 10577491396371571795
          }
        }
      }
      Objects {
        Id: 5182539678941468997
        Name: "Vingette Grain Post Process"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: 1.4
          }
        }
        ParentId: 10231058435190031181
        UnregisteredParameters {
          Overrides {
            Name: "bp:Vignette Intensity"
            Float: 1
          }
          Overrides {
            Name: "bp:Grain Intensity"
            Float: 0
          }
          Overrides {
            Name: "bp:Unbounded"
            Bool: false
          }
          Overrides {
            Name: "bp:Priority"
            Float: 5
          }
          Overrides {
            Name: "bp:Blend Radius"
            Float: 150
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Grain Jitter"
            Float: 0
          }
          Overrides {
            Name: "bp:Blend Weight"
            Float: 1
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 2920556432021751741
          }
        }
      }
      Objects {
        Id: 16186697780932143267
        Name: "Color Grading Post Process"
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
        ParentId: 10231058435190031181
        UnregisteredParameters {
          Overrides {
            Name: "bp:Unbounded"
            Bool: false
          }
          Overrides {
            Name: "bp:Scene Tint"
            Color {
              R: 0.744304597
              G: 1
              B: 0.73
              A: 1
            }
          }
          Overrides {
            Name: "bp:White Temperature"
            Float: 6000
          }
          Overrides {
            Name: "bp:Volume Color"
            Color {
              G: 0.5
              B: 0.072847724
              A: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 14690929629184396019
          }
        }
      }
      Objects {
        Id: 15474120547315567930
        Name: "Group"
        Transform {
          Location {
            X: 20
            Y: -0.000434027781
          }
          Rotation {
          }
          Scale {
            X: 1.22422814
            Y: 1.22422814
            Z: 1.22422814
          }
        }
        ParentId: 10231058435190031181
        ChildIds: 777806657781453860
        ChildIds: 10835395327450723715
        ChildIds: 10552325033677520966
        ChildIds: 5088681326814010642
        ChildIds: 14686069151956931158
        ChildIds: 16787184731282268334
        UnregisteredParameters {
        }
        WantsNetworking: true
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
        Id: 777806657781453860
        Name: "Pipe"
        Transform {
          Location {
            X: -29.6636887
            Y: 0.000434027781
          }
          Rotation {
            Pitch: -90
            Yaw: -0.0198059082
            Roll: 0.0199306607
          }
          Scale {
            X: 0.221959829
            Y: 0.221960574
            Z: 0.752894759
          }
        }
        ParentId: 15474120547315567930
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7189890806979750847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09375
              G: 0.09375
              B: 0.09375
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Color Secondary"
            Color {
              R: 0.026041666
              G: 0.026041666
              B: 0.026041666
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Patterns Metallic"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Rotate 90"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 10
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12371872750459640945
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10835395327450723715
        Name: "Pipe"
        Transform {
          Location {
            X: -29.5074387
            Y: 0.000434027781
          }
          Rotation {
            Pitch: -90
            Yaw: -0.0198059082
            Roll: 0.0199306607
          }
          Scale {
            X: 0.22157459
            Y: 0.221575215
            Z: 0.751586914
          }
        }
        ParentId: 15474120547315567930
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7189890806979750847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09375
              G: 0.09375
              B: 0.09375
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Color Secondary"
            Color {
              R: 0.026041666
              G: 0.026041666
              B: 0.026041666
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Patterns Metallic"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Rotate 90"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12371872750459640945
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10552325033677520966
        Name: "Sphere"
        Transform {
          Location {
            X: 45.6952591
            Y: 0.000436240283
          }
          Rotation {
          }
          Scale {
            X: 0.0360210165
            Y: 0.216751665
            Z: 0.216751665
          }
        }
        ParentId: 15474120547315567930
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16845241941935487831
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.297000021
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Refraction"
            Float: 0
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Object Normal Strength"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Opacity"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Bubble Size"
            Float: 55
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Bubble Normal Strength"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Metallic"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Outer Opacity"
            Float: 0.1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Inner Opacity"
            Float: 0.058
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Inner Refraction"
            Float: 0.1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Outer Refraction"
            Float: 0.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Smooth Glaze"
            Float: 1
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7833657128501518175
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5088681326814010642
        Name: "Crosshairs"
        Transform {
          Location {
            X: 45
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15474120547315567930
        ChildIds: 10862506723815683899
        ChildIds: 13669461740915649936
        ChildIds: 5161580973721193180
        ChildIds: 17451325982372856895
        ChildIds: 4308541910679787198
        UnregisteredParameters {
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
        Id: 10862506723815683899
        Name: "Cube"
        Transform {
          Location {
            Y: 0.000354531803
            Z: -11.2315683
          }
          Rotation {
          }
          Scale {
            X: 0.00040842063
            Y: 0.00040842063
            Z: 0.09
          }
        }
        ParentId: 5088681326814010642
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13802195091322210055
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.76
              B: 0.0201325603
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 13669461740915649936
        Name: "Cube"
        Transform {
          Location {
            Y: -11.2312155
            Z: -7.79000516e-07
          }
          Rotation {
            Roll: 89.9999542
          }
          Scale {
            X: 0.00040842063
            Y: 0.00040842063
            Z: 0.09
          }
        }
        ParentId: 5088681326814010642
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13802195091322210055
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.76
              B: 0.0201325603
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 5161580973721193180
        Name: "Cube"
        Transform {
          Location {
            Y: 11.2319221
            Z: -7.79000516e-07
          }
          Rotation {
            Roll: -90.0000534
          }
          Scale {
            X: 0.00040842063
            Y: 0.00040842063
            Z: 0.09
          }
        }
        ParentId: 5088681326814010642
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13802195091322210055
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.76
              B: 0.0201325603
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 17451325982372856895
        Name: "Cube"
        Transform {
          Location {
            Y: -0.2
          }
          Rotation {
            Roll: -90
          }
          Scale {
            X: 0.00040842063
            Y: 0.00040842063
            Z: 0.00816841424
          }
        }
        ParentId: 5088681326814010642
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13802195091322210055
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.99
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 4308541910679787198
        Name: "Cube"
        Transform {
          Location {
            Y: 0.2
          }
          Rotation {
            Roll: 89.9999771
          }
          Scale {
            X: 0.00040842063
            Y: 0.00040842063
            Z: 0.00816841424
          }
        }
        ParentId: 5088681326814010642
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13802195091322210055
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.99
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 14686069151956931158
        Name: "Pipe"
        Transform {
          Location {
            X: 44.516
            Y: 0.000434027781
          }
          Rotation {
            Pitch: -90
            Yaw: -0.0198059082
            Roll: 0.0199306607
          }
          Scale {
            X: 0.206913501
            Y: 0.206914306
            Z: 0.00557021331
          }
        }
        ParentId: 15474120547315567930
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7189890806979750847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.09375
              G: 0.09375
              B: 0.09375
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Color Secondary"
            Color {
              R: 0.026041666
              G: 0.026041666
              B: 0.026041666
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Patterns Metallic"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:Rotate 90"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12371872750459640945
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16787184731282268334
        Name: "Point Light"
        Transform {
          Location {
            X: -6.14750671
            Y: 0.000434027781
          }
          Rotation {
          }
          Scale {
            X: 1.15992594
            Y: 1.15992594
            Z: 1.15992594
          }
        }
        ParentId: 15474120547315567930
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Light {
          Intensity: 0.00479999976
          Color {
            R: 1
            G: 0.786490083
            B: 0.38
            A: 1
          }
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 25
              PointLight {
                FallOffExponent: 8
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 10577491396371571795
      Name: "Depth of Field Post Process"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_DOF"
      }
    }
    Assets {
      Id: 2920556432021751741
      Name: "Vingette Grain Post Process"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_vignette_grain"
      }
    }
    Assets {
      Id: 14690929629184396019
      Name: "Color Grading Post Process"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_color_grading"
      }
    }
    Assets {
      Id: 12371872750459640945
      Name: "Pipe"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_001"
      }
    }
    Assets {
      Id: 7833657128501518175
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 16845241941935487831
      Name: "Glass 01 (no distortion)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_glass_001"
      }
    }
    Assets {
      Id: 198353679974341757
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 13802195091322210055
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
