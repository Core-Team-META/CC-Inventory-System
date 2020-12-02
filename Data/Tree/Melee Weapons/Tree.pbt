Name: "Melee Weapons"
RootId: 2228786728903840260
Objects {
  Id: 10404367622804800808
  Name: "Improvised Knife"
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
  ParentId: 2228786728903840260
  UnregisteredParameters {
    Overrides {
      Name: "cs:Name"
      String: "Improvised Knife"
    }
    Overrides {
      Name: "cs:Icon"
      AssetReference {
        Id: 9286547835689629761
      }
    }
    Overrides {
      Name: "cs:ItemType"
      String: "Sword"
    }
    Overrides {
      Name: "cs:Rarity"
      String: "Common"
    }
    Overrides {
      Name: "cs:Description"
      String: "For your everyday stabbing needs"
    }
    Overrides {
      Name: "cs:DropRotation"
      Vector {
        X: 30
      }
    }
    Overrides {
      Name: "cs:Item"
      AssetReference {
        Id: 15328159966925277124
      }
    }
    Overrides {
      Name: "cs:Item:tooltip"
      String: "The Item to equip if it\'s a weapon or if not then it\'s the item\'s geometry. If no display item is given for the Item\'s loot drop entry then it will default to dropping this and a warning will be given."
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
