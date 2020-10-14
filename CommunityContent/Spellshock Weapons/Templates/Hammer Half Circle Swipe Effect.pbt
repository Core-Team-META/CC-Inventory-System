Assets {
  Id: 758586622393245941
  Name: "Hammer Half Circle Swipe Effect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8028808446300712915
      Objects {
        Id: 8028808446300712915
        Name: "Hammer Half Circle Swipe Effect"
        Transform {
          Location {
            Z: 151.275467
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2493465540114601748
        ChildIds: 12444717519163057619
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
        Id: 12444717519163057619
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
        ParentId: 8028808446300712915
        ChildIds: 15449554985375089456
        ChildIds: 7176420866540339290
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
        Id: 15449554985375089456
        Name: "Sword Swipe Half Circle VFX"
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
        ParentId: 12444717519163057619
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.8
              G: 0.8
              B: 0.8
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              R: 0.65
              G: 0.581125796
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
            Float: 0.35
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
            Id: 860140904207434054
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 7176420866540339290
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
        ParentId: 12444717519163057619
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
          Pitch: -500
          Volume: 1.2
          Falloff: 3600
          Radius: 400
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
    }
    Assets {
      Id: 860140904207434054
      Name: "Sword Swipe Half Circle VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_sword_swipe_01"
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
  SerializationVersion: 65
}
