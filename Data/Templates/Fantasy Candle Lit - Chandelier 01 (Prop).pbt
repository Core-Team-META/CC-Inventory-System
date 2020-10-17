Assets {
  Id: 15409652044626030823
  Name: "Fantasy Candle Lit - Chandelier 01 (Prop)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3703753476620589350
      Objects {
        Id: 3703753476620589350
        Name: "Chandelier - Lit (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2911565545245428940
        ChildIds: 15397068809903863370
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
        Id: 2911565545245428940
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
        ParentId: 3703753476620589350
        ChildIds: 15101537045817370924
        ChildIds: 16062550528381749255
        ChildIds: 6429460207941880424
        ChildIds: 9523140155287188382
        ChildIds: 11127189025090943852
        ChildIds: 18157915426475768385
        ChildIds: 15955216771311931300
        ChildIds: 3734461152613153714
        ChildIds: 16393815319894009875
        ChildIds: 18271026373636536258
        ChildIds: 13285830870442327233
        ChildIds: 5567920571411865840
        ChildIds: 17331517202376582589
        ChildIds: 5832754208665053816
        ChildIds: 14044493223849685430
        ChildIds: 7516419018419399919
        ChildIds: 16759183248345068852
        ChildIds: 14954371482088561073
        ChildIds: 1648495343515865398
        ChildIds: 6063540287651521710
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
        Id: 15101537045817370924
        Name: "Fire and Flame Burning Loop Set 01 SFX"
        Transform {
          Location {
            Z: 57.207756
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2911565545245428940
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_fireloops_01:9"
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
            Id: 3697271826593255962
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Repeat: true
            Volume: 0.5
            Falloff: 700
            Radius: 200
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
      }
      Objects {
        Id: 16062550528381749255
        Name: "Point Light"
        Transform {
          Location {
            Z: 62.0505676
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Light {
          Intensity: 10
          Color {
            R: 1
            G: 0.726868153
            B: 0.477918148
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 2000
            LocalLight {
              AttenuationRadius: 700
              PointLight {
                SourceRadius: 136.057541
                SoftSourceRadius: 350
                FallOffExponent: 8
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 6429460207941880424
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -1.16920471
            Y: 116.071732
            Z: 44.8202057
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9523140155287188382
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 0.0842704773
            Y: -116.093803
            Z: 44.8202057
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11127189025090943852
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -57.5812378
            Y: -100.657387
            Z: 44.8202057
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18157915426475768385
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 57.9599533
            Y: 100.620819
            Z: 44.8202057
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15955216771311931300
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -101.132095
            Y: -58.4291496
            Z: 44.8202057
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3734461152613153714
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -116.824722
            Y: -1.0209837
            Z: 44.8202057
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16393815319894009875
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -101.493683
            Y: 57.7423782
            Z: 44.8201981
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18271026373636536258
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -58.7515869
            Y: 99.6896744
            Z: 44.8201981
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13285830870442327233
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 99.9032516
            Y: 58.6658249
            Z: 44.8201981
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5567920571411865840
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 116.041061
            Y: 0.181018829
            Z: 44.8201981
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17331517202376582589
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 100.928123
            Y: -57.2988319
            Z: 44.8202057
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5832754208665053816
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 59.1146393
            Y: -100.379463
            Z: 44.8202057
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14044493223849685430
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 29.8552437
            Y: -51.2849
            Z: 147.376282
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7516419018419399919
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -29.855629
            Y: -51.7139702
            Z: 147.376282
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16759183248345068852
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -59.9867554
            Y: -1.32825375
            Z: 147.376282
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14954371482088561073
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: -30.1804123
            Y: 50.7388306
            Z: 147.376282
          }
          Rotation {
            Yaw: -29.7661743
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1648495343515865398
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 29.3211365
            Y: 51.5790558
            Z: 147.376282
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6063540287651521710
        Name: "Candle Flame VFX"
        Transform {
          Location {
            X: 59.3817291
            Y: 0.182502747
            Z: 147.376282
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 3
            Y: 3
            Z: 3
          }
        }
        ParentId: 2911565545245428940
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9199751096616988864
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15397068809903863370
        Name: "Chandelier"
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
        ParentId: 3703753476620589350
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 2160476303725884379
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 3697271826593255962
      Name: "Fire and Flame Burning Loop Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_nature_fireloops_ref"
      }
    }
    Assets {
      Id: 9199751096616988864
      Name: "Candle Flame VFX"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "fxsm_candleflame"
      }
    }
    Assets {
      Id: 2160476303725884379
      Name: "Chandelier"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chandelier_001"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "tm_fan_chandelier_001_lit_01"
    }
  }
  SerializationVersion: 65
}
