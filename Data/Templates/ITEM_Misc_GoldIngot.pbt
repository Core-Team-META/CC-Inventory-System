Assets {
  Id: 8111517688277291983
  Name: "ITEM_Misc_GoldIngot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 470904502169642274
      Objects {
        Id: 470904502169642274
        Name: "ITEM_Misc_GoldIngot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7676655385465303512
        ChildIds: 14344158140971094363
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Gold Ingot"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 15594644962261021416
            }
          }
          Overrides {
            Name: "cs:MaxStackableSize"
            Int: 3
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Misc"
          }
          Overrides {
            Name: "cs:Description"
            String: "Shiny!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Uncommon"
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14344158140971094363
        Name: "Scifi Ship Engine 03"
        Transform {
          Location {
            X: -1.23787859e-05
            Y: -8.92167554e-06
            Z: 21.3645706
          }
          Rotation {
            Pitch: -0.186340332
            Yaw: -106.969055
            Roll: -178.857819
          }
          Scale {
            X: 0.124337226
            Y: 0.252951711
            Z: 0.118734151
          }
        }
        ParentId: 470904502169642274
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10172730993600760787
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 10172730993600760787
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 10172730993600760787
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10780552303138620685
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
      Id: 15594644962261021416
      Name: "Fantasy Gold 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Gold_002"
      }
    }
    Assets {
      Id: 10780552303138620685
      Name: "Scifi Ship Engine 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_scf_ship_engine_003_ref"
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
