Assets {
  Id: 13788153809270582534
  Name: "ITEM_Armor_ExampleChest2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4129509117028474446
      Objects {
        Id: 4129509117028474446
        Name: "ITEM_Armor_ExampleChest2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 957457422165508346
        ChildIds: 15770986443671142485
        UnregisteredParameters {
          Overrides {
            Name: "cs:SOCKET_upper_spine"
            ObjectReference {
              SubObjectId: 4129509117028474446
            }
          }
          Overrides {
            Name: "cs:SOCKET_upper_spine:tooltip"
            String: "the socket we\'re going to attach the geomtry to when  the player equips this item. If you want your boots to go on both feet then make sure to have the name of your custom property, \"Socket_both_feet\". Then assign the root geometry object. Reference all the sockets here: https://docs.coregames.com/api/animations/"
          }
        }
        WantsNetworking: true
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
        Id: 957457422165508346
        Name: "Stats"
        Transform {
          Location {
            X: -136.890671
            Y: -195.794769
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4129509117028474446
        ChildIds: 6408535146820941895
        ChildIds: 16156142027316346666
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
      }
      Objects {
        Id: 6408535146820941895
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
        ParentId: 957457422165508346
        ChildIds: 11358364068503830835
        ChildIds: 9555431525294431573
        ChildIds: 12250187138757073273
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
        Id: 11358364068503830835
        Name: "Defense"
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
        ParentId: 6408535146820941895
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 200
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
        Id: 9555431525294431573
        Name: "Haste"
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
        ParentId: 6408535146820941895
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 200
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
        Id: 12250187138757073273
        Name: "Magic"
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
        ParentId: 6408535146820941895
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 200
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
        Id: 16156142027316346666
        Name: "Bonus1"
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
        ParentId: 957457422165508346
        ChildIds: 1299499909022322167
        ChildIds: 3207616513317607292
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
        Id: 1299499909022322167
        Name: "Defense"
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
        ParentId: 16156142027316346666
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 5
          }
          Overrides {
            Name: "cs:Max"
            Int: 10
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
        Id: 3207616513317607292
        Name: "Haste"
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
        ParentId: 16156142027316346666
        UnregisteredParameters {
          Overrides {
            Name: "cs:Min"
            Int: 2
          }
          Overrides {
            Name: "cs:Max"
            Int: 8
          }
          Overrides {
            Name: "cs:Likelihood"
            Int: 100
          }
          Overrides {
            Name: "cs:Min:tooltip"
            String: "Minimum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Max:tooltip"
            String: "Maximum possible value we can roll for this stat"
          }
          Overrides {
            Name: "cs:Likelihood:tooltip"
            String: "The likelihood that we can roll for this stat."
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
        Id: 15770986443671142485
        Name: "Geo"
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
        ParentId: 4129509117028474446
        ChildIds: 14050804043376272385
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
        Id: 14050804043376272385
        Name: "Armour Set 2 Chest"
        Transform {
          Location {
            X: -2.10786414
            Z: -11.3729172
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1.09463513
            Y: 1.09463513
            Z: 1.09463513
          }
        }
        ParentId: 15770986443671142485
        ChildIds: 154513307042033373
        ChildIds: 716541523686510030
        ChildIds: 4648170305431683971
        ChildIds: 2652917905547698249
        ChildIds: 5318242080091052859
        ChildIds: 4051551438110226275
        ChildIds: 114647461367591513
        ChildIds: 2014877646879746114
        ChildIds: 8203300187534698830
        ChildIds: 6782084542711135245
        ChildIds: 6883247054574193552
        ChildIds: 1000536049213038152
        ChildIds: 6365466783213366141
        ChildIds: 17480603503675528960
        ChildIds: 4613286388270655210
        ChildIds: 9088771381762612626
        ChildIds: 10460096540493599104
        ChildIds: 16304380528266725450
        ChildIds: 13476361330990084936
        ChildIds: 1119717295418865290
        ChildIds: 480138309681538351
        ChildIds: 16799966789271715617
        ChildIds: 5267883499532668792
        ChildIds: 18246391471859566278
        ChildIds: 7475408911574643858
        ChildIds: 11768801192434086382
        ChildIds: 6720858154975824703
        ChildIds: 14252634501838263605
        ChildIds: 3177799415368944964
        ChildIds: 10885304538057346015
        ChildIds: 2084023222882718197
        ChildIds: 10229164100787430452
        ChildIds: 15543496359198143007
        ChildIds: 10360223938273228412
        ChildIds: 11642890647003322691
        ChildIds: 8997759677301819931
        ChildIds: 1028339589203817257
        ChildIds: 6374819302611570976
        ChildIds: 8795794431343897537
        ChildIds: 5913135226106331846
        ChildIds: 4280802691705456236
        ChildIds: 762958703582519815
        ChildIds: 5455947351477407469
        ChildIds: 11577896824005455897
        ChildIds: 13086125825090346159
        ChildIds: 1334116915267286574
        ChildIds: 7431032800969721145
        ChildIds: 7540202859639848266
        ChildIds: 7413231007192667431
        ChildIds: 17201554323978409248
        ChildIds: 11131221196280022195
        ChildIds: 6045499859943644436
        ChildIds: 5965427523644010049
        ChildIds: 6746822687536083032
        ChildIds: 7399179061683465110
        ChildIds: 576260297795899476
        ChildIds: 10211512906347072891
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
        Id: 154513307042033373
        Name: "Capsule"
        Transform {
          Location {
            X: 1.9860363e-06
            Y: -3.70227051
            Z: 14.3337708
          }
          Rotation {
            Pitch: 67.4998398
            Yaw: -179.999878
            Roll: -179.999954
          }
          Scale {
            X: 0.425005317
            Y: 0.34231475
            Z: 0.0954765826
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 716541523686510030
        Name: "Capsule"
        Transform {
          Location {
            X: 1.9860363e-06
            Y: -3.70227051
            Z: 14.3337708
          }
          Rotation {
            Pitch: -67.4996948
            Yaw: -179.999878
            Roll: 179.999893
          }
          Scale {
            X: 0.425005317
            Y: 0.34231475
            Z: 0.0954765826
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 4648170305431683971
        Name: "Capsule"
        Transform {
          Location {
            X: 1.4275829e-06
            Y: -2.66125488
            Z: 22.375946
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 3.30239885e-07
            Roll: 15.7933569
          }
          Scale {
            X: 0.274687409
            Y: 0.282152414
            Z: 0.101484805
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 2652917905547698249
        Name: "Capsule"
        Transform {
          Location {
            X: 5.00000143
            Y: -2.48498273
            Z: 19.411377
          }
          Rotation {
            Pitch: 73.4903336
            Yaw: 89.9981461
            Roll: 83.2915878
          }
          Scale {
            X: 1.48378849
            Y: 1.52411306
            Z: 0.926400304
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 12224753716253082240
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
        Id: 5318242080091052859
        Name: "Capsule"
        Transform {
          Location {
            X: -4.99999857
            Y: -2.4848659
            Z: 19.411377
          }
          Rotation {
            Pitch: -73.491
            Yaw: -89.9989
            Roll: 83.2926941
          }
          Scale {
            X: 1.48378849
            Y: 1.52411306
            Z: 0.926400304
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 12224753716253082240
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
        Id: 4051551438110226275
        Name: "Capsule"
        Transform {
          Location {
            X: -2.96330791e-06
            Y: 5.52398682
            Z: 9.13249207
          }
          Rotation {
            Pitch: 2.73207552e-05
            Roll: -24.0176697
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 114647461367591513
        Name: "Capsule"
        Transform {
          Location {
            X: -1.15686089e-06
            Y: 2.15655518
            Z: -4.8289032
          }
          Rotation {
            Pitch: 4.09811328e-05
            Yaw: 3.45825611e-05
            Roll: 26.4947548
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 2014877646879746114
        Name: "Capsule"
        Transform {
          Location {
            X: -3.86333795e-06
            Y: 7.20178223
            Z: 0.663513184
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 1.49337966e-05
            Roll: -3.8404541
          }
          Scale {
            X: 0.359267473
            Y: 0.282152
            Z: 0.138642818
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 3043796555406523921
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
        Id: 8203300187534698830
        Name: "Capsule"
        Transform {
          Location {
            X: -2.96329176e-06
            Y: 5.52398682
            Z: -5.05879211
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: 2.18275602e-07
            Roll: 14.5404043
          }
          Scale {
            X: 0.329987
            Y: 0.274198294
            Z: 0.146635637
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 5944393796542654307
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
        Id: 6782084542711135245
        Name: "Capsule"
        Transform {
          Location {
            X: -14.999999
            Y: -2.64649248
            Z: 2.534729
          }
          Rotation {
            Pitch: 24.7494698
            Yaw: 91.7737961
            Roll: -168.120651
          }
          Scale {
            X: 0.196970165
            Y: 0.0893427
            Z: 0.267642707
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 10167461486394223383
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
        Id: 6883247054574193552
        Name: "Capsule"
        Transform {
          Location {
            X: -3.14767772e-06
            Y: 5.86773682
            Z: -19.0688477
          }
          Rotation {
            Pitch: -0.000122070313
            Yaw: -0.000671386719
            Roll: 7.61460161
          }
          Scale {
            X: 0.406893939
            Y: 1.08786368
            Z: 0.110171452
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 8081278958736551803
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
        Id: 1000536049213038152
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123802e-06
            Y: -12.2310791
            Z: 21.1357574
          }
          Rotation {
            Pitch: -24.7673645
            Yaw: 89.9991913
            Roll: -179.998901
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 10167461486394223383
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
        Id: 6365466783213366141
        Name: "Capsule"
        Transform {
          Location {
            X: 8.66616574e-06
            Y: -16.1549072
            Z: 1.95840454
          }
          Rotation {
            Pitch: 14.9510307
            Yaw: 89.9992218
            Roll: -179.999405
          }
          Scale {
            X: 0.0838445
            Y: 0.211037606
            Z: 0.250364095
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 10167461486394223383
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
        Id: 17480603503675528960
        Name: "Capsule"
        Transform {
          Location {
            X: 4.53516719e-07
            Y: -0.845397949
            Z: -8.73544312
          }
          Rotation {
            Pitch: 4.51451588
            Yaw: 89.9995041
            Roll: -179.999222
          }
          Scale {
            X: 0.280093342
            Y: 0.345547289
            Z: 0.267643034
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 10167461486394223383
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
        Id: 4613286388270655210
        Name: "Capsule"
        Transform {
          Location {
            X: -19.9999981
            Y: -2.3362534
            Z: 15.2632294
          }
          Rotation {
            Pitch: 6.14717e-05
            Yaw: -90
            Roll: 78.7498474
          }
          Scale {
            X: 0.214946479
            Y: 0.214946479
            Z: 0.0716488212
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 9088771381762612626
        Name: "Capsule"
        Transform {
          Location {
            X: 20.0000019
            Y: -2.33623195
            Z: 15.2632294
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: -89.999939
            Roll: -78.7498169
          }
          Scale {
            X: 0.214946479
            Y: 0.214946479
            Z: 0.0716488212
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 10460096540493599104
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999933
            Y: 11.9030228
            Z: 16.2026825
          }
          Rotation {
            Pitch: -21.3103333
            Yaw: -36.6815796
            Roll: -89.6750183
          }
          Scale {
            X: 0.121119931
            Y: 0.078801021
            Z: 0.221076369
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 16304380528266725450
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 11.9030151
            Z: 16.2026825
          }
          Rotation {
            Pitch: 21.3103943
            Yaw: 36.6818161
            Roll: -89.6750183
          }
          Scale {
            X: -0.121034779
            Y: 0.078801021
            Z: 0.221076369
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 13476361330990084936
        Name: "Capsule"
        Transform {
          Location {
            X: 15.000001
            Y: -2.64647627
            Z: 2.534729
          }
          Rotation {
            Pitch: 24.7492447
            Yaw: 88.2250443
            Roll: 168.121399
          }
          Scale {
            X: 0.196970165
            Y: 0.0893427
            Z: 0.267642707
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 10167461486394223383
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
        Id: 1119717295418865290
        Name: "Capsule"
        Transform {
          Location {
            X: 2.76756418e-06
            Y: -5.15911865
            Z: 2.38693237
          }
          Rotation {
            Pitch: 0.000532754697
            Yaw: 0.000677446194
            Roll: 164.362747
          }
          Scale {
            X: 0.360787779
            Y: 0.383333802
            Z: 0.325472713
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 14333007140866644560
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
        Id: 480138309681538351
        Name: "Group"
        Transform {
          Location {
            X: 0.122552313
            Y: 11.7094116
            Z: -14.7367706
          }
          Rotation {
            Pitch: -6.10351563e-05
            Yaw: -179.999893
            Roll: 153.691589
          }
          Scale {
            X: 0.957703114
            Y: 0.957703114
            Z: 0.957703114
          }
        }
        ParentId: 14050804043376272385
        ChildIds: 18400749265730826251
        ChildIds: 13899212419280971576
        ChildIds: 11786602313853753509
        ChildIds: 1246875960755551247
        ChildIds: 3671193528044588011
        ChildIds: 8008481773063055388
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
        Id: 18400749265730826251
        Name: "Capsule"
        Transform {
          Location {
            X: -15.1228027
            Y: -7.5581665
          }
          Rotation {
            Pitch: 5.12325621
            Yaw: 78.7042236
            Roll: -91.0217
          }
          Scale {
            X: -0.234686419
            Y: 0.0328887887
            Z: 0.137147561
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 13899212419280971576
        Name: "Capsule"
        Transform {
          Location {
            X: 7.34179688
            Y: 5.04260254
            Z: 1.15206909
          }
          Rotation {
            Pitch: -2.89944243
            Yaw: -33.6399345
            Roll: -94.3471909
          }
          Scale {
            X: -0.137052566
            Y: 0.0328888632
            Z: 0.137148932
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 11786602313853753509
        Name: "Capsule"
        Transform {
          Location {
            X: -6.97375774
            Y: 5.04259872
            Z: 1.15206909
          }
          Rotation {
            Pitch: 2.89950395
            Yaw: 33.6400871
            Roll: -94.347229
          }
          Scale {
            X: 0.137148976
            Y: 0.0328888632
            Z: 0.137148932
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 1246875960755551247
        Name: "Capsule"
        Transform {
          Location {
            X: -0.122805431
            Y: 5.03106689
            Z: 3.88168335
          }
          Rotation {
            Pitch: -0.000427246094
            Yaw: -0.000640869141
            Roll: -13.678009
          }
          Scale {
            X: 0.0903069228
            Y: 0.0903069228
            Z: 0.060204614
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10830976032868219508
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
        Id: 3671193528044588011
        Name: "Capsule"
        Transform {
          Location {
            X: -6.90330601
            Y: 5.60136795
            Z: -3.4654026
          }
          Rotation {
            Pitch: 21.3858
            Yaw: -89.9999847
            Roll: 3.30086186e-05
          }
          Scale {
            X: 0.0367977098
            Y: 0.0237622876
            Z: 0.0126103889
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 17749268126197611831
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
        Id: 8008481773063055388
        Name: "Capsule"
        Transform {
          Location {
            X: 14.8772011
            Y: -7.5581584
            Z: 2.19427532e-11
          }
          Rotation {
            Pitch: -5.12323
            Yaw: -78.7041626
            Roll: -91.0217285
          }
          Scale {
            X: 0.234851509
            Y: 0.0328887887
            Z: 0.137147561
          }
        }
        ParentId: 480138309681538351
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 267906990579783124
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
        Id: 16799966789271715617
        Name: "Capsule"
        Transform {
          Location {
            X: -7.47448041e-07
            Y: 1.39337158
            Z: -12.9682007
          }
          Rotation {
            Pitch: 0.000232226419
            Yaw: 0.000847425195
            Roll: -170.637329
          }
          Scale {
            X: 0.360787362
            Y: 0.3426404
            Z: 0.0474735275
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
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
            Id: 10167461486394223383
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
        Id: 5267883499532668792
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 13.4956055
            Z: 15.9344177
          }
          Rotation {
            Pitch: 10.0605536
            Yaw: 36.6171684
            Roll: -89.6924438
          }
          Scale {
            X: -0.0777735785
            Y: 0.0506353416
            Z: 0.142057508
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 267906990579783124
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
        Id: 18246391471859566278
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999924
            Y: 13.5011673
            Z: 15.9344177
          }
          Rotation {
            Pitch: -10.0604858
            Yaw: -36.6170654
            Roll: -89.6924438
          }
          Scale {
            X: 0.0778282732
            Y: 0.0506353416
            Z: 0.142057508
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 267906990579783124
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
        Id: 7475408911574643858
        Name: "Capsule"
        Transform {
          Location {
            X: -2.39913248e-07
            Y: 0.447265625
            Z: -16.4874115
          }
          Rotation {
            Pitch: 4.51451588
            Yaw: 89.9995499
            Roll: -179.999222
          }
          Scale {
            X: 0.304458976
            Y: 0.362330317
            Z: 0.035505943
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 11768801192434086382
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999943
            Y: 11.4567337
            Z: 14.505188
          }
          Rotation {
            Pitch: -21.3103333
            Yaw: -36.6815796
            Roll: -89.6749878
          }
          Scale {
            X: 0.133019462
            Y: 0.0865428746
            Z: 0.242796242
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 267906990579783124
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
        Id: 6720858154975824703
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 11.4497681
            Z: 14.505188
          }
          Rotation {
            Pitch: 21.3103943
            Yaw: 36.6817284
            Roll: -89.6750183
          }
          Scale {
            X: -0.132925943
            Y: 0.0865428746
            Z: 0.242796242
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 267906990579783124
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
        Id: 14252634501838263605
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123848e-06
            Y: -12.2310791
            Z: 20.6120148
          }
          Rotation {
            Pitch: -24.7673645
            Yaw: 89.9991226
            Roll: -179.998901
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 3177799415368944964
        Name: "Capsule"
        Transform {
          Location {
            X: 6.01993e-06
            Y: -11.2219849
            Z: 10.3700714
          }
          Rotation {
            Pitch: -11.0877075
            Yaw: 89.9990387
            Roll: -179.998978
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 10167461486394223383
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
        Id: 10885304538057346015
        Name: "Capsule"
        Transform {
          Location {
            X: 5.95359552e-06
            Y: -11.0983276
            Z: 9.86116
          }
          Rotation {
            Pitch: -11.087677
            Yaw: 89.9989624
            Roll: -179.999023
          }
          Scale {
            X: 0.161063507
            Y: 0.362874776
            Z: 0.250363797
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 2084023222882718197
        Name: "Capsule"
        Transform {
          Location {
            X: 6.49345657e-06
            Y: -12.1047363
            Z: 26.4110565
          }
          Rotation {
            Pitch: -38.7264404
            Yaw: 89.9989
            Roll: -179.998611
          }
          Scale {
            X: 0.161063477
            Y: 0.290591
            Z: 0.130641922
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 10167461486394223383
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
        Id: 10229164100787430452
        Name: "Capsule"
        Transform {
          Location {
            X: 6.56123257e-06
            Y: -12.2310791
            Z: 25.9027863
          }
          Rotation {
            Pitch: -38.7264709
            Yaw: 89.998764
            Roll: -179.998581
          }
          Scale {
            X: 0.161063477
            Y: 0.290591
            Z: 0.130641922
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 10167461486394223383
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
        Id: 15543496359198143007
        Name: "Capsule"
        Transform {
          Location {
            X: -5.71235114e-06
            Y: 10.6485596
            Z: 16.296875
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.999939
            Roll: 1.87017176e-05
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 566098347886128093
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
        Id: 10360223938273228412
        Name: "Capsule"
        Transform {
          Location {
            X: -6.8836448e-06
            Y: 12.8320313
            Z: 6.02261353
          }
          Rotation {
            Pitch: -50.6717224
            Yaw: 89.9997787
            Roll: 0.000153575136
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 566098347886128093
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
        Id: 11642890647003322691
        Name: "Capsule"
        Transform {
          Location {
            X: -5.71234887e-06
            Y: 10.6485596
            Z: 14.4649048
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.9999
            Roll: 2.0482832e-05
          }
          Scale {
            X: 0.341500372
            Y: 0.330431879
            Z: 0.801522851
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 8997759677301819931
        Name: "Capsule"
        Transform {
          Location {
            X: -6.88364253e-06
            Y: 12.8320313
            Z: 4.19064331
          }
          Rotation {
            Pitch: -50.6716919
            Yaw: 89.9997864
            Roll: 0.000145492144
          }
          Scale {
            X: 0.317007333
            Y: 0.330431819
            Z: 0.801523447
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 1028339589203817257
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0002136
            Roll: -33.7504272
          }
          Scale {
            X: 0.313469023
            Y: 0.314911336
            Z: 0.208980173
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 6374819302611570976
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996262
            Roll: -33.7502136
          }
          Scale {
            X: 0.313469023
            Y: 0.314911336
            Z: 0.208980173
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 8795794431343897537
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 22.1968842
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.32313177
            Y: 0.324618489
            Z: 0.215421975
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 5913135226106331846
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 22.5171661
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.32313177
            Y: 0.324618489
            Z: 0.215421975
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 4280802691705456236
        Name: "Capsule"
        Transform {
          Location {
            X: 6.16732768e-06
            Y: -11.4967651
            Z: 15.5651093
          }
          Rotation {
            Pitch: -16.9969177
            Yaw: 89.9995651
            Roll: 8.21347858e-05
          }
          Scale {
            X: 0.341501117
            Y: 0.277092159
            Z: 1.26087022
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
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
            Id: 566098347886128093
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
        Id: 762958703582519815
        Name: "Capsule"
        Transform {
          Location {
            X: 5.64968059e-06
            Y: -10.5317993
            Z: 14.6509552
          }
          Rotation {
            Pitch: -16.9969482
            Yaw: 89.999588
            Roll: 8.48130949e-05
          }
          Scale {
            X: 0.361633807
            Y: 0.293427616
            Z: 1.33520246
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 5455947351477407469
        Name: "Capsule"
        Transform {
          Location {
            X: -5.7802913e-06
            Y: 10.7752075
            Z: 17.0439301
          }
          Rotation {
            Pitch: -6.3404541
            Yaw: 89.999794
          }
          Scale {
            X: 0.312140614
            Y: 0.330431789
            Z: 0.801523089
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 11577896824005455897
        Name: "Capsule"
        Transform {
          Location {
            X: -6.0165753e-06
            Y: 11.2156982
            Z: 5.11547852
          }
          Rotation {
            Pitch: -16.525116
            Yaw: 89.9998779
            Roll: 2.49356217e-05
          }
          Scale {
            X: 0.341500312
            Y: 0.345026672
            Z: 0.801522851
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 13086125825090346159
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 24.2316589
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.313470066
            Y: 0.314913392
            Z: 0.16514498
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 1334116915267286574
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.911377
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.313470066
            Y: 0.314913392
            Z: 0.16514498
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 7431032800969721145
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 25.5677032
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.258919775
            Y: 0.260111094
            Z: 0.172613874
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 7540202859639848266
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 25.8879852
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.258919775
            Y: 0.260111094
            Z: 0.172613874
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 7413231007192667431
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.241574913
            Y: 0.331965029
            Z: 0.208980128
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 17201554323978409248
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.241574913
            Y: 0.331965029
            Z: 0.208980128
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 11131221196280022195
        Name: "Capsule"
        Transform {
          Location {
            X: 5.00000572
            Y: -10.5252047
            Z: 15.2029572
          }
          Rotation {
            Pitch: -16.4620361
            Yaw: 89.9995193
            Roll: 8.19046327e-05
          }
          Scale {
            X: 0.368722528
            Y: 0.0548091233
            Z: 1.36137104
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 6045499859943644436
        Name: "Capsule"
        Transform {
          Location {
            X: 14.9999924
            Y: 13.5011673
            Z: 15.9344177
          }
          Rotation {
            Pitch: -10.0604858
            Yaw: -36.6169434
            Roll: -89.6924438
          }
          Scale {
            X: 0.0912363231
            Y: 0.0576231182
            Z: 0.129442379
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 267906990579783124
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
        Id: 5965427523644010049
        Name: "Capsule"
        Transform {
          Location {
            X: -15
            Y: 13.4956055
            Z: 15.9344177
          }
          Rotation {
            Pitch: 10.0605536
            Yaw: 36.6171
            Roll: -89.6924438
          }
          Scale {
            X: -0.0911722
            Y: 0.0576231182
            Z: 0.129442379
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 267906990579783124
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
        Id: 6746822687536083032
        Name: "Capsule"
        Transform {
          Location {
            X: -14.9999981
            Y: -3.25409746
            Z: 23.662384
          }
          Rotation {
            Pitch: -17.101593
            Yaw: 89.9996185
            Roll: -33.7502441
          }
          Scale {
            X: 0.307532907
            Y: 0.318170905
            Z: 0.208987877
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 7399179061683465110
        Name: "Capsule"
        Transform {
          Location {
            X: 15.0000019
            Y: -3.15563154
            Z: 23.982666
          }
          Rotation {
            Pitch: 17.1016731
            Yaw: -90.0001831
            Roll: -33.7504883
          }
          Scale {
            X: 0.307532907
            Y: 0.318170905
            Z: 0.208987877
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 575129529458275312
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 16677330902109573393
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:smart"
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
            Id: 16102254645995823356
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
        Id: 576260297795899476
        Name: "Capsule"
        Transform {
          Location {
            X: -4.99999428
            Y: -10.5252104
            Z: 15.2029572
          }
          Rotation {
            Pitch: -16.4620361
            Yaw: 89.9995193
            Roll: 8.19046327e-05
          }
          Scale {
            X: 0.368722528
            Y: 0.0548091233
            Z: 1.36137104
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 566098347886128093
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
        Id: 10211512906347072891
        Name: "Capsule"
        Transform {
          Location {
            X: 1.28502336e-06
            Y: -2.39544678
            Z: -4.92578125
          }
          Rotation {
            Pitch: 0.000532754697
            Yaw: 0.000677445671
            Roll: 164.362595
          }
          Scale {
            X: 0.378009647
            Y: 0.401630372
            Z: 0.0296932571
          }
        }
        ParentId: 14050804043376272385
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7943316154070914036
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
            Id: 14333007140866644560
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
    }
    Assets {
      Id: 3043796555406523921
      Name: "Pipe - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_004"
      }
    }
    Assets {
      Id: 12224753716253082240
      Name: "Bone Human Jaw 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_jaw_01_ref"
      }
    }
    Assets {
      Id: 5944393796542654307
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 10167461486394223383
      Name: "Cylinder - Chamfered Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_002"
      }
    }
    Assets {
      Id: 8081278958736551803
      Name: "Fantasy Shield 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_fan_shield_003"
      }
    }
    Assets {
      Id: 267906990579783124
      Name: "Scifi Panel 1x3m Angled Right"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_panel_1x3m_angledR_001"
      }
    }
    Assets {
      Id: 14333007140866644560
      Name: "Prism - 3-Sided Convex"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_triangle_convex_001"
      }
    }
    Assets {
      Id: 10830976032868219508
      Name: "Cylinder - Chamfered"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_chamfer"
      }
    }
    Assets {
      Id: 17749268126197611831
      Name: "Arch Fancy Peaked 6m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arch_fancy_ogive_6m_001"
      }
    }
    Assets {
      Id: 566098347886128093
      Name: "Gem - Trillion Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_trillion_polished_001"
      }
    }
    Assets {
      Id: 16102254645995823356
      Name: "Dodecahedron"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_dodecahedron_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
