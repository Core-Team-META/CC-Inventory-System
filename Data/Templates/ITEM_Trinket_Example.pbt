Assets {
  Id: 14350940540964847784
  Name: "ITEM_Trinket_Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18299769885140533039
      Objects {
        Id: 18299769885140533039
        Name: "ITEM_Trinket_Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4453921070036894618
        UnregisteredParameters {
          Overrides {
            Name: "cs:SOCKET_head"
            ObjectReference {
              SubObjectId: 18299769885140533039
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4453921070036894618
        Name: "Hearts Volume VFX"
        Transform {
          Location {
            Z: -2.28881836e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18299769885140533039
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.892913759
              B: 0.97
              A: 1
            }
          }
          Overrides {
            Name: "bp:Volume Type"
            Enum {
              Value: "mc:evfxvolumetype:1"
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.467989385
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.4049851
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.76701927
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
            Id: 4414719375719053614
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
      Id: 4414719375719053614
      Name: "Hearts Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_heart_volume"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
