Assets {
  Id: 8087427832369581965
  Name: "LightningGauntlet_PowerupSFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6150263895968001364
      Objects {
        Id: 6150263895968001364
        Name: "LightningGauntlet_PowerupSFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15778795352663330980
        ChildIds: 3193200476020037438
        UnregisteredParameters {
        }
        Lifespan: 4
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
        Id: 3193200476020037438
        Name: "ClientContext"
        Transform {
          Location {
            X: -2.95605469
            Y: 2.47412109
            Z: -4.35015869
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6150263895968001364
        ChildIds: 10022458605977215195
        ChildIds: 14021224620844235482
        ChildIds: 3066096462323202630
        ChildIds: 4655418796684035091
        ChildIds: 17539273975527018402
        ChildIds: 6081120165784623430
        ChildIds: 5825316427492740851
        ChildIds: 17487128985289027219
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
        Id: 10022458605977215195
        Name: "SciFi Energy Airy Powerup 01 SFX"
        Transform {
          Location {
            Z: 140
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
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
            Id: 12130383381846444979
          }
          AutoPlay: true
          Volume: 0.8
          Falloff: 2000
          Radius: 400
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 14021224620844235482
        Name: "Sparkle Energy Powerup 01 SFX"
        Transform {
          Location {
            Z: 140
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
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
            Id: 14973812740098869880
          }
          AutoPlay: true
          Volume: 0.5
          Falloff: 2000
          Radius: 400
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 3066096462323202630
        Name: "VFX Repeat Play Trigger"
        Transform {
          Location {
            X: -382.557709
            Y: -835.461121
            Z: -918.054077
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 4655418796684035091
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0.15
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 0
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 0.5
              Y: 2
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 9039884827382266299
          }
        }
      }
      Objects {
        Id: 4655418796684035091
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: -22
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.159470052
              B: 0.86
              A: 1
            }
          }
          Overrides {
            Name: "bp:Velocity Min"
            Vector {
              Z: 5
            }
          }
          Overrides {
            Name: "bp:Velocity Max"
            Vector {
              Z: 15
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 0.45
              Y: 0.45
              Z: 0.45
            }
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.222913712
              B: 0.99
              A: 1
            }
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
            Id: 5188278867866707632
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
      Objects {
        Id: 17539273975527018402
        Name: "VFX Repeat Play Trigger"
        Transform {
          Location {
            X: -382.557709
            Y: -835.461121
            Z: -918.054077
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 6081120165784623430
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0.15
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 0
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 0.5
              Y: 2
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 9039884827382266299
          }
        }
      }
      Objects {
        Id: 6081120165784623430
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 3
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.159470052
              B: 0.86
              A: 1
            }
          }
          Overrides {
            Name: "bp:Velocity Min"
            Vector {
              Z: 5
            }
          }
          Overrides {
            Name: "bp:Velocity Max"
            Vector {
              Z: 15
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 0.45
              Y: 0.45
              Z: 0.45
            }
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.222913712
              B: 0.99
              A: 1
            }
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
            Id: 5188278867866707632
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
      Objects {
        Id: 5825316427492740851
        Name: "VFX Repeat Play Trigger"
        Transform {
          Location {
            X: -382.557709
            Y: -835.461121
            Z: -918.054077
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "cs:VFX"
            ObjectReference {
              SubObjectId: 17487128985289027219
            }
          }
          Overrides {
            Name: "cs:AutoStart"
            Bool: true
          }
          Overrides {
            Name: "cs:StartDelay"
            Float: 0.15
          }
          Overrides {
            Name: "cs:RepeatCount"
            Int: 0
          }
          Overrides {
            Name: "cs:RepeatIntervalRange"
            Vector2 {
              X: 0.5
              Y: 2
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 9039884827382266299
          }
        }
      }
      Objects {
        Id: 17487128985289027219
        Name: "Cast Burst Ring VFX"
        Transform {
          Location {
            Z: 18
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3193200476020037438
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 12
          }
          Overrides {
            Name: "bp:Count"
            Int: 4
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.159470052
              B: 0.86
              A: 1
            }
          }
          Overrides {
            Name: "bp:Velocity Min"
            Vector {
              Z: 5
            }
          }
          Overrides {
            Name: "bp:Velocity Max"
            Vector {
              Z: 15
            }
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 0.45
              Y: 0.45
              Z: 0.45
            }
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.222913712
              B: 0.99
              A: 1
            }
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
            Id: 5188278867866707632
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
    }
    Assets {
      Id: 12130383381846444979
      Name: "SciFi Energy Airy Powerup 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_scifi_energy_airy_powerup_01_Cue_ref"
      }
    }
    Assets {
      Id: 14973812740098869880
      Name: "Sparkle Energy Powerup 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sparkle_energy_powerup_01_Cue_ref"
      }
    }
    Assets {
      Id: 5188278867866707632
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
