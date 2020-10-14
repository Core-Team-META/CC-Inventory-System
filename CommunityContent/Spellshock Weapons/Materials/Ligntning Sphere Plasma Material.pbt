Assets {
  Id: 12510919692993052346
  Name: "Ligntning Sphere Plasma Material"
  PlatformAssetType: 13
  SerializationVersion: 65
  CustomMaterialAsset {
    BaseMaterialId: 1951593977860928200
    ParameterOverrides {
      Overrides {
        Name: "outer color"
        Color {
          G: 0.363575786
          B: 0.9
          A: 1
        }
      }
      Overrides {
        Name: "plasma scale"
        Float: 15
      }
      Overrides {
        Name: "threshold max"
        Float: 0.0556532107
      }
      Overrides {
        Name: "fresnel exponent"
        Float: 7.15589142
      }
    }
    Assets {
      Id: 1951593977860928200
      Name: "Plasma"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_plasmafield"
      }
    }
  }
}
