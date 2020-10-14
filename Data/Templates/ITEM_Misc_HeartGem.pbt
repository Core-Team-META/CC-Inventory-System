Assets {
  Id: 16661454203177044454
  Name: "ITEM_Misc_HeartGem"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6768785850011398152
      Objects {
        Id: 6768785850011398152
        Name: "ITEM_Misc_HeartGem"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7676655385465303512
        ChildIds: 16515928861251427956
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Heart Gem"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 4032131928235511161
            }
          }
          Overrides {
            Name: "cs:MaxStackableSize"
            Int: 5
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Misc"
          }
          Overrides {
            Name: "cs:Description"
            String: "This is a pretty gem!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Epic"
          }
          Overrides {
            Name: "cs:StatKey"
            String: "UncommonMisc"
          }
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
        Id: 16515928861251427956
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 10.0505953
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6768785850011398152
        ChildIds: 2336682970432786951
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
        Id: 2336682970432786951
        Name: "Gem - Heart Polished"
        Transform {
          Location {
            X: 6.08481605e-05
            Y: -3.1671796e-05
          }
          Rotation {
            Pitch: -8.13919067
            Yaw: 36.2024384
            Roll: -5.91641235
          }
          Scale {
            X: 0.469435036
            Y: 0.469435036
            Z: 0.469435036
          }
        }
        ParentId: 16515928861251427956
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10172730993600760787
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.0400000215
              B: 0.0400000215
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
        CoreMesh {
          MeshAsset {
            Id: 11308274945998795765
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
      Id: 4032131928235511161
      Name: "Fantasy Craft Gem 010"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Crafting_Gem_010"
      }
    }
    Assets {
      Id: 11308274945998795765
      Name: "Gem - Heart Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_heart_polished_001"
      }
    }
    Assets {
      Id: 10172730993600760787
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
