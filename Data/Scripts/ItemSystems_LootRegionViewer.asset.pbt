Assets {
  Id: 5744580860212442577
  Name: "ItemSystems_LootRegionViewer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Inventory_Regions"
        AssetReference {
          Id: 8989902728594184160
        }
      }
      Overrides {
        Name: "cs:LootFolder"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:DEBUG_DrawDistanceChecks"
        Bool: false
      }
      Overrides {
        Name: "cs:DEBUG_DrawDistanceChecks:tooltip"
        String: "Draw debug lines showing the nearest loot that is being searched."
      }
    }
  }
  SerializationVersion: 68
}
