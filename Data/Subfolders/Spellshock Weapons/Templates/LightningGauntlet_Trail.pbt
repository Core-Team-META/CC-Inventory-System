Assets {
  Id: 2674395215375753104
  Name: "LightningGauntlet_Trail"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11861313653374629684
      Objects {
        Id: 11861313653374629684
        Name: "LightningGauntlet_Trail"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15778795352663330980
        ChildIds: 7612796010948397410
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
        Id: 7612796010948397410
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
        ParentId: 11861313653374629684
        ChildIds: 4962578645065774679
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
        Id: 4962578645065774679
        Name: "LightningTrail_Main"
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
        ParentId: 7612796010948397410
        ChildIds: 8828962953952766713
        ChildIds: 3419259118586697597
        ChildIds: 2086874960776025452
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 1
              B: 6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.3
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 0.615
          }
          Overrides {
            Name: "bp:Chaos"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 25
          }
          Overrides {
            Name: "bp:Density"
            Float: 2.5
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.65
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
            Id: 5891367910865939212
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 8828962953952766713
        Name: "LightningTrail_Small"
        Transform {
          Location {
            X: -20
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4962578645065774679
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 1
              B: 6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.25
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 0.14
          }
          Overrides {
            Name: "bp:Chaos"
            Float: 1.3207227
          }
          Overrides {
            Name: "bp:Density"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 9
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.5
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
            Id: 5891367910865939212
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 3419259118586697597
        Name: "LightningTrail_Small"
        Transform {
          Location {
            X: 20
            Z: -15
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4962578645065774679
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 1
              B: 6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.25
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 0.14
          }
          Overrides {
            Name: "bp:Chaos"
            Float: 1.3207227
          }
          Overrides {
            Name: "bp:Density"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 9
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.5
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
            Id: 5891367910865939212
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 2086874960776025452
        Name: "CORE_Utility_Rotate"
        Transform {
          Location {
            X: 2201.21973
            Y: -1658.92041
            Z: -1597.54285
          }
          Rotation {
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 4962578645065774679
        UnregisteredParameters {
          Overrides {
            Name: "cs:RotateTo"
            Vector {
              X: 15
            }
          }
          Overrides {
            Name: "cs:Speed"
            Float: 5
          }
          Overrides {
            Name: "cs:Delay"
            Float: 0
          }
          Overrides {
            Name: "cs:LocalSpace"
            Bool: true
          }
          Overrides {
            Name: "cs:Continuous"
            Bool: true
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
            Id: 236319248198557983
          }
        }
      }
    }
    Assets {
      Id: 5891367910865939212
      Name: "Spark Trail Wavy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_spark_trail_wavy"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
