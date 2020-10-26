Assets {
  Id: 14350940540964847784
  Name: "ITEM_Trinket_Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18299769885140533039
      Objects {
        Id: 18299769885140533039
        Name: "ITEM_Trinket_Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4649353316498909807
        ChildIds: 7740892563696243909
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Example Trinket"
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 3271618261984736390
            }
          }
          Overrides {
            Name: "cs:ItemType"
            String: "Trinket"
          }
          Overrides {
            Name: "cs:Description"
            String: "Luck is on your side! Have a higher chance to perform a critical strike!"
          }
          Overrides {
            Name: "cs:Rarity"
            String: "Rare"
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
        Id: 7740892563696243909
        Name: "Stats"
        Transform {
          Location {
            X: 88.1671448
            Y: 144.887909
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18299769885140533039
        ChildIds: 2939681118950655420
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
      }
      Objects {
        Id: 2939681118950655420
        Name: "Base"
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
        ParentId: 7740892563696243909
        ChildIds: 12471745645880781599
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
        Id: 12471745645880781599
        Name: "CritChance"
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
        ParentId: 2939681118950655420
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
    }
    Assets {
      Id: 3271618261984736390
      Name: "Fantasy Card 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Card_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
