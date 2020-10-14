Assets {
  Id: 10631412859206803504
  Name: "Ice Sword Full Circle Swipe Effect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9714557805149777009
      Objects {
        Id: 9714557805149777009
        Name: "Full Circle Swipe Effect"
        Transform {
          Location {
            Z: 134.875336
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11346856131111451494
        ChildIds: 7433446679403634401
        UnregisteredParameters {
        }
        Lifespan: 0.5
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
        Id: 7433446679403634401
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
        ParentId: 9714557805149777009
        ChildIds: 18151028789288011596
        ChildIds: 10344403589642805414
        ChildIds: 12315440838834899426
        ChildIds: 697306126559025762
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
        Id: 18151028789288011596
        Name: "Sword Swipe Full Circle"
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
        ParentId: 7433446679403634401
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.761000037
              G: 2.99999905
              B: 5
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.0821191818
              B: 0.1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 5.5
              Y: 5.5
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.45
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
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 10344403589642805414
        Name: "Sword Swipe Full Circle"
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
        ParentId: 7433446679403634401
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.3
              B: 6
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.136026368
              B: 0.26
              A: 1
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 4.3
              Y: 4.3
              Z: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 1
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
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 12315440838834899426
        Name: "Sword Swipe Whoosh 02 SFX"
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
        ParentId: 7433446679403634401
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
            Id: 3606642509834312935
          }
          AutoPlay: true
          Volume: 1
          Falloff: 3600
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 697306126559025762
        Name: "Sword Swipe Schwing SFX"
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
        ParentId: 7433446679403634401
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
            Id: 6328382799080238542
          }
          AutoPlay: true
          Volume: 0.7
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
      Id: 3606642509834312935
      Name: "Sword Swipe Whoosh 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_swipe_whoosh"
      }
    }
    Assets {
      Id: 6328382799080238542
      Name: "Sword Swipe Schwing SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sword_swipe_schwing"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
