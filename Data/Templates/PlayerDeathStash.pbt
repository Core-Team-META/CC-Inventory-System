Assets {
  Id: 14191920870304866796
  Name: "PlayerDeathStash"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9304933369625375172
      Objects {
        Id: 9304933369625375172
        Name: "PlayerDeathStash"
        Transform {
          Scale {
            X: 0.319806904
            Y: 0.319806904
            Z: 0.319806904
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8844470970207858859
        ChildIds: 13219471856575892038
        ChildIds: 10578786857281132825
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 9304933369625375172
            }
          }
          Overrides {
            Name: "cs:PLAYERID"
            String: ""
          }
          Overrides {
            Name: "cs:TIMER"
            Int: 480
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:PLAYERID:isrep"
            Bool: true
          }
        }
        Lifespan: 480
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
        Id: 8844470970207858859
        Name: "ItemSystems_StashInstancePlayerDrop"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3.12688684
            Y: 3.12688684
            Z: 3.12688684
          }
        }
        ParentId: 9304933369625375172
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 10422464894374706549
          }
        }
      }
      Objects {
        Id: 13219471856575892038
        Name: "Cube"
        Transform {
          Location {
            Z: 54.9102249
          }
          Rotation {
          }
          Scale {
            X: 2.0660553
            Y: 2.0660553
            Z: 2.0660553
          }
        }
        ParentId: 9304933369625375172
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 10578786857281132825
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
        ParentId: 9304933369625375172
        ChildIds: 8045651708886312061
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
        Id: 8045651708886312061
        Name: "Backpack"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.23931563
            Y: 1.23931563
            Z: 1.23931563
          }
        }
        ParentId: 10578786857281132825
        ChildIds: 15053038077527320830
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
        Id: 15053038077527320830
        Name: "Trash Can - Urban 01"
        Transform {
          Location {
            X: -2.88183594
            Y: 5.57519531
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.750766397
          }
        }
        ParentId: 8045651708886312061
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 13085174305471638229
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 5
          }
          Overrides {
            Name: "ma:Shared_Lights:id"
            AssetReference {
              Id: 6611378559053753307
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3135521423375055406
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
            Id: 15049846606931455745
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 15049846606931455745
      Name: "Simple Crate 150cm"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crate_simple_150cm_001"
      }
    }
    Assets {
      Id: 13085174305471638229
      Name: "Metal Painted Old 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_painted_old_001_uv"
      }
    }
    Assets {
      Id: 6611378559053753307
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
      }
    }
    Assets {
      Id: 3135521423375055406
      Name: "Wood Floor Light"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_floor_light_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
