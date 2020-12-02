Name: "Salvagables"
RootId: 9831645784876922823
Objects {
  Id: 8982456482764424304
  Name: "Crowbar"
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
  ParentId: 9831645784876922823
  ChildIds: 2543818374050187247
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemToSalvage"
      AssetReference {
        Id: 15328159966925277124
      }
    }
    Overrides {
      Name: "cs:ItemToSalvage:tooltip"
      String: "The item that will be salvaged."
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
  Id: 2543818374050187247
  Name: "Material Metal"
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
  ParentId: 8982456482764424304
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemProduct"
      AssetReference {
        Id: 4528385149355347034
      }
    }
    Overrides {
      Name: "cs:Amount"
      Int: 4
    }
    Overrides {
      Name: "cs:ItemProduct:tooltip"
      String: "The item to give to the player when they salvage."
    }
    Overrides {
      Name: "cs:Amount:tooltip"
      String: "The amount of this item they will receive when salvaging"
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
