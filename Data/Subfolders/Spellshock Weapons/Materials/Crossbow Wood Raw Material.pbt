Assets {
  Id: 4068631652880549734
  Name: "Crossbow Wood Raw Material"
  PlatformAssetType: 13
  SerializationVersion: 65
  CustomMaterialAsset {
    BaseMaterialId: 7754470856388882901
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.309999943
          G: 0.15397349
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 0.2
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.4
      }
    }
    Assets {
      Id: 7754470856388882901
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
  }
}
