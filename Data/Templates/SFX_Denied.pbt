Assets {
  Id: 8324207555291993451
  Name: "SFX_Denied"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10722407312561325193
      Objects {
        Id: 10722407312561325193
        Name: "SFX_Denied"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15279824680781497839
        Lifespan: 2
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
        Id: 15279824680781497839
        Name: "Button Click Press Core 01 SFX"
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
        ParentId: 10722407312561325193
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 8077192095047759529
          }
          AutoPlay: true
          Transient: true
          Pitch: 343.035156
          Volume: 0.861717
          Falloff: -1
          Radius: -1
        }
      }
    }
    Assets {
      Id: 8077192095047759529
      Name: "UI Buzzer Error Denied 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_buzzer_error_denied_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
