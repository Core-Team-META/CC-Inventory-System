Assets {
  Id: 16497534872053547086
  Name: "Poison Blast Edgeline Material"
  PlatformAssetType: 13
  SerializationVersion: 65
  CustomMaterialAsset {
    BaseMaterialId: 6186751883754370952
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          G: 0.289999962
          B: 0.0595363975
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          G: 0.299999952
          B: 0.00794706214
          A: 1
        }
      }
      Overrides {
        Name: "noise spread"
        Float: 28.5691795
      }
      Overrides {
        Name: "noise sharpness"
        Float: 0.0132775279
      }
      Overrides {
        Name: "overall brightness"
        Float: 0.257533252
      }
    }
    Assets {
      Id: 6186751883754370952
      Name: "Edgeline Wavy Object Fade Advanced"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_add_edgeline_local"
      }
    }
  }
}
