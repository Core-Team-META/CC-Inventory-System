Assets {
  Id: 801508354706908814
  Name: "ITEM_Shield_Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4129509117028474446
      Objects {
        Id: 4129509117028474446
        Name: "ITEM_Shield_Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8368475805096733658
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Example Shield"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 8406414470576079988
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Shield"
          }
          Overrides {
            Name: "cs:Description"
            String: "Defensive mode!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Uncommon"
          }
          Overrides {
            Name: "cs:StatKey"
            String: "UncommonShield"
          }
          Overrides {
            Name: "cs:SOCKET_left_wrist"
            ObjectReference {
              SubObjectId: 4129509117028474446
            }
          }
          Overrides {
            Name: "cs:DropRotation"
            Vector {
              X: 90
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8368475805096733658
        Name: "Geo"
        Transform {
          Location {
            Y: -12.9192123
          }
          Rotation {
            Yaw: -89.9998779
            Roll: 88.9418259
          }
          Scale {
            X: 0.676926196
            Y: 0.676926196
            Z: 0.676926196
          }
        }
        ParentId: 4129509117028474446
        ChildIds: 14626052061674654734
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 14626052061674654734
        Name: "Shield 04"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8368475805096733658
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16905878857680006024
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
      Id: 8406414470576079988
      Name: "Fantasy Shield 008"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Weapon_Shield_008"
      }
    }
    Assets {
      Id: 16905878857680006024
      Name: "Shield 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_shield_004"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
