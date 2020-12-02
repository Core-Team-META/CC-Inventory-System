Assets {
  Id: 15631619586623121380
  Name: "UnCommon_Indicator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4005467760099991770
      Objects {
        Id: 4005467760099991770
        Name: "UnCommon_Indicator"
        Transform {
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Life"
            Float: 0.403554082
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 0.836646855
          }
          Overrides {
            Name: "bp:Enable Beam"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Rings"
            Bool: true
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.809999943
              B: 0.00536426762
              A: 1
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.05
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1.51042068
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.103249907
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
            Id: 1737725360769607932
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
      Id: 1737725360769607932
      Name: "Resurrection VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_resurrection"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
