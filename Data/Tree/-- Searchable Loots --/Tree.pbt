Name: "-- Searchable Loots --"
RootId: 3417767820271942384
Objects {
  Id: 3026969848383714024
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
  ParentId: 3417767820271942384
  ChildIds: 9743099854494111521
  ChildIds: 2823844883959261999
  ChildIds: 13322253838376447720
  UnregisteredParameters {
    Overrides {
      Name: "cs:ID"
      ObjectReference {
        SelfId: 3026969848383714024
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
  Id: 13322253838376447720
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
  ParentId: 3026969848383714024
  ChildIds: 5381858517503113169
  ChildIds: 1117444371708345968
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
  Id: 1117444371708345968
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
  ParentId: 13322253838376447720
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
  Id: 5381858517503113169
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
  ParentId: 13322253838376447720
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
  Id: 2823844883959261999
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
  ParentId: 3026969848383714024
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
  Id: 9743099854494111521
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
  ParentId: 3026969848383714024
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
  Id: 2577558657673146749
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
  ParentId: 3417767820271942384
  ChildIds: 2288770755847863301
  ChildIds: 5177321186118936869
  ChildIds: 14955000203201440871
  UnregisteredParameters {
    Overrides {
      Name: "cs:ID"
      ObjectReference {
        SelfId: 2577558657673146749
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
  Id: 14955000203201440871
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
  ParentId: 2577558657673146749
  ChildIds: 1902567013186461452
  ChildIds: 9970582389669665857
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
  Id: 9970582389669665857
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
  ParentId: 14955000203201440871
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
  Id: 1902567013186461452
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
  ParentId: 14955000203201440871
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
  Id: 5177321186118936869
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
  ParentId: 2577558657673146749
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
  Id: 2288770755847863301
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
  ParentId: 2577558657673146749
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
  Id: 17526775655241409291
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
  ParentId: 3417767820271942384
  ChildIds: 1914892193458257200
  ChildIds: 13577419351659111430
  ChildIds: 11070471501266780368
  UnregisteredParameters {
    Overrides {
      Name: "cs:ID"
      ObjectReference {
        SelfId: 17526775655241409291
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
  Id: 11070471501266780368
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
  ParentId: 17526775655241409291
  ChildIds: 17786085983232269012
  ChildIds: 15496093868329042110
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
  Id: 15496093868329042110
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
  ParentId: 11070471501266780368
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
  Id: 17786085983232269012
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
  ParentId: 11070471501266780368
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
  Id: 13577419351659111430
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
  ParentId: 17526775655241409291
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
  Id: 1914892193458257200
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
  ParentId: 17526775655241409291
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
  Id: 3630716490959239735
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
  ParentId: 3417767820271942384
  ChildIds: 11848520891592233550
  ChildIds: 18378283325976252188
  ChildIds: 9877766053166485389
  UnregisteredParameters {
    Overrides {
      Name: "cs:ID"
      ObjectReference {
        SelfId: 3630716490959239735
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
  Id: 9877766053166485389
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
  ParentId: 3630716490959239735
  ChildIds: 10719250810923177943
  ChildIds: 16174959715150697518
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
  Id: 16174959715150697518
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
  ParentId: 9877766053166485389
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
  Id: 10719250810923177943
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
  ParentId: 9877766053166485389
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
  Id: 18378283325976252188
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
  ParentId: 3630716490959239735
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
  Id: 11848520891592233550
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
  ParentId: 3630716490959239735
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
