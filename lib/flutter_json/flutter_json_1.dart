import 'package:flutter/material.dart';
import 'package:task_1/Model/AndroidVerison.dart';
import 'package:task_1/widget/Nextpage.dart';

class Jsonfile1 extends StatefulWidget {
  @override
  Jsonfile createState() => Jsonfile();
}

class Jsonfile extends State<Jsonfile1> {
  final json1 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "2": {"id": 3, "title": ""},
      "3": {"id": 4, "title": "KitKat"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];
  final json2 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "2": {"id": 2, "title": ""},
      "3": {"id": 3, "title": "KitKat"}
    },
    {
      "0": {"id": 8, "title": "Froyo"},
      "1": {"id": 8, "title": ""},
      "2": {"id": 9, "title": "Éclair"},
      "3": {"id": 10, "title": "Donut"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];
  List<AndroidVerison> Androidverison = [];
  List<AndroidVerison> jsondataList(dynamic jsondata) {
    List<AndroidVerison> costomflutterdart = [];
    for (var i in jsondata) {
      if (i is Map) {
        i.forEach((key, version) {
          costomflutterdart.add(AndroidVerison(
            id: version['id'],
            title: version['title'],
          ));
        });
      } else {
        for (var version in i) {
          costomflutterdart.add(AndroidVerison(
            id: version['id'],
            title: version['title'],
          ));
        }
      }
    }
    return costomflutterdart;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter task for SM Technology',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Chack your expected output',
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Androidverison = jsondataList(json1);
                          });
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 22),
                            backgroundColor: Colors.blue),
                        child: Text(
                          'ShowInput 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Androidverison = jsondataList(json2);
                          });
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 22),
                            backgroundColor: Colors.blue),
                        child: Text(
                          'ShowInput 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            if (Androidverison.isNotEmpty)
              Expanded(
                child: Nextpage(jasondata: Androidverison),
              )
          ],
        ),
      ),
    );
  }
}
