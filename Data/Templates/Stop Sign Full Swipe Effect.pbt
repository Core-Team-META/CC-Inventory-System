Assets {
  Id: 13864908675504259320
  Name: "Stop Sign Full Swipe Effect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5757097722660440297
      Objects {
        Id: 5757097722660440297
        Name: "Stop Sign Full Swipe Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12298638062362838851
        ChildIds: 3662761977394676533
        ChildIds: 3940089097447692319
        UnregisteredParameters {
        }
        Lifespan: 0.6
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
        Id: 12298638062362838851
        Name: "Sword Swipe Full Circle"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999985
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5757097722660440297
        UnregisteredParameters {
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 5.5
              Y: 5.5
              Z: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 5
              G: 0.761000216
              B: 0.761000216
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.55423218
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
            Id: 4037298589509087562
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 3662761977394676533
        Name: "Sword Swipe Full Circle"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999985
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5757097722660440297
        UnregisteredParameters {
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 4.2
              Y: 4.2
              Z: 1
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 5
              G: 0.500000119
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.299999952
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.477750897
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
            Id: 4037298589509087562
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 3940089097447692319
        Name: "Sword Swipe Whoosh 01 SFX"
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
        ParentId: 5757097722660440297
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 1647461845235488487
          }
          AutoPlay: true
          Pitch: -400
          Volume: 1
          Falloff: 3600
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
    }
    Assets {
      Id: 4037298589509087562
      Name: "Sword Swipe Full Circle"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sword_swipe_02"
      }
    }
    Assets {
      Id: 1647461845235488487
      Name: "Sword Swipe Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_swipe_whoosh_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
