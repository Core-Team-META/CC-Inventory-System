Assets {
  Id: 9343169656008961315
  Name: "Searchable Military"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2819668787437551468
      Objects {
        Id: 2819668787437551468
        Name: "Searchable Military"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3417767820271942384
        ChildIds: 1202695185646743770
        ChildIds: 7522996731402334958
        ChildIds: 512184300179459894
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 2819668787437551468
            }
          }
          Overrides {
            Name: "cs:LootTable"
            String: "BasicMobTrash"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot"
            Int: 2
          }
          Overrides {
            Name: "cs:ItemCountMin"
            Int: 2
          }
          Overrides {
            Name: "cs:ItemCountMax"
            Int: 10
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:LootTable:tooltip"
            String: "The loot table to pull items from"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot:tooltip"
            String: "The time in minutes it takes to reset the loot for this contianer."
          }
          Overrides {
            Name: "cs:ItemCountMin:tooltip"
            String: "The amount of items to generate into the container"
          }
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
        Id: 1202695185646743770
        Name: "ItemSystems_StashInstance"
        Transform {
          Location {
            X: -243.310425
            Y: 2.69184113
            Z: -3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2819668787437551468
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 2491715428655474686
          }
        }
      }
      Objects {
        Id: 7522996731402334958
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 2819668787437551468
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
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
        Id: 512184300179459894
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
        ParentId: 2819668787437551468
        ChildIds: 428321302984986662
        ChildIds: 8362813877769668488
        ChildIds: 15876904646972592166
        ChildIds: 15264742105472356080
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
        Id: 428321302984986662
        Name: "Military Epic Crate Base"
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
        ParentId: 512184300179459894
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7702486053253128313
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8362813877769668488
        Name: "Military Epic Crate Hinge"
        Transform {
          Location {
            X: 40.84375
            Y: -56.2695313
            Z: 86.530304
          }
          Rotation {
          }
          Scale {
            X: 1.14271653
            Y: 1.14271653
            Z: 1.14271653
          }
        }
        ParentId: 512184300179459894
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14803841533992348173
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15876904646972592166
        Name: "Military Epic Crate Hinge"
        Transform {
          Location {
            X: -40.2890625
            Y: -56.2695313
            Z: 86.530304
          }
          Rotation {
          }
          Scale {
            X: 1.14271653
            Y: 1.14271653
            Z: 1.14271653
          }
        }
        ParentId: 512184300179459894
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14803841533992348173
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15264742105472356080
        Name: "Military Epic Crate Lid"
        Transform {
          Location {
            Y: -61.6318359
            Z: 84.7256775
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 512184300179459894
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11001788240134690440
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 198353679974341757
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 7702486053253128313
      Name: "Military Epic Crate Base"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_mil_crate_003_ref"
      }
    }
    Assets {
      Id: 14803841533992348173
      Name: "Military Rare Crate Hinge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_mil_crate_hinge_002_ref"
      }
    }
    Assets {
      Id: 11001788240134690440
      Name: "Military Epic Crate Lid"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_mil_crate_lid_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
