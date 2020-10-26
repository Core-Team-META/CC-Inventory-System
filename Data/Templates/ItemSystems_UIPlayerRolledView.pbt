Assets {
  Id: 9600591366794889133
  Name: "ItemSystems_UIPlayerRolledView"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 79725812983082218
      Objects {
        Id: 79725812983082218
        Name: "ItemSystems_UIPlayerRolledView"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14663807542222216110
        ChildIds: 10102523613977924944
        ChildIds: 11813385495726280675
        ChildIds: 5116774336459109056
        ChildIds: 15391716012996912001
        ChildIds: 2274297851009395695
        UnregisteredParameters {
          Overrides {
            Name: "cs:LootIcon"
            ObjectReference {
              SubObjectId: 5116774336459109056
            }
          }
          Overrides {
            Name: "cs:PassIcon"
            ObjectReference {
              SubObjectId: 15391716012996912001
            }
          }
          Overrides {
            Name: "cs:RolledText"
            ObjectReference {
              SubObjectId: 2274297851009395695
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        Control {
          Width: 433
          Height: 52
          UIX: 48.0735474
          UIY: -39.329834
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 10102523613977924944
        Name: "UI Image"
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
        ParentId: 79725812983082218
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 50
          Height: 400
          UIX: 400
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 16967025786036962869
            }
            Color {
              A: 0.368000031
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 11813385495726280675
        Name: "UI Image"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 1.02452814e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 79725812983082218
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 443
          Height: 200
          UIX: -20.3174438
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 13827917162168388463
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 5116774336459109056
        Name: "LootIcon"
        Transform {
          Location {
            X: -2222.62573
            Y: 1104.08191
            Z: -2.28881836e-05
          }
          Rotation {
            Yaw: 61.2301712
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 79725812983082218
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        Control {
          Width: 50
          Height: 40
          UIX: 30
          UIY: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 6496470667387325629
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 15391716012996912001
        Name: "PassIcon"
        Transform {
          Location {
            X: -2222.62573
            Y: 1104.08191
            Z: -2.28881836e-05
          }
          Rotation {
            Yaw: 61.2301712
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 79725812983082218
        ChildIds: 4984683759249021220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        Control {
          Width: 50
          Height: 13
          UIX: 30
          UIY: 25
          RotationAngle: 45
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 13778967266379385506
            }
            Color {
              R: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 4984683759249021220
        Name: "PassIcon"
        Transform {
          Location {
            X: -2222.62573
            Y: 1104.08191
            Z: -2.28881836e-05
          }
          Rotation {
            Yaw: 61.2301712
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15391716012996912001
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 50
          Height: 13
          UIX: 25
          UIY: 6.5
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 13778967266379385506
            }
            Color {
              R: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 2274297851009395695
        Name: "RollText"
        Transform {
          Location {
            X: -2222.62573
            Y: 1104.08191
            Z: -2.28881836e-05
          }
          Rotation {
            Yaw: 61.2301712
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 79725812983082218
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 500
          Height: 38
          UIX: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Coderz Rolled 100 For Great Sword!"
            Color {
              R: 0.98
              G: 0.97351
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:left"
            }
            AutoWrapText: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 16967025786036962869
      Name: "BG Highlighted 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundHighlighted_020"
      }
    }
    Assets {
      Id: 13827917162168388463
      Name: "UI Basic Frame 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Frame_001"
      }
    }
    Assets {
      Id: 6496470667387325629
      Name: "Coin Purse"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_icon_CoinPurse"
      }
    }
    Assets {
      Id: 13778967266379385506
      Name: "BG Flat 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_020"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
