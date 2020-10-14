Assets {
  Id: 329370052577748377
  Name: "Poison Blast Plasma Material"
  PlatformAssetType: 13
  SerializationVersion: 65
  CustomMaterialAsset {
    BaseMaterialId: 1951593977860928200
    ParameterOverrides {
      Overrides {
        Name: "plasma scale"
        Float: 20.4617939
      }
      Overrides {
        Name: "speed"
        Vector {
          Z: 20
        }
      }
      Overrides {
        Name: "outer color"
        Color {
          R: 0.0370860547
          G: 0.399999976
          A: 1
        }
      }
      Overrides {
        Name: "plasma inner color"
        Color {
          R: 0.10066244
          B: 0.76
          A: 1
        }
      }
      Overrides {
        Name: "plasma outer color"
        Color {
          R: 0.290000021
          G: 0.322913945
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          G: 0.26
          B: 0.110198721
          A: 1
        }
      }
      Overrides {
        Name: "fresnel exponent"
        Float: 10
      }
      Overrides {
        Name: "threshold max"
        Float: 0.252963394
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
