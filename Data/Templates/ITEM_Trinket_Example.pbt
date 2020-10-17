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
        ParentId: 4781671109827199097
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
          Overrides {
            Name: "cs:StatKey"
            String: "LuckyTrinket"
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
