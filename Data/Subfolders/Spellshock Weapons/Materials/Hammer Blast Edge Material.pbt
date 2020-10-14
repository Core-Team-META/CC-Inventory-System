Assets {
  Id: 17059192687579939498
  Name: "Hammer Blast Edge Material"
  PlatformAssetType: 13
  SerializationVersion: 65
  CustomMaterialAsset {
    BaseMaterialId: 2721411165435899975
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 0.5
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          R: 0.679999948
          G: 0.594437063
          A: 1
        }
      }
      Overrides {
        Name: "edge line color"
        Color {
          R: 0.51
          G: 0.364768207
          A: 1
        }
      }
      Overrides {
        Name: "vertical fade"
        Float: 2.77198219
      }
      Overrides {
        Name: "edge line brightness"
        Float: 26.13978
      }
      Overrides {
        Name: "fresnel"
        Float: 1
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 23.5438957
      }
      Overrides {
        Name: "noise spread"
        Float: 0
      }
    }
    Assets {
      Id: 2721411165435899975
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
  }
}
