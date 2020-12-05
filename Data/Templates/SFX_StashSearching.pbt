Assets {
  Id: 9618048359665944166
  Name: "SFX_StashSearching"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12151091894666429405
      Objects {
        Id: 12151091894666429405
        Name: "SFX_StashSearching"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12813004042239917352
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 8364038353463878773
          }
          AutoPlay: true
          Pitch: -471.973633
          Volume: 4
          Falloff: -1
          Radius: -1
        }
      }
      Objects {
        Id: 12813004042239917352
        Name: "ExtraSound"
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
        ParentId: 12151091894666429405
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 18353552779949508867
          }
          AutoPlay: true
          Pitch: -142.1875
          Volume: 4
          Falloff: -1
          Radius: -1
        }
      }
    }
    Assets {
      Id: 8364038353463878773
      Name: "Bones Wood Pile Search Movement 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bones_wood_pile_movement_01a_Cue_ref"
      }
    }
    Assets {
      Id: 18353552779949508867
      Name: "Crunchy Brush Foliage Movement 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_crunchy_brush_foliage_movement_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
