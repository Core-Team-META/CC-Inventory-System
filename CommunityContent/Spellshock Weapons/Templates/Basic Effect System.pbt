Assets {
  Id: 2356847573260080633
  Name: "Basic Effect System"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13965279790418399636
      Objects {
        Id: 13965279790418399636
        Name: "Basic Effect System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 240187906184986877
        ChildIds: 8664077790785765197
        UnregisteredParameters {
          Overrides {
            Name: "cs:DefaultMovementSettings"
            ObjectReference {
              SubObjectId: 240187906184986877
            }
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
      Objects {
        Id: 240187906184986877
        Name: "Player Settings"
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
        ParentId: 13965279790418399636
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Settings {
          PlayerMovementSettings {
            WalkSpeed: 640
            MaxAcceleration: 1800
            WalkableFloorAngle: 44
            JumpMaxCount: 1
            JumpVelocity: 900
            GroundFriction: 8
            GravityScale: 1.9
            MaxSwimSpeed: 420
            Buoyancy: 1
            TouchForceFactor: 1
            BrakingDecelerationFlying: 600
            MaxFlightSpeed: 600
            MovementControlMode {
              Value: "mc:emovementcontrolmode:lookrelative"
            }
            LookControlMode {
              Value: "mc:elookcontrolmode:relative"
            }
            FacingMode {
              Value: "mc:efacingmode:faceaimalways"
            }
            DefaultRotationRate: 540
            SlideRotationRate: 20
            LookAtCursorProjectionPlane {
              Value: "mc:eprojectionplane:xy"
            }
            MountedMaxAcceleration: 1800
            MountedWalkSpeed: 1200
            MountedJumpMaxCount: 1
            MountedJumpVelocity: 900
            HeadVisibleToSelf: true
            IsSlideEnabled: true
            IsCrouchEnabled: true
            IsJumpEnabled: true
            CanMoveForward: true
            CanMoveBackward: true
            CanMoveLeft: true
            CanMoveRight: true
            AppearanceChannelingTime: 2
            MountChannelingTime: 2
            FlipOnMultiJump: true
          }
        }
      }
      Objects {
        Id: 8664077790785765197
        Name: "BasicEffectSystemServer"
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
        ParentId: 13965279790418399636
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 13965279790418399636
            }
          }
          Overrides {
            Name: "cs:API_EffectSystem"
            AssetReference {
              Id: 12177059255212895484
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 11191759831199320020
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Bundle of all the magical weapons from Spellshock game.\r\nThis package is a neat example of advanced use of Weapon system in Core.\r\nYou are free to grab, edit, and put these weapons into your games.\r\n\r\nNote: To see how to setup the weapons, put the template \"_Spellshock Weapons Example Setup\" into the hierarchy\r\nand play with the weapons. \r\n\r\nWhat\'s Included:\r\n- Weapons: Fire Staff, Ice Sword, Poison Crossbow, Lightning Gauntlet and Rock Hammer\r\n- Objects: Effect System, Effect Annoncer and Abilities UI\r\n- Example setup template"
  }
  SerializationVersion: 65
  DirectlyPublished: true
}
