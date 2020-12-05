Assets {
  Id: 2705040546964747811
  Name: "SFX_Outposts_StashOpened"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3092969486938299139
      Objects {
        Id: 3092969486938299139
        Name: "SFX_StashOpened"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8955306449175285325
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 4594037435465411679
          }
          AutoPlay: true
          Transient: true
          Pitch: -245.245605
          Volume: 4
          Falloff: -1
          Radius: -1
        }
      }
      Objects {
        Id: 8955306449175285325
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
        ParentId: 3092969486938299139
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 4226371820782759643
          }
          AutoPlay: true
          Volume: 0.490224719
          Falloff: -1
          Radius: -1
        }
      }
    }
    Assets {
      Id: 4594037435465411679
      Name: "Object Fantasy Treasure Chest Open 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_object_fantasy_treasure_chest_open_01_Cue_ref"
      }
    }
    Assets {
      Id: 4226371820782759643
      Name: "Blunt Chainmail Armor Hit Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_blunt_chainmail_armor_hit_impact_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
