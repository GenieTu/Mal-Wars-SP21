Assets {
  Id: 15345805919698285804
  Name: "AC_Custom Emissive Glow Transparent_GREEN"
  PlatformAssetType: 13
  SerializationVersion: 76
  CustomMaterialAsset {
    BaseMaterialId: 3702191406046426907
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          G: 0.0900000334
          B: 0.022052981
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 2
      }
    }
    Assets {
      Id: 3702191406046426907
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
  }
}