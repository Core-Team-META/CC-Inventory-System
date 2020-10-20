Name: "PlayerStats"
RootId: 2169765370860777725
Objects {
  Id: 2445392664747790342
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
  ParentId: 2169765370860777725
  ChildIds: 17766124178069280980
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 2445392664747790342
    SubobjectId: 9108674364317494819
    InstanceId: 971297737377531071
    TemplateId: 11272690134656118769
  }
}
Objects {
  Id: 17766124178069280980
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
  ParentId: 2445392664747790342
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
  InstanceHistory {
    SelfId: 17766124178069280980
    SubobjectId: 12180749836260665073
    InstanceId: 971297737377531071
    TemplateId: 11272690134656118769
  }
}
Objects {
  Id: 3506940243860088914
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
  ParentId: 2169765370860777725
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
  InstanceHistory {
    SelfId: 3506940243860088914
    SubobjectId: 8010886883027965559
    InstanceId: 971297737377531071
    TemplateId: 11272690134656118769
  }
}
