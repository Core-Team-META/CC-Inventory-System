Assets {
  Id: 9593324994746832709
  Name: "SFX_CurrencyPickup"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13907424688885600786
      Objects {
        Id: 13907424688885600786
        Name: "SFX_GenericPickup"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11970848762654807294
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 12183593925441180705
          }
          AutoPlay: true
          Transient: true
          Pitch: 265.955566
          Volume: 0.659701228
          Falloff: -1
          Radius: 5000
        }
      }
      Objects {
        Id: 11970848762654807294
        Name: "SFX_GenericPickup"
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
        ParentId: 13907424688885600786
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 3333158692063901028
          }
          AutoPlay: true
          Transient: true
          Pitch: 265.955566
          Volume: 0.659701228
          Falloff: -1
          Radius: 5000
        }
      }
    }
    Assets {
      Id: 12183593925441180705
      Name: "Cash Coin Small Collect 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cash_coin_small_collect_01_Cue_ref"
      }
    }
    Assets {
      Id: 3333158692063901028
      Name: "Coin Collect Multiple 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_crunchy_coin_collect_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
