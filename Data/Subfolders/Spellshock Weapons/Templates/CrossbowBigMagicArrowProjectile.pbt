Assets {
  Id: 16919685610235939161
  Name: "CrossbowBigMagicArrowProjectile"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13038499674212038118
      Objects {
        Id: 13038499674212038118
        Name: "CrossbowBigMagicArrowProjectile"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15778795352663330980
        ChildIds: 10939959384031981060
        UnregisteredParameters {
        }
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
        Id: 10939959384031981060
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
        ParentId: 13038499674212038118
        ChildIds: 8822037651180199122
        ChildIds: 16154042840163458121
        ChildIds: 16087169404165971906
        ChildIds: 13157839468975318449
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
        Id: 8822037651180199122
        Name: "Cone"
        Transform {
          Location {
            X: -18.7625732
            Y: -0.172729492
            Z: -3.8580074e-06
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 0.142157152
            Y: 0.142157152
            Z: 0.393754423
          }
        }
        ParentId: 10939959384031981060
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 6271704335464012675
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16154042840163458121
        Name: "Point Light"
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
        ParentId: 10939959384031981060
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Light {
          Intensity: 25
          Color {
            G: 0.63
            B: 0.0792715102
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 450
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 16087169404165971906
        Name: "Cylinder"
        Transform {
          Location {
            X: -88.6441345
            Y: 0.0863647461
            Z: -1.96879409e-06
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 0.028421009
            Y: 0.0284210686
            Z: 1.55738688
          }
        }
        ParentId: 10939959384031981060
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13950225922132296555
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13157839468975318449
        Name: "Feathers"
        Transform {
          Location {
            X: -164.307037
            Y: 0.0863647461
          }
          Rotation {
          }
          Scale {
            X: 0.59718293
            Y: 0.59718293
            Z: 0.59718293
          }
        }
        ParentId: 10939959384031981060
        ChildIds: 10711161908541552259
        ChildIds: 1461413684622347212
        ChildIds: 13065378488525166179
        ChildIds: 6403682026014998491
        UnregisteredParameters {
        }
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
        Id: 10711161908541552259
        Name: "Feather"
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
        ParentId: 13157839468975318449
        ChildIds: 6287045926467813521
        ChildIds: 6720956481889786481
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 6287045926467813521
        Name: "Curved Wedge"
        Transform {
          Location {
            X: -5
          }
          Rotation {
            Pitch: 90
            Yaw: 12.0947752
            Roll: -77.9052124
          }
          Scale {
            X: 0.01
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 10711161908541552259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6720956481889786481
        Name: "Curved Wedge"
        Transform {
          Location {
            X: 10
            Y: -5
          }
          Rotation {
            Pitch: 90
            Roll: -90
          }
          Scale {
            X: 0.01
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 10711161908541552259
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1461413684622347212
        Name: "Feather"
        Transform {
          Location {
          }
          Rotation {
            Roll: 89.9999771
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13157839468975318449
        ChildIds: 4377810215346657907
        ChildIds: 3995869426494876006
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 4377810215346657907
        Name: "Curved Wedge"
        Transform {
          Location {
            X: -5
          }
          Rotation {
            Pitch: 90
            Yaw: 12.0947752
            Roll: -77.9052124
          }
          Scale {
            X: 0.01
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 1461413684622347212
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3995869426494876006
        Name: "Curved Wedge"
        Transform {
          Location {
            X: 10
            Y: -5
          }
          Rotation {
            Pitch: 90
            Roll: -90
          }
          Scale {
            X: 0.01
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 1461413684622347212
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13065378488525166179
        Name: "Feather"
        Transform {
          Location {
          }
          Rotation {
            Roll: 179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13157839468975318449
        ChildIds: 28891922579513991
        ChildIds: 11762794219282553829
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 28891922579513991
        Name: "Curved Wedge"
        Transform {
          Location {
            X: -5
          }
          Rotation {
            Pitch: 90
            Yaw: 12.0947752
            Roll: -77.9052124
          }
          Scale {
            X: 0.01
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 13065378488525166179
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11762794219282553829
        Name: "Curved Wedge"
        Transform {
          Location {
            X: 10
            Y: -5
          }
          Rotation {
            Pitch: 90
            Roll: -90
          }
          Scale {
            X: 0.01
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 13065378488525166179
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6403682026014998491
        Name: "Feather"
        Transform {
          Location {
          }
          Rotation {
            Roll: -90.0000534
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13157839468975318449
        ChildIds: 12960117343000490672
        ChildIds: 985967140802145800
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 12960117343000490672
        Name: "Curved Wedge"
        Transform {
          Location {
            X: -5
          }
          Rotation {
            Pitch: 90
            Yaw: 12.0947752
            Roll: -77.9052124
          }
          Scale {
            X: 0.01
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 6403682026014998491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 985967140802145800
        Name: "Curved Wedge"
        Transform {
          Location {
            X: 10
            Y: -5
          }
          Rotation {
            Pitch: 90
            Roll: -90
          }
          Scale {
            X: 0.01
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 6403682026014998491
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7470198789909491565
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10733938494793341403
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 6271704335464012675
      Name: "Cone"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_001"
      }
    }
    Assets {
      Id: 13950225922132296555
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 10733938494793341403
      Name: "Curved Wedge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
