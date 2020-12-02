Name: "PlayerStats"
RootId: 16088937786527760479
Objects {
  Id: 16191612857734013092
  Name: "Client"
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
  ParentId: 16088937786527760479
  ChildIds: 4023436821975083126
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
  Id: 4023436821975083126
  Name: "PlayerStats_LevelUpFXSpawner"
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
  ParentId: 16191612857734013092
  UnregisteredParameters {
    Overrides {
      Name: "cs:VFX_LocalPlayer"
      AssetReference {
        Id: 16439493886394696103
      }
    }
    Overrides {
      Name: "cs:VFX_OtherPlayer"
      AssetReference {
        Id: 16488843040722869207
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
      Id: 6058394291063560538
    }
  }
}
Objects {
  Id: 17433656419165149424
  Name: "StatSheetComponentSpawner"
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
  ParentId: 16088937786527760479
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentTemplate"
      AssetReference {
        Id: 12559898450615284556
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
      Id: 16508647158301111682
    }
  }
}
Objects {
  Id: 12690318487224717190
  Name: "Stats"
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
  ParentId: 16088937786527760479
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
