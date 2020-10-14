Assets {
  Id: 7436971458701454068
  Name: "ITEM_Armor_TestBody"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14221847442462413670
      Objects {
        Id: 14221847442462413670
        Name: "ITEM_Armor_TestBody"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7676655385465303512
        ChildIds: 4482108702189466252
        ChildIds: 11405523523718130646
        ChildIds: 15310670518771516866
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Chest Plate"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 15249919919998585029
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Armor"
          }
          Overrides {
            Name: "cs:Description"
            String: "Yoooo that\'s some cool armor you got there!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Legendary"
          }
          Overrides {
            Name: "cs:StatKey"
            String: "RareArmor"
          }
          Overrides {
            Name: "cs:SOCKET_upper_spine"
            ObjectReference {
              SubObjectId: 14221847442462413670
            }
          }
          Overrides {
            Name: "cs:DropRotation"
            Vector {
              Y: 90
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
        Id: 4482108702189466252
        Name: "Fantasy Shield 03"
        Transform {
          Location {
            X: 20.5936203
            Y: 2.79891968
            Z: -17.9512405
          }
          Rotation {
            Yaw: -89.9999695
          }
          Scale {
            X: 0.621849954
            Y: 0.621849954
            Z: 0.821470141
          }
        }
        ParentId: 14221847442462413670
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 18243069641884336388
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
        Id: 11405523523718130646
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
        ParentId: 14221847442462413670
        ChildIds: 7296968434883904505
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
        Id: 7296968434883904505
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
        ParentId: 11405523523718130646
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 14221847442462413670
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SelfId: 9699561877772177090
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
        Id: 15310670518771516866
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
        ParentId: 14221847442462413670
        ChildIds: 156156938085935806
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
        Id: 156156938085935806
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
        ParentId: 15310670518771516866
        UnregisteredParameters {
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 14221847442462413670
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SelfId: 9699561877772177090
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
      Id: 15249919919998585029
      Name: "Fantasy Gear Top 004"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Top_004"
      }
    }
    Assets {
      Id: 18243069641884336388
      Name: "Fantasy Shield 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
