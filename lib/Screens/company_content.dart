import 'package:felagi/DatabaseConfig/database.dart';
import 'package:felagi/Screens/Detail.dart';
import 'package:felagi/Screens/Sign.dart';

import 'package:flutter/material.dart';

class Companycontent extends StatelessWidget {
  @override
  Companycontent({Key? key, docs}) : super(key: key);
  late Database db;
  List docs = [];

  Widget build(BuildContext context) {
    final List<int> numbers = [1, 2, 3, 4, 1, 2, 3, 4];
    return ListView(children: [
      Column(children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4.0),
            height: MediaQuery.of(context).size.height * 1.32,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                    child: Column(
                      children: [
                        ListTile(
                            leading: Image.asset(
                              'assets/tel.png',
                              width: 40,
                              height: 40,
                            ),
                            title: Text(
                              "Minstre of sciense",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 30.0,
                                    width: 60.0,
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                          border:
                                              Border.all(color: Colors.green)),
                                      child: new Center(
                                          child: new TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(Icons.star,
                                                  size: 15,
                                                  color: Colors.green),
                                              label: Text('3.4',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.green)))),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '13,232 Reviews',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.blueGrey,
                        )
                      ],
                    ),
                  );
                })),
        Divider(
          color: Colors.grey,
        ),
      ])
    ]);
  }
}
