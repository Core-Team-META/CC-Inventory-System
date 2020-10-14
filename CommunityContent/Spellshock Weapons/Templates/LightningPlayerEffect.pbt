Assets {
  Id: 13239059730332586169
  Name: "LightningPlayerEffect"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2210863721902327162
      Objects {
        Id: 2210863721902327162
        Name: "LightningPlayerEffect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17676727218423789539
        ChildIds: 10830480122235491943
        ChildIds: 6685201349283992134
        ChildIds: 5669701110750418270
        UnregisteredParameters {
        }
        Lifespan: 1.2
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Fire"
        }
      }
      Objects {
        Id: 17676727218423789539
        Name: "Electricity Spark 01 SFX"
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
        ParentId: 2210863721902327162
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 10543257487140463544
          }
          AutoPlay: true
          Repeat: true
          Volume: 1
          Falloff: 3600
          Radius: 400
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 10830480122235491943
        Name: "Plasma Ball Projectile VFX"
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
        ParentId: 2210863721902327162
        UnregisteredParameters {
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
            Id: 14993209367206018702
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 6685201349283992134
        Name: "PlayerEffectServer"
        Transform {
          Location {
            Y: -3.90808105
            Z: -29.5769043
          }
          Rotation {
          }
          Scale {
            X: 0.299648404
            Y: 0.604049683
            Z: 1.42687845
          }
        }
        ParentId: 2210863721902327162
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2210863721902327162
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 5669701110750418270
            }
          }
          Overrides {
            Name: "cs:DamageMin"
            Int: 42
          }
          Overrides {
            Name: "cs:DamageMax"
            Int: 54
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 16609679748208323482
          }
        }
      }
      Objects {
        Id: 5669701110750418270
        Name: "EffectTrigger"
        Transform {
          Location {
            Y: -3.90808105
            Z: -10
          }
          Rotation {
          }
          Scale {
            X: 0.3
            Y: 0.75
            Z: 1
          }
        }
        ParentId: 2210863721902327162
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
    }
    Assets {
      Id: 10543257487140463544
      Name: "Electricity Spark 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_electricity_spark_01_Cue_ref"
      }
    }
    Assets {
      Id: 14993209367206018702
      Name: "Plasma Ball Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasmaball_projectile"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
