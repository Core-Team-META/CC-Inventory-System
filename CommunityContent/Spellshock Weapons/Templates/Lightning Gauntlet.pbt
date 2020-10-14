Assets {
  Id: 6565826758334766100
  Name: "Lightning Gauntlet"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15240125699500579261
      Objects {
        Id: 15240125699500579261
        Name: "Lightning Gauntlet"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15778795352663330980
        ChildIds: 12317280846058566209
        ChildIds: 7027289336009869051
        ChildIds: 13435316948455967562
        ChildIds: 16044269290875442902
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
            SubObjectId: 13435316948455967562
          }
          Weapon {
            ProjectileAssetRef {
              Id: 3861852036945402708
            }
            MuzzleFlashAssetRef {
              Id: 7231426671945014176
            }
            TrailAssetRef {
              Id: 5464522536868876932
            }
            ImpactAssetRef {
              Id: 4001343813651452891
            }
            Muzzle {
              Location {
                X: 20
                Y: -20
                Z: 20
              }
            }
            AnimationSet: "unarmed_stance"
            OutOfAmmoSfxAssetRef {
              Id: 1070233720872076224
            }
            ReloadSfxAssetRef {
              Id: 8087427832369581965
            }
            ImpactProjectileAssetRef {
              Id: 4001343813651452891
            }
            IsHitscan: true
            BeamAssetRef {
              Id: 841534158063459245
            }
            BurstCount: 999
            BurstDuration: 6
            BurstStopsWithRelease: true
            Range: 2500
            ImpactPlayerAssetRef {
              Id: 1493178398410914241
            }
            ReticleType {
              Value: "mc:ereticletype:crosshair"
            }
            MaxAmmo: 20
            AmmoType: "rounds"
            MultiShot: 1
            ProjectileSpeed: 5000
            ProjectileLifeSpan: 10
            ProjectileGravity: 0.5
            ProjectileLength: 50
            ProjectileRadius: 20
            SpreadMin: 2
            SpreadMax: 5
            SpreadDecreaseSpeed: 6
            SpreadPenaltyPerShot: 0.6
            DefaultAbility {
              SubObjectId: 17898734017635138445
            }
            ReloadAbility {
              SubObjectId: 5565765950456784084
            }
          }
        }
      }
      Objects {
        Id: 12317280846058566209
        Name: "EquipmentPlayerPropertiesServer"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15240125699500579261
        ChildIds: 8232033024759943366
        UnregisteredParameters {
          Overrides {
            Name: "cs:API_EffectSystem"
            AssetReference {
              Id: 12177059255212895484
            }
          }
          Overrides {
            Name: "cs:AnimationStance"
            String: "unarmed_stance"
          }
          Overrides {
            Name: "cs:MaxHealth"
            Int: 320
          }
          Overrides {
            Name: "cs:WalkSpeed"
            Float: 650
          }
          Overrides {
            Name: "cs:JumpVelocity"
            Float: 960
          }
          Overrides {
            Name: "cs:JumpCount"
            Int: 1
          }
          Overrides {
            Name: "cs:RegenSpeed"
            Float: 0.02
          }
          Overrides {
            Name: "cs:CriticalHitChance"
            Float: 0.015
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 16048961702191665327
          }
        }
      }
      Objects {
        Id: 8232033024759943366
        Name: "PlayerHealthRegenServer"
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
        ParentId: 12317280846058566209
        UnregisteredParameters {
          Overrides {
            Name: "cs:Equipment"
            ObjectReference {
              SelfId: 176847660647657668
              SubObjectId: 921018252173873156
              InstanceId: 15004481855279617850
              TemplateId: 16111917116547356858
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 10722060238833561793
          }
        }
      }
      Objects {
        Id: 7027289336009869051
        Name: "Abilities"
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
        ParentId: 15240125699500579261
        ChildIds: 17898734017635138445
        ChildIds: 1736514383290548554
        ChildIds: 5565765950456784084
        ChildIds: 1852574016173115394
        ChildIds: 8135863014981245103
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Abilities_4"
        }
      }
      Objects {
        Id: 17898734017635138445
        Name: "Zap"
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
        ParentId: 7027289336009869051
        ChildIds: 12935762933003576147
        ChildIds: 11903827641622637269
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.05
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 0.26
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "unarmed_magic_bolt"
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
      }
      Objects {
        Id: 12935762933003576147
        Name: "WeaponProjectileAttackServer"
        Transform {
          Location {
            X: 545.710449
            Y: 971.516785
            Z: -225
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17898734017635138445
        UnregisteredParameters {
          Overrides {
            Name: "cs:Weapon"
            ObjectReference {
              SubObjectId: 15240125699500579261
            }
          }
          Overrides {
            Name: "cs:AttackAbility"
            ObjectReference {
              SubObjectId: 17898734017635138445
            }
          }
          Overrides {
            Name: "cs:DamageAPI"
            AssetReference {
              Id: 4925956028702855292
            }
          }
          Overrides {
            Name: "cs:Damage"
            Int: 32
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 3858709598100711469
          }
        }
      }
      Objects {
        Id: 11903827641622637269
        Name: "ClientContext"
        Transform {
          Location {
            X: -9.03198242
            Y: 1316.37744
            Z: -225
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17898734017635138445
        ChildIds: 3654441542522500656
        ChildIds: 4439836190470673385
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 3654441542522500656
        Name: "WeaponAmmoUIClient"
        Transform {
          Location {
            X: 231.753281
            Y: -2116.37744
            Z: 175
          }
          Rotation {
            Yaw: 3.25688781e-12
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11903827641622637269
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttackAbility"
            ObjectReference {
              SubObjectId: 17898734017635138445
            }
          }
          Overrides {
            Name: "cs:AmmoUI"
            AssetReference {
              Id: 4400296802969262009
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
            Id: 5265419437494792472
          }
        }
      }
      Objects {
        Id: 4439836190470673385
        Name: "SetAbilityIconClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11903827641622637269
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 12056429271910007471
            }
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 5745050616147061482
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
            Id: 5131492248092724790
          }
        }
      }
      Objects {
        Id: 1736514383290548554
        Name: "Aim"
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
        ParentId: 7027289336009869051
        ChildIds: 278078108684144999
        ChildIds: 1698512235973666094
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          KeyBinding_v2 {
            Value: "mc:egameaction:secondaryaction"
          }
        }
      }
      Objects {
        Id: 278078108684144999
        Name: "WeaponAimServer"
        Transform {
          Location {
            X: 545.231689
            Y: 972.692383
            Z: -225
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1736514383290548554
        UnregisteredParameters {
          Overrides {
            Name: "cs:AimBinding"
            String: "ability_secondary"
          }
          Overrides {
            Name: "cs:AimWalkSpeedPercentage"
            Float: 0.5
          }
          Overrides {
            Name: "cs:AimActiveStance"
            String: "unarmed_carry_object_heavy"
          }
          Overrides {
            Name: "cs:AimZoomDistance"
            Float: 150
          }
          Overrides {
            Name: "cs:SpreadZoom"
            Float: -2
          }
          Overrides {
            Name: "cs:ZoomSpeed"
            Float: 1
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 12584963779262351557
          }
        }
      }
      Objects {
        Id: 1698512235973666094
        Name: "ClientContext"
        Transform {
          Location {
            X: -9.03198242
            Y: 1316.37744
            Z: -225
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1736514383290548554
        ChildIds: 10440553426167539360
        ChildIds: 2037525753378351440
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 10440553426167539360
        Name: "WeaponAimClient"
        Transform {
          Location {
            X: 554.263672
            Y: -343.685059
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1698512235973666094
        UnregisteredParameters {
          Overrides {
            Name: "cs:ServerScript"
            ObjectReference {
              SubObjectId: 278078108684144999
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
            Id: 15011803023996841379
          }
        }
      }
      Objects {
        Id: 2037525753378351440
        Name: "SetAbilityIconClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -94.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1698512235973666094
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 12056429271910007471
            }
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 3134265528574068078
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
            Id: 5131492248092724790
          }
        }
      }
      Objects {
        Id: 5565765950456784084
        Name: "Recharge"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 2.04905646e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7027289336009869051
        ChildIds: 11271319763660190545
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          KeyBinding: "ability_ult"
          CastPhaseSettings {
            Duration: 0.45
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.25
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 1
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "2hand_rifle_unsheathe"
          KeyBinding_v2 {
            Value: "mc:egameaction:extraaction_32"
          }
        }
      }
      Objects {
        Id: 11271319763660190545
        Name: "ClientContext"
        Transform {
          Location {
            X: -9.03125
            Y: 1316.37744
            Z: -225
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5565765950456784084
        ChildIds: 9520295951230801672
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 9520295951230801672
        Name: "SetAbilityIconClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -94.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11271319763660190545
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 12056429271910007471
            }
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 17377452767787399713
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
            Id: 5131492248092724790
          }
        }
      }
      Objects {
        Id: 1852574016173115394
        Name: "Thunder"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 2.04905609e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7027289336009869051
        ChildIds: 9785911713505536788
        ChildIds: 3784698485851720007
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          KeyBinding: "ability_ult"
          CastPhaseSettings {
            Duration: 0.8
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.3
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.2
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 9
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          Animation: "unarmed_throw"
          KeyBinding_v2 {
            Value: "mc:egameaction:extraaction_03"
          }
        }
      }
      Objects {
        Id: 9785911713505536788
        Name: "AOESpawnAbilityServer"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -2.04905591e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1852574016173115394
        UnregisteredParameters {
          Overrides {
            Name: "cs:AOEAsset"
            AssetReference {
              Id: 9628402061217418941
            }
          }
          Overrides {
            Name: "cs:ForwardSpawnOffset"
            Float: 2500
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 16712762878866681816
          }
        }
      }
      Objects {
        Id: 3784698485851720007
        Name: "ClientContext"
        Transform {
          Location {
            X: -9.03125
            Y: 1316.37744
            Z: -225
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1852574016173115394
        ChildIds: 8214486024580773169
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 8214486024580773169
        Name: "SetAbilityIconClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -94.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3784698485851720007
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 12056429271910007471
            }
          }
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 11435158390588968658
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
            Id: 5131492248092724790
          }
        }
      }
      Objects {
        Id: 8135863014981245103
        Name: "Air Boost"
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
        ParentId: 7027289336009869051
        ChildIds: 17760737134332013325
        ChildIds: 11063789536867022848
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Ability {
          IsEnabled: true
          CastPhaseSettings {
            Duration: 1
            CanMove: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          ExecutePhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:aim"
            }
          }
          RecoveryPhaseSettings {
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CooldownPhaseSettings {
            Duration: 10
            CanMove: true
            CanJump: true
            CanRotate: true
            PreventOtherAbilities: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:extraaction_04"
          }
        }
      }
      Objects {
        Id: 17760737134332013325
        Name: "ImpulseBoostServer"
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
        ParentId: 8135863014981245103
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 8135863014981245103
            }
          }
          Overrides {
            Name: "cs:BoostDirection"
            Vector {
              X: 300
              Z: 2000
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1312041549588098994
          }
        }
      }
      Objects {
        Id: 11063789536867022848
        Name: "ClientContext"
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
        ParentId: 8135863014981245103
        ChildIds: 8211108242236660306
        ChildIds: 11140905793425685521
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 8211108242236660306
        Name: "AbilityVFXTriggerClient"
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
        ParentId: 11063789536867022848
        UnregisteredParameters {
          Overrides {
            Name: "cs:EffectsParent"
            ObjectReference {
              SubObjectId: 11140905793425685521
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
            Id: 5904528026118809459
          }
        }
      }
      Objects {
        Id: 11140905793425685521
        Name: "Boost Effects"
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
        ParentId: 11063789536867022848
        ChildIds: 12795027402055298580
        ChildIds: 1758326504968621519
        ChildIds: 1361920887557642045
        ChildIds: 13810824584030387019
        ChildIds: 14520937225526487476
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 12795027402055298580
        Name: "Cast Burst Ring VFX"
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
        ParentId: 11140905793425685521
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.7
              B: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Edge Color"
            Color {
              G: 0.091390714
              B: 0.299999952
              A: 1
            }
          }
          Overrides {
            Name: "bp:Count"
            Int: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5
          }
          Overrides {
            Name: "bp:Appearance"
            Enum {
              Value: "mc:ecastringappearance:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Life Min"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Life Max"
            Float: 0.4
          }
          Overrides {
            Name: "bp:U Tiles"
            Int: 1
          }
          Overrides {
            Name: "bp:Size"
            Vector {
              X: 0.5
              Y: 0.5
              Z: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 2668490165851605550
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
      Objects {
        Id: 1758326504968621519
        Name: "Spark Trail Wavy VFX"
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
        ParentId: 11140905793425685521
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.7
              B: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Chaos"
            Float: 0.35
          }
          Overrides {
            Name: "bp:Spawn Radius"
            Float: 1.5
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 7
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 5891367910865939212
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 1361920887557642045
        Name: "Electricity Spark Arc 01 SFX"
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
        ParentId: 11140905793425685521
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 5471556188207705424
          }
          Pitch: 500
          Volume: 1
          Falloff: 3600
          Radius: 400
          EnableOcclusion: true
          FadeOutTime: 1.5
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 13810824584030387019
        Name: "Electricity Zap Spark 01 SFX"
        Transform {
          Location {
            X: 222.721298
            Y: -800
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11140905793425685521
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 16304464363672301237
          }
          Volume: 1
          Falloff: 3600
          Radius: 400
          EnableOcclusion: true
          FadeOutTime: 1.5
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 14520937225526487476
        Name: "UtilityAttachOnEquip"
        Transform {
          Location {
            X: -0.645584106
            Y: 22.2377319
            Z: 0.853820801
          }
          Rotation {
            Pitch: -2.19787955
            Yaw: -88.3370895
            Roll: -127.119499
          }
          Scale {
            X: 1.15384626
            Y: 1.15384626
            Z: 1.15384626
          }
        }
        ParentId: 11140905793425685521
        UnregisteredParameters {
          Overrides {
            Name: "cs:Socket"
            String: "root"
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
            Id: 4608986348173844284
          }
        }
      }
      Objects {
        Id: 13435316948455967562
        Name: "PickupTrigger"
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
        ParentId: 15240125699500579261
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Equip Gauntlet"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 16044269290875442902
        Name: "Lightning Gauntlet Art"
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
        ParentId: 15240125699500579261
        ChildIds: 6876628319876348301
        ChildIds: 181502633831301887
        ChildIds: 2662664535541792240
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 6876628319876348301
        Name: "EffectsScript"
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
        ParentId: 16044269290875442902
        ChildIds: 795985976514496596
        ChildIds: 16225325711531429865
        ChildIds: 7378031977129849923
        ChildIds: 16800943434797508776
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 795985976514496596
        Name: "DisableOnEmptyAmmo"
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
        ParentId: 6876628319876348301
        UnregisteredParameters {
          Overrides {
            Name: "cs:Weapon"
            ObjectReference {
              SubObjectId: 15240125699500579261
            }
          }
          Overrides {
            Name: "cs:ObjectToTrigger"
            ObjectReference {
              SubObjectId: 16528977886189546319
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
            Id: 9945946482499713345
          }
        }
      }
      Objects {
        Id: 16225325711531429865
        Name: "DisableOnEmptyAmmo"
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
        ParentId: 6876628319876348301
        UnregisteredParameters {
          Overrides {
            Name: "cs:Weapon"
            ObjectReference {
              SubObjectId: 15240125699500579261
            }
          }
          Overrides {
            Name: "cs:ObjectToTrigger"
            ObjectReference {
              SubObjectId: 9659323213173252544
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
            Id: 9945946482499713345
          }
        }
      }
      Objects {
        Id: 7378031977129849923
        Name: "Play Effects On Zap"
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
        ParentId: 6876628319876348301
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ability"
            ObjectReference {
              SubObjectId: 17898734017635138445
            }
          }
          Overrides {
            Name: "cs:Parent"
            ObjectReference {
              SubObjectId: 16044269290875442902
            }
          }
          Overrides {
            Name: "cs:Tag"
            String: "Zap Effect"
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
            Id: 11381303820488388840
          }
        }
      }
      Objects {
        Id: 16800943434797508776
        Name: "GauntletLowAmmoEffectClient"
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
        ParentId: 6876628319876348301
        UnregisteredParameters {
          Overrides {
            Name: "cs:Parent"
            ObjectReference {
              SubObjectId: 16044269290875442902
            }
          }
          Overrides {
            Name: "cs:AttackAbility"
            ObjectReference {
              SubObjectId: 17898734017635138445
            }
          }
          Overrides {
            Name: "cs:ReloadAbility"
            ObjectReference {
              SubObjectId: 5565765950456784084
            }
          }
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
          Overrides {
            Name: "cs:EmptyColor"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "cs:FullColor"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
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
            Id: 10646592196732707292
          }
        }
      }
      Objects {
        Id: 181502633831301887
        Name: "Right Lightning Gauntlet"
        Transform {
          Location {
            X: -0.645580173
            Y: 22.2377129
            Z: 0.853822231
          }
          Rotation {
            Pitch: -2.19787598
            Yaw: -88.3371
            Roll: -127.119568
          }
          Scale {
            X: 0.15
            Y: 0.15
            Z: 0.15
          }
        }
        ParentId: 16044269290875442902
        ChildIds: 17617683245891306913
        ChildIds: 11758570610636858816
        UnregisteredParameters {
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
        Id: 17617683245891306913
        Name: "Anchor"
        Transform {
          Location {
            X: 2.99993753
            Y: 33.400013
            Z: -275
          }
          Rotation {
            Pitch: 5
            Yaw: 180
            Roll: 8.28407501e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 181502633831301887
        ChildIds: 8861426569203681929
        ChildIds: 5802646473310991531
        ChildIds: 3880427474813558087
        ChildIds: 9231383377459498128
        ChildIds: 3979364710292812285
        ChildIds: 4430551198995969999
        ChildIds: 14373823320619279349
        ChildIds: 13542499279911882092
        ChildIds: 11274655279156296543
        ChildIds: 14975034762260071836
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Anchor_1"
        }
      }
      Objects {
        Id: 8861426569203681929
        Name: "Thorn Detail"
        Transform {
          Location {
            X: 0.132524461
            Y: -8.90894699
            Z: 310.186829
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 11818839341612690052
        ChildIds: 16715407668151053671
        ChildIds: 9107712536837221531
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Thorn Detail_1"
        }
      }
      Objects {
        Id: 11818839341612690052
        Name: "Thorn"
        Transform {
          Location {
            X: -0.132420853
            Y: 8.90922546
            Z: -218.646622
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 89.9998627
            Roll: -179.999954
          }
          Scale {
            X: 2
            Y: 1.80000007
            Z: 1.9
          }
        }
        ParentId: 8861426569203681929
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16715407668151053671
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -0.132568359
            Y: -36.0907784
            Z: 1.35110474
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.10000038
            Y: 1.5
            Z: 1.9
          }
        }
        ParentId: 8861426569203681929
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198743962317873673
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9107712536837221531
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -0.132598832
            Y: -36.0907631
            Z: 1.35113013
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.999939
            Roll: 9.96120161e-06
          }
          Scale {
            X: 1.17400599
            Y: 1.59787953
            Z: 1.95770299
          }
        }
        ParentId: 8861426569203681929
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3606793535224167847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198743962317873673
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5802646473310991531
        Name: "Arm Cover"
        Transform {
          Location {
            X: 0.172911584
            Y: 24.735508
            Z: 75.39534
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 8971693071481845264
        ChildIds: 7533376813011962097
        ChildIds: 8380636681209503744
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Arm Cover_1"
        }
      }
      Objects {
        Id: 8971693071481845264
        Name: "Pipe - Quarter Thin"
        Transform {
          Location {
            X: 0.0216369629
            Y: 36.8342819
          }
          Rotation {
            Pitch: 7.92922783
            Yaw: 44.4440765
            Roll: -8.00632572
          }
          Scale {
            X: 1.75000036
            Y: 1.75000012
            Z: 2
          }
        }
        ParentId: 5802646473310991531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7049191719222274714
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7533376813011962097
        Name: "Pipe - Quarter Wedge"
        Transform {
          Location {
            X: -34.2109642
            Y: -22.2944431
            Z: 197.382401
          }
          Rotation {
            Pitch: 6.2222271
            Yaw: 146.761429
            Roll: -170.60878
          }
          Scale {
            X: 1
            Y: 1.00000024
            Z: 2.02084088
          }
        }
        ParentId: 5802646473310991531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 17205556389324759255
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8380636681209503744
        Name: "Pipe - Quarter Wedge"
        Transform {
          Location {
            X: 34.2199707
            Y: -21.2715454
            Z: 194.633362
          }
          Rotation {
            Pitch: 5.2379694
            Yaw: 31.1628895
            Roll: -8.76309204
          }
          Scale {
            X: 1.00000024
            Y: 1
            Z: -2.07070947
          }
        }
        ParentId: 5802646473310991531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 17205556389324759255
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3880427474813558087
        Name: "Palm Diamonds"
        Transform {
          Location {
            X: 0.194262087
            Y: 32.0524063
            Z: 71.5396881
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 7021229886224760732
        ChildIds: 15783565383846029541
        ChildIds: 3845716025492689924
        ChildIds: 5691138396434655367
        ChildIds: 11815007696495230800
        ChildIds: 3051956000029382146
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Palm Diamonds_1"
        }
      }
      Objects {
        Id: 7021229886224760732
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: -7.05246544
            Z: 215
          }
          Rotation {
            Roll: -15.0005798
          }
          Scale {
            X: 2.2
            Y: 2.10000014
            Z: 1.30000007
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15783565383846029541
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.194458008
            Y: -17.0524654
            Z: 245
          }
          Rotation {
          }
          Scale {
            X: 2.10000014
            Y: 2.3
            Z: 1.5
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3845716025492689924
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: -7.05246544
          }
          Rotation {
            Roll: -15.0002441
          }
          Scale {
            X: 1.49999988
            Y: 1.30000007
            Z: 1.5999999
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5691138396434655367
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.194458008
            Y: -2.05246544
            Z: 180
          }
          Rotation {
            Yaw: 6.29468047e-07
            Roll: -84.9998779
          }
          Scale {
            X: 1.9
            Y: 1.6
            Z: 1.1
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11815007696495230800
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: 0.000122070313
            Y: -17.0524654
            Z: 90
          }
          Rotation {
            Roll: -81.7537231
          }
          Scale {
            X: 1.80369067
            Y: 3.00000334
            Z: 1.22388613
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3051956000029382146
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.000122070313
            Y: -27.0524673
            Z: 175
          }
          Rotation {
            Roll: 15.0003052
          }
          Scale {
            X: 1.80000007
            Y: 1.6
            Z: 1.6
          }
        }
        ParentId: 3880427474813558087
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9231383377459498128
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.194273099
            Y: -45.431221
            Z: 161.84816
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 13713713429501037352
        ChildIds: 4197722703650643093
        ChildIds: 9659323213173252544
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Manticore Logo_1"
        }
      }
      Objects {
        Id: 13713713429501037352
        Name: "Manticore Logo"
        Transform {
          Location {
            Y: -1.99784851
            Z: 0.140838623
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -179.999954
            Roll: 101.25
          }
          Scale {
            X: 0.354287416
            Y: 0.354287416
            Z: 0.354287416
          }
        }
        ParentId: 9231383377459498128
        ChildIds: 17694426619235003714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 240259917749718067
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17694426619235003714
        Name: "EquipmentTeamColor"
        Transform {
          Location {
            X: 12192.7139
            Y: 2923.01367
            Z: -4082.09302
          }
          Rotation {
            Pitch: -24.0645847
            Yaw: 83.207
            Roll: -4.21677637
          }
          Scale {
            X: 18.8171139
            Y: 18.8171139
            Z: 18.8171139
          }
        }
        ParentId: 13713713429501037352
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 7535537986447365458
          }
        }
      }
      Objects {
        Id: 4197722703650643093
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: 1.99784851
          }
          Rotation {
            Roll: -101.250046
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.99999988
          }
        }
        ParentId: 9231383377459498128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4809529976550021000
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9659323213173252544
        Name: "Plasma Ball Projectile VFX"
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
        ParentId: 9231383377459498128
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1.2
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.230198503
              B: 0.440000057
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 14993209367206018702
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 3979364710292812285
        Name: "Hand Diamonds"
        Transform {
          Location {
            X: -1.47213387
            Y: -14.1597099
            Z: 1.54007125
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 4187696320340926225
        ChildIds: 2726940716246845784
        ChildIds: 7125521099657579762
        ChildIds: 16477413582944812186
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Hand Diamonds_1"
        }
      }
      Objects {
        Id: 4187696320340926225
        Name: "Center Diamond"
        Transform {
          Location {
            X: 1.66665649
            Y: -6.66666412
            Z: 5
          }
          Rotation {
            Roll: -5.00000238
          }
          Scale {
            X: 0.3
            Y: 0.2
            Z: 0.6
          }
        }
        ParentId: 3979364710292812285
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2726940716246845784
        Name: "Left Diamond"
        Transform {
          Location {
            X: -28.3333435
            Y: 3.33333588
          }
          Rotation {
            Pitch: 19.9999542
            Yaw: -20.0000286
            Roll: -5.00000238
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.4
          }
        }
        ParentId: 3979364710292812285
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7125521099657579762
        Name: "Right Diamond"
        Transform {
          Location {
            X: 26.6666565
            Y: 3.33333588
          }
          Rotation {
            Pitch: -20.0000019
            Roll: -5.00000191
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.4
          }
        }
        ParentId: 3979364710292812285
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16477413582944812186
        Name: "Thorn"
        Transform {
          Location {
            X: 1.47200263
            Y: 14.1599426
            Z: 90.0001144
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 89.9996796
            Roll: -179.999954
          }
          Scale {
            X: 1.3992511
            Y: 1.90525031
            Z: 1.98420525
          }
        }
        ParentId: 3979364710292812285
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3606793535224167847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4430551198995969999
        Name: "Arm Diamonds"
        Transform {
          Location {
            X: 0.194567904
            Y: -18.3214455
            Z: 101.539589
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17617683245891306913
        ChildIds: 10923993384122129200
        ChildIds: 11576420263490453774
        ChildIds: 5380622287533477408
        ChildIds: 12956483520888455835
        ChildIds: 14159227164625266217
        ChildIds: 12173156430770244503
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Arm Diamonds_1"
        }
      }
      Objects {
        Id: 10923993384122129200
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 65
            Y: -6.66666412
            Z: 120
          }
          Rotation {
            Pitch: -49.7408676
            Yaw: -140.931229
            Roll: 97.7522659
          }
          Scale {
            X: 0.5
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11576420263490453774
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 65
            Y: 3.33333588
            Z: 60
          }
          Rotation {
            Pitch: -2.86608386
            Yaw: -129.099854
            Roll: 55.1017075
          }
          Scale {
            X: 0.4
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5380622287533477408
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 55
            Y: 3.33333588
          }
          Rotation {
            Pitch: 54.6894913
            Yaw: -137.902557
            Roll: 98.675972
          }
          Scale {
            X: 0.4
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12956483520888455835
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -65
            Y: -6.66666412
            Z: 120
          }
          Rotation {
            Pitch: -39.8171
            Yaw: -40.8165283
            Roll: -96.5175858
          }
          Scale {
            X: 0.5
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14159227164625266217
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -65
            Y: 3.33333588
            Z: 60
          }
          Rotation {
            Pitch: -2.86651421
            Yaw: -45.8988838
            Roll: -55.1027718
          }
          Scale {
            X: 0.4
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12173156430770244503
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -55
            Y: 3.33333588
          }
          Rotation {
            Pitch: -49.7406311
            Yaw: 134.065872
            Roll: 97.7547226
          }
          Scale {
            X: 0.3
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 4430551198995969999
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14373823320619279349
        Name: "Cone - Truncated Hollow Thin"
        Transform {
          Location {
            X: 0.194490597
            Y: 15.0002441
            Z: 311.537872
          }
          Rotation {
            Yaw: 7.27971155e-20
            Roll: 179.999954
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 17617683245891306913
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4099266838875499593
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13542499279911882092
        Name: "Cone - Truncated Hollow Thin"
        Transform {
          Location {
            X: 0.195034653
            Y: 32.6266708
            Z: 321.537506
          }
          Rotation {
            Yaw: 7.27971155e-20
            Roll: 179.999954
          }
          Scale {
            X: 1.70000172
            Y: 1.70000017
            Z: 5.50302649
          }
        }
        ParentId: 17617683245891306913
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13619636989161725653
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.8
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 25
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4099266838875499593
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11274655279156296543
        Name: "Point Light"
        Transform {
          Location {
            X: 1.66926062
            Y: -13.4700203
            Z: 205.111923
          }
          Rotation {
          }
          Scale {
            X: 6.66666651
            Y: 6.66666651
            Z: 6.66666651
          }
        }
        ParentId: 17617683245891306913
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Light {
          Intensity: 5
          Color {
            R: 0.0299999714
            G: 0.595297635
            B: 1
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 50
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 14975034762260071836
        Name: "Zap Plasma Muzzleflash VFX"
        Transform {
          Location {
            X: -8.85941887
            Y: 38.6561852
            Z: -40.842598
          }
          Rotation {
            Pitch: -2.51714325
            Yaw: 1.78103
            Roll: -179.637955
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 17617683245891306913
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Size Multiplier"
            Float: 0.7
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5
          }
          Overrides {
            Name: "bp:Enable Ring"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Elements"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Electrical Elements"
            Bool: true
          }
          Overrides {
            Name: "cs:Tag"
            String: "Zap Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 8577162694663814137
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
      Objects {
        Id: 11758570610636858816
        Name: "UtilityAttachOnEquip"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.01777656e-13
            Roll: -2.15522599e-35
          }
          Scale {
            X: 7.69230795
            Y: 7.69230795
            Z: 7.69230795
          }
        }
        ParentId: 181502633831301887
        UnregisteredParameters {
          Overrides {
            Name: "cs:Socket"
            String: "right_elbow"
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
            Id: 4608986348173844284
          }
        }
      }
      Objects {
        Id: 2662664535541792240
        Name: "Left Lightning Gauntlet"
        Transform {
          Location {
            X: -0.574920177
            Y: -20.1475601
            Z: 0.75034678
          }
          Rotation {
            Pitch: -2.13198853
            Yaw: 88.3654709
            Roll: 127.486633
          }
          Scale {
            X: 0.15
            Y: 0.15
            Z: 0.15
          }
        }
        ParentId: 16044269290875442902
        ChildIds: 4122690655001614958
        ChildIds: 6711907053299210716
        UnregisteredParameters {
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
        Id: 4122690655001614958
        Name: "Anchor"
        Transform {
          Location {
            X: -3.00011277
            Y: -33.399868
            Z: -275
          }
          Rotation {
            Pitch: -5
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2662664535541792240
        ChildIds: 1893299331371508639
        ChildIds: 14960730642112994474
        ChildIds: 9294667344535547883
        ChildIds: 3510272688686468513
        ChildIds: 16021102950829902394
        ChildIds: 865131011858227043
        ChildIds: 2058282731777343865
        ChildIds: 8430859411500211335
        ChildIds: 13904026720124268322
        ChildIds: 2063709188712866555
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Anchor"
        }
      }
      Objects {
        Id: 1893299331371508639
        Name: "Thorn Detail"
        Transform {
          Location {
            X: 0.132524461
            Y: -8.90894699
            Z: 310.186829
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 9356422812540182831
        ChildIds: 3419998376360505090
        ChildIds: 820360371435593049
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Thorn Detail"
        }
      }
      Objects {
        Id: 9356422812540182831
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -0.132568359
            Y: -36.0907784
            Z: 1.35110474
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 2.10000038
            Y: 1.5
            Z: 1.9
          }
        }
        ParentId: 1893299331371508639
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198743962317873673
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3419998376360505090
        Name: "Thorn - Wide"
        Transform {
          Location {
            X: -0.132598832
            Y: -36.0907631
            Z: 1.35113013
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.999939
            Roll: 9.96120161e-06
          }
          Scale {
            X: 1.17400599
            Y: 1.59787953
            Z: 1.95770299
          }
        }
        ParentId: 1893299331371508639
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3606793535224167847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 198743962317873673
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 820360371435593049
        Name: "Thorn"
        Transform {
          Location {
            X: -0.132522583
            Y: 8.90922546
            Z: -218.646667
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 89.9998627
            Roll: -179.999954
          }
          Scale {
            X: 2
            Y: 1.80000007
            Z: 1.9
          }
        }
        ParentId: 1893299331371508639
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14960730642112994474
        Name: "Arm Cover"
        Transform {
          Location {
            X: 0.172911584
            Y: 24.735508
            Z: 75.39534
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 9528899592309534263
        ChildIds: 10907788042006620911
        ChildIds: 11125609108889923434
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Arm Cover"
        }
      }
      Objects {
        Id: 9528899592309534263
        Name: "Pipe - Quarter Thin"
        Transform {
          Location {
            X: 0.0216369629
            Y: 36.8342819
          }
          Rotation {
            Pitch: 7.92922783
            Yaw: 44.4440765
            Roll: -8.00632572
          }
          Scale {
            X: 1.75000036
            Y: 1.75000012
            Z: 2
          }
        }
        ParentId: 14960730642112994474
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.12
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7049191719222274714
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10907788042006620911
        Name: "Pipe - Quarter Wedge"
        Transform {
          Location {
            X: -34.2109642
            Y: -22.2944431
            Z: 197.382401
          }
          Rotation {
            Pitch: 6.2222271
            Yaw: 146.761429
            Roll: -170.60878
          }
          Scale {
            X: 1
            Y: 1.00000024
            Z: 2.02084088
          }
        }
        ParentId: 14960730642112994474
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.12
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 17205556389324759255
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11125609108889923434
        Name: "Pipe - Quarter Wedge"
        Transform {
          Location {
            X: 34.2199707
            Y: -21.2715454
            Z: 194.633362
          }
          Rotation {
            Pitch: 5.2379694
            Yaw: 31.1628895
            Roll: -8.76309204
          }
          Scale {
            X: 1.00000024
            Y: 1
            Z: -2.07070947
          }
        }
        ParentId: 14960730642112994474
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.12
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 17205556389324759255
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9294667344535547883
        Name: "Palm Diamonds"
        Transform {
          Location {
            X: 0.194262087
            Y: 32.0524063
            Z: 71.5396881
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 9416941929276241557
        ChildIds: 14072682558439088724
        ChildIds: 5837667082543290755
        ChildIds: 2955518396058468551
        ChildIds: 14178172420563855477
        ChildIds: 15474473159794294286
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Palm Diamonds"
        }
      }
      Objects {
        Id: 9416941929276241557
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: -7.05246544
            Z: 215
          }
          Rotation {
            Roll: -15.0005798
          }
          Scale {
            X: 2.2
            Y: 2.10000014
            Z: 1.30000007
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14072682558439088724
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.194458008
            Y: -17.0524654
            Z: 245
          }
          Rotation {
          }
          Scale {
            X: 2.10000014
            Y: 2.3
            Z: 1.5
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5837667082543290755
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: -7.05246544
          }
          Rotation {
            Roll: -15.0002441
          }
          Scale {
            X: 1.49999988
            Y: 1.30000007
            Z: 1.5999999
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2955518396058468551
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.194458008
            Y: -2.05246544
            Z: 180
          }
          Rotation {
            Yaw: 6.29468047e-07
            Roll: -84.9998779
          }
          Scale {
            X: 1.9
            Y: 1.6
            Z: 1.1
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14178172420563855477
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: 0.000122070313
            Y: -17.0524654
            Z: 90
          }
          Rotation {
            Roll: -81.7537231
          }
          Scale {
            X: 1.80369067
            Y: 3.00000334
            Z: 1.22388613
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15474473159794294286
        Name: "Ring - Beveled"
        Transform {
          Location {
            X: -0.000122070313
            Y: -27.0524673
            Z: 175
          }
          Rotation {
            Roll: 15.0003052
          }
          Scale {
            X: 1.80000007
            Y: 1.6
            Z: 1.6
          }
        }
        ParentId: 9294667344535547883
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3510272688686468513
        Name: "Manticore Logo"
        Transform {
          Location {
            X: 0.194273099
            Y: -45.431221
            Z: 161.84816
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 16770441195138011967
        ChildIds: 1785683883259476374
        ChildIds: 16528977886189546319
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Manticore Logo"
        }
      }
      Objects {
        Id: 16770441195138011967
        Name: "Manticore Logo"
        Transform {
          Location {
            Y: -1.99784851
            Z: 0.140838623
          }
          Rotation {
            Pitch: -3.4150944e-05
            Yaw: -179.999954
            Roll: 101.25
          }
          Scale {
            X: 0.354287416
            Y: 0.354287416
            Z: 0.354287416
          }
        }
        ParentId: 3510272688686468513
        ChildIds: 2190747939858654188
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 240259917749718067
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2190747939858654188
        Name: "EquipmentTeamColor"
        Transform {
          Location {
            X: 10813.168
            Y: 5602.70703
            Z: -2680.48413
          }
          Rotation {
            Pitch: -26.671566
            Yaw: 93.4367676
            Roll: 4.48101902
          }
          Scale {
            X: 18.8171139
            Y: 18.8171139
            Z: 18.8171139
          }
        }
        ParentId: 16770441195138011967
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 7535537986447365458
          }
        }
      }
      Objects {
        Id: 1785683883259476374
        Name: "Ring - Beveled"
        Transform {
          Location {
            Y: 1.99784851
          }
          Rotation {
            Roll: -101.250046
          }
          Scale {
            X: 1
            Y: 1
            Z: 1.99999988
          }
        }
        ParentId: 3510272688686468513
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4809529976550021000
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 9278034076700661795
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16528977886189546319
        Name: "Plasma Ball Projectile VFX"
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
        ParentId: 3510272688686468513
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1.2
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.230198503
              B: 0.440000057
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 14993209367206018702
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
      Objects {
        Id: 16021102950829902394
        Name: "Hand Diamonds"
        Transform {
          Location {
            X: -1.47213387
            Y: -14.1597099
            Z: 1.54007125
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 5316628250296843666
        ChildIds: 12437280034825196780
        ChildIds: 13863765195571294259
        ChildIds: 18238307489425253758
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Hand Diamonds"
        }
      }
      Objects {
        Id: 5316628250296843666
        Name: "Center Diamond"
        Transform {
          Location {
            X: 1.66665649
            Y: -6.66666412
            Z: 5
          }
          Rotation {
            Roll: -5.00000238
          }
          Scale {
            X: 0.3
            Y: 0.2
            Z: 0.6
          }
        }
        ParentId: 16021102950829902394
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12437280034825196780
        Name: "Left Diamond"
        Transform {
          Location {
            X: -28.3333435
            Y: 3.33333588
          }
          Rotation {
            Pitch: 19.9999542
            Yaw: -20.0000286
            Roll: -5.00000238
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.4
          }
        }
        ParentId: 16021102950829902394
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13863765195571294259
        Name: "Right Diamond"
        Transform {
          Location {
            X: 26.6666565
            Y: 3.33333588
          }
          Rotation {
            Pitch: -20.0000019
            Roll: -5.00000191
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.4
          }
        }
        ParentId: 16021102950829902394
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0855627283
              B: 0.679999948
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11711746794142574135
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18238307489425253758
        Name: "Thorn"
        Transform {
          Location {
            X: 1.47194958
            Y: 14.1599331
            Z: 89.9999924
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: 89.9997635
            Roll: -179.999954
          }
          Scale {
            X: 1.3992511
            Y: 1.90525019
            Z: 1.98420525
          }
        }
        ParentId: 16021102950829902394
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3606793535224167847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.087417081
              B: 0.330000043
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 7436120957885304537
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 865131011858227043
        Name: "Arm Diamonds"
        Transform {
          Location {
            X: 0.194567904
            Y: -18.3214455
            Z: 101.539589
          }
          Rotation {
            Yaw: -6.38692e-13
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4122690655001614958
        ChildIds: 6328437297042786072
        ChildIds: 3447489317275873273
        ChildIds: 18354336580714046793
        ChildIds: 2859523022294777083
        ChildIds: 16891179809549262769
        ChildIds: 14942228137446610266
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Ammo Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Arm Diamonds"
        }
      }
      Objects {
        Id: 6328437297042786072
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 65
            Y: -6.66666412
            Z: 120
          }
          Rotation {
            Pitch: -49.7408676
            Yaw: -140.931229
            Roll: 97.7522659
          }
          Scale {
            X: 0.5
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3447489317275873273
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 65
            Y: 3.33333588
            Z: 60
          }
          Rotation {
            Pitch: -2.86608386
            Yaw: -129.099854
            Roll: 55.1017075
          }
          Scale {
            X: 0.4
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18354336580714046793
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 55
            Y: 3.33333588
          }
          Rotation {
            Pitch: 54.6894913
            Yaw: -137.902557
            Roll: 98.675972
          }
          Scale {
            X: 0.4
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2859523022294777083
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -65
            Y: -6.66666412
            Z: 120
          }
          Rotation {
            Pitch: -39.8171
            Yaw: -40.8165283
            Roll: -96.5175858
          }
          Scale {
            X: 0.5
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16891179809549262769
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -65
            Y: 3.33333588
            Z: 60
          }
          Rotation {
            Pitch: -2.86651421
            Yaw: -45.8988838
            Roll: -55.1027718
          }
          Scale {
            X: 0.4
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14942228137446610266
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: -55
            Y: 3.33333588
          }
          Rotation {
            Pitch: -49.7406311
            Yaw: 134.065872
            Roll: 97.7547226
          }
          Scale {
            X: 0.3
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 865131011858227043
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16210978991612341200
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.0656952783
              B: 0.320000052
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 14179625346814357210
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2058282731777343865
        Name: "Cone - Truncated Hollow Thin"
        Transform {
          Location {
            X: 0.194490597
            Y: 15.0002441
            Z: 311.537872
          }
          Rotation {
            Yaw: 7.27971155e-20
            Roll: 179.999954
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 4122690655001614958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18389207442656911915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.219867185
              B: 0.830000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4099266838875499593
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8430859411500211335
        Name: "Cone - Truncated Hollow Thin"
        Transform {
          Location {
            X: 0.195034653
            Y: 32.6266708
            Z: 321.537506
          }
          Rotation {
            Yaw: 7.27971155e-20
            Roll: 179.999954
          }
          Scale {
            X: 1.70000172
            Y: 1.70000017
            Z: 5.50302649
          }
        }
        ParentId: 4122690655001614958
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13619636989161725653
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.8
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 25
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 4099266838875499593
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13904026720124268322
        Name: "Point Light"
        Transform {
          Location {
            X: -12.2582703
            Y: -107.320541
            Z: 140.112656
          }
          Rotation {
          }
          Scale {
            X: 6.66666651
            Y: 6.66666651
            Z: 6.66666651
          }
        }
        ParentId: 4122690655001614958
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Light {
          Intensity: 5
          Color {
            R: 0.0299999714
            G: 0.595297635
            B: 1
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 50
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 2063709188712866555
        Name: "Zap Plasma Muzzleflash VFX"
        Transform {
          Location {
            X: -8.85941505
            Y: 38.6562042
            Z: -40.842617
          }
          Rotation {
            Pitch: -2.51714325
            Yaw: 1.78103113
            Roll: -179.637955
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 4122690655001614958
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Size Multiplier"
            Float: 0.7
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 5
          }
          Overrides {
            Name: "bp:Enable Ring"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Plasma Elements"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Electrical Elements"
            Bool: true
          }
          Overrides {
            Name: "cs:Tag"
            String: "Zap Effect"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 8577162694663814137
          }
          TeamSettings {
          }
          Vfx {
          }
        }
      }
      Objects {
        Id: 6711907053299210716
        Name: "UtilityAttachOnEquip"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.01777656e-13
            Roll: -2.15522599e-35
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2662664535541792240
        UnregisteredParameters {
          Overrides {
            Name: "cs:Socket"
            String: "left_elbow"
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
            Id: 4608986348173844284
          }
        }
      }
    }
    Assets {
      Id: 5745050616147061482
      Name: "Icon Electric"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Electric"
      }
    }
    Assets {
      Id: 3134265528574068078
      Name: "Icon Target"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Target"
      }
    }
    Assets {
      Id: 17377452767787399713
      Name: "Icon Rotate"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_ArrowRotate"
      }
    }
    Assets {
      Id: 11435158390588968658
      Name: "Icon Stamina"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Stamina"
      }
    }
    Assets {
      Id: 2668490165851605550
      Name: "Cast Burst Ring VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_cast_circle_generic"
      }
    }
    Assets {
      Id: 5891367910865939212
      Name: "Spark Trail Wavy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_spark_trail_wavy"
      }
    }
    Assets {
      Id: 5471556188207705424
      Name: "Electricity Spark Arc 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_electricity_spark_arc_01_Cue_ref"
      }
    }
    Assets {
      Id: 16304464363672301237
      Name: "Electricity Zap Spark 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_electricity_zap_spark_01_Cue_ref"
      }
    }
    Assets {
      Id: 7436120957885304537
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
      }
    }
    Assets {
      Id: 18389207442656911915
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 198743962317873673
      Name: "Thorn - Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_001"
      }
    }
    Assets {
      Id: 3606793535224167847
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 7049191719222274714
      Name: "Pipe - Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter-pipe_002"
      }
    }
    Assets {
      Id: 17205556389324759255
      Name: "Pipe - Quarter Wedge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_pipe_wedge_001"
      }
    }
    Assets {
      Id: 9278034076700661795
      Name: "Ring - Beveled"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_001"
      }
    }
    Assets {
      Id: 16210978991612341200
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 240259917749718067
      Name: "Manticore Logo"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_logo_manticore_01"
      }
    }
    Assets {
      Id: 4809529976550021000
      Name: "Metal Old Beaten Gold 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_002"
      }
    }
    Assets {
      Id: 14993209367206018702
      Name: "Plasma Ball Projectile VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasmaball_projectile"
      }
    }
    Assets {
      Id: 11711746794142574135
      Name: "Diamond - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_hq_001"
      }
    }
    Assets {
      Id: 14179625346814357210
      Name: "Diamond"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_001"
      }
    }
    Assets {
      Id: 4099266838875499593
      Name: "Cone - Truncated Hollow Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_003"
      }
    }
    Assets {
      Id: 13619636989161725653
      Name: "Rope"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rope_001"
      }
    }
    Assets {
      Id: 8577162694663814137
      Name: "Plasma Muzzleflash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_muzzleflash"
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
