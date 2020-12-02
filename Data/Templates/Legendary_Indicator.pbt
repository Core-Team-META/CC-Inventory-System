Assets {
  Id: 13615535925942134142
  Name: "Legendary_Indicator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4005467760099991770
      Objects {
        Id: 4005467760099991770
        Name: "Legendary_Indicator"
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
            Float: 3
          }
          Overrides {
            Name: "bp:Upward Velocity"
            Float: 3.57122231
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
            Name: "bp:Emissive Boost"
            Float: 9.35395718
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
