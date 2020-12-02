Assets {
  Id: 3392029348791641646
  Name: "Helper_ItemSystemsInventory"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1996766622101972086
      Objects {
        Id: 1996766622101972086
        Name: "Helper_ItemSystemsInventory"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9969825107233787268
        ChildIds: 8297189619817587089
        ChildIds: 12605970037677078973
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerId"
            String: ""
          }
          Overrides {
            Name: "cs:LOAD"
            String: ""
          }
          Overrides {
            Name: "cs:E1"
            String: ""
          }
          Overrides {
            Name: "cs:E2"
            String: ""
          }
          Overrides {
            Name: "cs:E3"
            String: ""
          }
          Overrides {
            Name: "cs:E4"
            String: ""
          }
          Overrides {
            Name: "cs:E5"
            String: ""
          }
          Overrides {
            Name: "cs:E6"
            String: ""
          }
          Overrides {
            Name: "cs:E7"
            String: ""
          }
          Overrides {
            Name: "cs:E8"
            String: ""
          }
          Overrides {
            Name: "cs:LOAD:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E1:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E2:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E3:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E4:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E5:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E6:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E7:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:E8:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PlayerId:isrep"
            Bool: true
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
        Id: 9969825107233787268
        Name: "Server"
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
        ParentId: 1996766622101972086
        ChildIds: 1435593343673028164
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
        Id: 1435593343673028164
        Name: "InventoryReplicator"
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
        ParentId: 9969825107233787268
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryComponent"
            ObjectReference {
              SubObjectId: 1996766622101972086
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
            Id: 1910939002984116838
          }
        }
      }
      Objects {
        Id: 8297189619817587089
        Name: "Client"
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
        ParentId: 1996766622101972086
        ChildIds: 5094200514235811791
        ChildIds: 11026318964588231323
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
        Id: 5094200514235811791
        Name: "InventoryReplicator"
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
        ParentId: 8297189619817587089
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryComponent"
            ObjectReference {
              SubObjectId: 1996766622101972086
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
            Id: 1910939002984116838
          }
        }
      }
      Objects {
        Id: 11026318964588231323
        Name: "GeometryEquipper"
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
        ParentId: 8297189619817587089
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryComponent"
            ObjectReference {
              SubObjectId: 1996766622101972086
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
            Id: 11439501495497780355
          }
        }
      }
      Objects {
        Id: 12605970037677078973
        Name: "ItemSystems_EquipmentHandler"
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
        ParentId: 1996766622101972086
        UnregisteredParameters {
          Overrides {
            Name: "cs:Helper_ItemSystemInventory"
            ObjectReference {
              SubObjectId: 1996766622101972086
            }
          }
          Overrides {
            Name: "cs:ItemSystems_Database"
            AssetReference {
              Id: 4685988691808682848
            }
          }
          Overrides {
            Name: "cs:ItemSystems_Item"
            AssetReference {
              Id: 13866541763018299709
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
        Script {
          ScriptAsset {
            Id: 123983427086028671
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
