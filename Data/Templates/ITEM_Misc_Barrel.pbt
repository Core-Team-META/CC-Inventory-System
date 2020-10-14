Assets {
  Id: 4507323551487954050
  Name: "ITEM_Misc_Barrel"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15187230565777795458
      Objects {
        Id: 15187230565777795458
        Name: "ITEM_Misc_Barrel"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7676655385465303512
        ChildIds: 10305325436524017433
        ChildIds: 14876590347262141939
        ChildIds: 15928888428628547964
        ChildIds: 4390080506441096017
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Wooden Barrel"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 10910887468880564800
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Misc"
          }
          Overrides {
            Name: "cs:Description"
            String: "Very interesting"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Common"
          }
          Overrides {
            Name: "cs:StatKey"
            String: "CommonMisc"
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
        Id: 10305325436524017433
        Name: "Wooden Barrel"
        Transform {
          Location {
            X: 3.36110926
            Y: -1.49793601
            Z: -14.4127426
          }
          Rotation {
            Yaw: 35.7811546
          }
          Scale {
            X: 0.61749506
            Y: 0.61749506
            Z: 0.61749506
          }
        }
        ParentId: 15187230565777795458
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3360125572761523200
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
        Id: 14876590347262141939
        Name: "PickupTrigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.2007426
            Y: 1.2007426
            Z: 1.2007426
          }
        }
        ParentId: 15187230565777795458
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Pickup Wooden Barrel"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 15928888428628547964
        Name: "ServerContext"
        Transform {
          Location {
            X: 220.818558
            Y: 227.014404
            Z: 25.263855
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
        ParentId: 15187230565777795458
        ChildIds: 13666815941924655950
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
          Type: Server
        }
      }
      Objects {
        Id: 13666815941924655950
        Name: "ItemSystems_LootPickup"
        Transform {
          Location {
            X: -157.469543
            Y: -5.98221111
            Z: -2.28881836e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15928888428628547964
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 15187230565777795458
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 14876590347262141939
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
            Id: 8948867192439918089
          }
        }
      }
      Objects {
        Id: 4390080506441096017
        Name: "ClientContext"
        Transform {
          Location {
            X: 220.818558
            Y: 227.014404
            Z: 25.263855
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
        ParentId: 15187230565777795458
        ChildIds: 2114743588827416764
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
        Id: 2114743588827416764
        Name: "ItemSystems_LootPickup"
        Transform {
          Location {
            X: -157.469543
            Y: -5.98221111
            Z: -2.28881836e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4390080506441096017
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 15187230565777795458
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 14876590347262141939
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
            Id: 8948867192439918089
          }
        }
      }
    }
    Assets {
      Id: 10910887468880564800
      Name: "Fantasy Barrel 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Barrel_001"
      }
    }
    Assets {
      Id: 3360125572761523200
      Name: "Wooden Barrel"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_barrel_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
