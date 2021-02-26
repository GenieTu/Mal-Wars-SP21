Name: "Damage_2"
RootId: 7130910895738376355
Objects {
  Id: 14502177183950525604
  Name: "TestMortar"
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
  ParentId: 7130910895738376355
  UnregisteredParameters {
    Overrides {
      Name: "cs:Name"
      String: "Mortar"
    }
    Overrides {
      Name: "cs:Icon"
      AssetReference {
        Id: 17033141427451298610
      }
    }
    Overrides {
      Name: "cs:Type"
      ObjectReference {
        SelfId: 15473447320514786512
      }
    }
    Overrides {
      Name: "cs:Cost"
      Int: 300
    }
    Overrides {
      Name: "cs:Damage"
      Int: 1
    }
    Overrides {
      Name: "cs:Speed"
      Float: 1
    }
    Overrides {
      Name: "cs:Range"
      Float: 80
    }
    Overrides {
      Name: "cs:Tower"
      AssetReference {
        Id: 2150629678682640040
      }
    }
    Overrides {
      Name: "cs:TowerGhost"
      AssetReference {
        Id: 2150629678682640040
      }
    }
    Overrides {
      Name: "cs:VisualProjectile"
      AssetReference {
        Id: 4711965853694341478
      }
    }
    Overrides {
      Name: "cs:TowerClass"
      AssetReference {
        Id: 13847017050842209487
      }
    }
    Overrides {
      Name: "cs:VisualProjectile:tooltip"
      String: "Purely Visual. This is for making your tower attacks look pretty."
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
  Id: 17495909577069202432
  Name: "Bank"
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
  ParentId: 7130910895738376355
  UnregisteredParameters {
    Overrides {
      Name: "cs:Name"
      String: "Bank"
    }
    Overrides {
      Name: "cs:Icon"
      AssetReference {
        Id: 17499171427180200450
      }
    }
    Overrides {
      Name: "cs:Type"
      ObjectReference {
        SelfId: 16246016697899800199
      }
    }
    Overrides {
      Name: "cs:Cost"
      Int: 1500
    }
    Overrides {
      Name: "cs:Damage"
      Int: 0
    }
    Overrides {
      Name: "cs:Speed"
      Float: 0.2
    }
    Overrides {
      Name: "cs:Range"
      Float: 0
    }
    Overrides {
      Name: "cs:Tower"
      AssetReference {
        Id: 16013314213448772834
      }
    }
    Overrides {
      Name: "cs:TowerGhost"
      AssetReference {
        Id: 15303515558436957644
      }
    }
    Overrides {
      Name: "cs:VisualProjectile"
      AssetReference {
        Id: 6384976585573990169
      }
    }
    Overrides {
      Name: "cs:TowerClass"
      AssetReference {
        Id: 16079215690187532467
      }
    }
    Overrides {
      Name: "cs:VisualProjectile:tooltip"
      String: "Purely Visual. This is for making your tower attacks look pretty."
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
  Id: 12578761812920551926
  Name: "AOE"
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
  ParentId: 7130910895738376355
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "AOE"
  }
}
Objects {
  Id: 287725104296604219
  Name: "Sniper"
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
  ParentId: 7130910895738376355
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Sniper"
  }
}
Objects {
  Id: 15836056593155272946
  Name: "Laser"
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
  ParentId: 7130910895738376355
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Laser"
  }
}
