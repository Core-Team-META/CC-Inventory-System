Assets {
  Id: 10056356897892403281
  Name: "Searchable Loots Examples"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9895004479173236156
      Objects {
        Id: 9895004479173236156
        Name: "Searchable Loots Examples"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3536253168034272713
        ChildIds: 7104337943552868406
        ChildIds: 6580963945549757121
        ChildIds: 9532965669318436326
        ChildIds: 4709311080573847900
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
        Id: 3536253168034272713
        Name: "Searchable Chest ( Currency )"
        Transform {
          Location {
            X: 180.875671
            Y: 138.773041
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 87.8445206
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9895004479173236156
        ChildIds: 65772228967802823
        ChildIds: 4606895551195725858
        ChildIds: 30290013537322913
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 3536253168034272713
            }
          }
          Overrides {
            Name: "cs:LootTable"
            String: "Currency"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemCountMin"
            Int: 5
          }
          Overrides {
            Name: "cs:ItemCountMax"
            Int: 20
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:LootTable:tooltip"
            String: "The loot table to pull items from"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot:tooltip"
            String: "The time in minutes it takes to reset the loot for this contianer."
          }
          Overrides {
            Name: "cs:ItemCountMin:tooltip"
            String: "The min amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:ItemCountMax:tooltip"
            String: "The max amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:SecondsToSearch:tooltip"
            String: "Time it takes (in seconds) to search the container."
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
        Id: 65772228967802823
        Name: "ItemSystems_StashInstance"
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
        ParentId: 3536253168034272713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6911158172561883444
          }
        }
      }
      Objects {
        Id: 4606895551195725858
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 3536253168034272713
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 30290013537322913
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
        ParentId: 3536253168034272713
        ChildIds: 15980436239578321418
        ChildIds: 5453367377025854217
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
        Id: 15980436239578321418
        Name: "Base"
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
        ParentId: 30290013537322913
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16139304974184221809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5453367377025854217
        Name: "Lid"
        Transform {
          Location {
            X: 1.58016968
            Y: -52.8124809
            Z: 78.5153885
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 30290013537322913
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11540177079053858431
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7104337943552868406
        Name: "Searchable Chest ( Backpacks )"
        Transform {
          Location {
            X: 83.0646057
            Y: 419.051758
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 132.576263
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9895004479173236156
        ChildIds: 16101518964529739015
        ChildIds: 16478959712168482684
        ChildIds: 1613241837487733342
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 7104337943552868406
            }
          }
          Overrides {
            Name: "cs:LootTable"
            String: "StorageBackpacks"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemCountMin"
            Int: 10
          }
          Overrides {
            Name: "cs:ItemCountMax"
            Int: 20
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:LootTable:tooltip"
            String: "The loot table to pull items from"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot:tooltip"
            String: "The time in minutes it takes to reset the loot for this contianer."
          }
          Overrides {
            Name: "cs:ItemCountMin:tooltip"
            String: "The min amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:ItemCountMax:tooltip"
            String: "The max amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:SecondsToSearch:tooltip"
            String: "Time it takes (in seconds) to search the container."
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
        Id: 16101518964529739015
        Name: "ItemSystems_StashInstance"
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
        ParentId: 7104337943552868406
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6911158172561883444
          }
        }
      }
      Objects {
        Id: 16478959712168482684
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 7104337943552868406
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1613241837487733342
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
        ParentId: 7104337943552868406
        ChildIds: 5000313209599643073
        ChildIds: 11637263802625031658
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
        Id: 5000313209599643073
        Name: "Base"
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
        ParentId: 1613241837487733342
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0199999809
              G: 0.922119
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 16139304974184221809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11637263802625031658
        Name: "Lid"
        Transform {
          Location {
            X: 1.58016968
            Y: -52.8124809
            Z: 78.5153885
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1613241837487733342
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.902649105
              B: 0.940000057
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 11540177079053858431
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6580963945549757121
        Name: "Searchable Chest ( Equipment )"
        Transform {
          Location {
            X: -203.510742
            Y: 530.546326
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 177.026505
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9895004479173236156
        ChildIds: 18233262735548505018
        ChildIds: 4046714192346274467
        ChildIds: 4340569134895785706
        ChildIds: 73236974032238159
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 6580963945549757121
            }
          }
          Overrides {
            Name: "cs:LootTable"
            String: "Equipments"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemCountMin"
            Int: 10
          }
          Overrides {
            Name: "cs:ItemCountMax"
            Int: 20
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:LootTable:tooltip"
            String: "The loot table to pull items from"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot:tooltip"
            String: "The time in minutes it takes to reset the loot for this contianer."
          }
          Overrides {
            Name: "cs:ItemCountMin:tooltip"
            String: "The min amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:ItemCountMax:tooltip"
            String: "The max amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:SecondsToSearch:tooltip"
            String: "Time it takes (in seconds) to search the container."
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
        Id: 18233262735548505018
        Name: "ItemSystems_StashInstance"
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
        ParentId: 6580963945549757121
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6911158172561883444
          }
        }
      }
      Objects {
        Id: 4046714192346274467
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 6580963945549757121
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4340569134895785706
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
        ParentId: 6580963945549757121
        ChildIds: 6671640347828138605
        ChildIds: 3768942503760473
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
        Id: 6671640347828138605
        Name: "Base"
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
        ParentId: 4340569134895785706
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.13
              B: 0.13
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 16139304974184221809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3768942503760473
        Name: "Lid"
        Transform {
          Location {
            X: 1.58016968
            Y: -52.8124809
            Z: 78.5153885
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4340569134895785706
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.0899999738
              B: 0.0899999738
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 11540177079053858431
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 73236974032238159
        Name: "World Text"
        Transform {
          Location {
            X: -103.008324
            Y: -60.6060638
            Z: 231.922607
          }
          Rotation {
            Yaw: 90.3381348
          }
          Scale {
            X: 2.62429595
            Y: 2.62429595
            Z: 2.62429595
          }
        }
        ParentId: 6580963945549757121
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Text {
          Text: "Lootable Stashes."
          Color {
            G: 0.900662422
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:left"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 9532965669318436326
        Name: "Searchable Chest ( Consumables )"
        Transform {
          Location {
            X: -485.654449
            Y: 545.32489
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 177.02652
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9895004479173236156
        ChildIds: 15022487254139060180
        ChildIds: 8434155615301808007
        ChildIds: 9994338121964999595
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 9532965669318436326
            }
          }
          Overrides {
            Name: "cs:LootTable"
            String: "Consumables"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemCountMin"
            Int: 10
          }
          Overrides {
            Name: "cs:ItemCountMax"
            Int: 20
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:LootTable:tooltip"
            String: "The loot table to pull items from"
          }
          Overrides {
            Name: "cs:MinutesToResetLoot:tooltip"
            String: "The time in minutes it takes to reset the loot for this contianer."
          }
          Overrides {
            Name: "cs:ItemCountMin:tooltip"
            String: "The min amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:ItemCountMax:tooltip"
            String: "The max amount of items to generate into the container"
          }
          Overrides {
            Name: "cs:SecondsToSearch:tooltip"
            String: "Time it takes (in seconds) to search the container."
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
        Id: 15022487254139060180
        Name: "ItemSystems_StashInstance"
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
        ParentId: 9532965669318436326
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6911158172561883444
          }
        }
      }
      Objects {
        Id: 8434155615301808007
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 9532965669318436326
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9994338121964999595
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
        ParentId: 9532965669318436326
        ChildIds: 1594139124628466428
        ChildIds: 5784041487382685896
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
        Id: 1594139124628466428
        Name: "Base"
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
        ParentId: 9994338121964999595
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0713908896
              B: 0.98
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 16139304974184221809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5784041487382685896
        Name: "Lid"
        Transform {
          Location {
            X: 1.58016968
            Y: -52.8124809
            Z: 78.5153885
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9994338121964999595
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.16556263
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 11540177079053858431
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4709311080573847900
        Name: "Searchable Chest ( Saves )"
        Transform {
          Location {
            X: -298.275879
            Y: -106.063187
            Z: 6.10351563e-05
          }
          Rotation {
            Yaw: -1.19821167
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9895004479173236156
        ChildIds: 5236511680078401794
        ChildIds: 10802576067303680429
        ChildIds: 15750744153721516362
        ChildIds: 5092512881013087476
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            ObjectReference {
              SubObjectId: 4709311080573847900
            }
          }
          Overrides {
            Name: "cs:IsStash"
            Bool: true
          }
          Overrides {
            Name: "cs:SecondsToSearch"
            Int: 1
          }
          Overrides {
            Name: "cs:SFX_OpenSound"
            AssetReference {
              Id: 2705040546964747811
            }
          }
          Overrides {
            Name: "cs:SFX_SearchingSound"
            AssetReference {
              Id: 9618048359665944166
            }
          }
          Overrides {
            Name: "cs:SFX_ClosedSound"
            AssetReference {
              Id: 12849806893321737342
            }
          }
          Overrides {
            Name: "cs:ID:tooltip"
            String: "The unique ID of this container"
          }
          Overrides {
            Name: "cs:SecondsToSearch:tooltip"
            String: "Time it takes (in seconds) to search the container."
          }
          Overrides {
            Name: "cs:IsStash:tooltip"
            String: "Determines if the stash saves for individual players."
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
        Id: 5236511680078401794
        Name: "ItemSystems_StashInstance"
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
        ParentId: 4709311080573847900
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6911158172561883444
          }
        }
      }
      Objects {
        Id: 10802576067303680429
        Name: "Collider"
        Transform {
          Location {
            X: -0.000715732574
            Y: -2.31153488
            Z: 6.23608398
          }
          Rotation {
          }
          Scale {
            X: 2.21217084
            Y: 1.20468664
            Z: 1.25443637
          }
        }
        ParentId: 4709311080573847900
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 198353679974341757
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15750744153721516362
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
        ParentId: 4709311080573847900
        ChildIds: 13614841315781626877
        ChildIds: 2175464055655508897
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
        Id: 13614841315781626877
        Name: "Base"
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
        ParentId: 15750744153721516362
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 16139304974184221809
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2175464055655508897
        Name: "Lid"
        Transform {
          Location {
            X: 1.58016968
            Y: -52.8124809
            Z: 78.5153885
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15750744153721516362
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.0400000215
              G: 1
              B: 0.0463576913
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
            Id: 11540177079053858431
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5092512881013087476
        Name: "SaveText"
        Transform {
          Location {
            X: -232.93364
            Y: 27.809288
            Z: 231.922577
          }
          Rotation {
            Yaw: 92.4353333
          }
          Scale {
            X: 2.62429595
            Y: 2.62429595
            Z: 2.62429595
          }
        }
        ParentId: 4709311080573847900
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Text {
          Text: "Savable Stashes"
          Color {
            G: 0.900662422
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:left"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
    }
    Assets {
      Id: 198353679974341757
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 16139304974184221809
      Name: "Fantasy Chest Base 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_003_ref"
      }
    }
    Assets {
      Id: 11540177079053858431
      Name: "Fantasy Chest Lid 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_chest_lid_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
