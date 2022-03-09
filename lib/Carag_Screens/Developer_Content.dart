import 'package:felagi/DatabaseConfig/database.dart';
import 'package:felagi/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:felagi/Screens/Detail.dart';
import 'package:felagi/Enhance_Ui_Screens/shimmer.dart';

class Developer extends StatefulWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  bool isLoading = false;
  final List<int> numbers = [1, 2, 3, 4, 1, 2, 3, 4];
  void initState() {
    super.initState();
    initialize();
    loadData();
  }

  Future loadData() async {
    setState(() => isLoading = true);
    await Future.delayed(Duration(seconds: 2), () {});
    setState(() => isLoading = false);
  }

  late Database db;
  List docs = [];
  initialize() {
    db = Database();
    db.initialise();
    db.readDev().then((value) => {
          setState(() {
            docs = value;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildJobShimer() => ListView.builder(
        itemCount: docs.length,
        itemBuilder: (context, index) {
          return (ListTile(
            leading: Shimmerwid.circular(
              width: 34,
              height: 34,
              shapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            trailing: Shimmerwid.circular(
              width: 44,
              height: 24,
              shapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            title: Shimmerwid.rectangular(height: 10),
            subtitle: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Shimmerwid.rectangular(height: 14),
                SizedBox(
                  height: 10,
                ),
                Shimmerwid.rectangular(height: 14),
                SizedBox(
                  height: 10,
                ),
                Shimmerwid.rectangular(height: 14),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ));
        });
    Divider(
      thickness: 2,
      color: Colors.grey,
    );

    ///////////////////////////////////////////////////////////
    final List<int> numbers = [1, 2, 3, 4, 1, 2, 3, 4];

    // ignore: non_constant_identifier_names
    Widget Realdata() => ListView(children: [
          Column(children: [
            ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              title: Column(children: [
                Text(
                  "NOTIFY ME OF NEW JOB ",
                  style: TextStyle(color: Colors.blue),
                ),
              ]),
              trailing: Icon(Icons.settings_remote_rounded),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4.0),
                height: MediaQuery.of(context).size.height * 1.32,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home())),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              leading: Image.asset(
                                'assets/tel.png',
                                width: 40,
                                height: 40,
                              ),
                              title: Column(children: [
                                Text(
                                  docs[index]['Title'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                Align(
                                  child: Text(
                                    docs[index]['Adress'],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  "E" +
                                      docs[index]['Salary'] +
                                      "(On Felagi Est)",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[200])),
                                  onPressed: () {},
                                  child: Text(
                                    docs[index]['Type'],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ]),
                              trailing: Container(
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
                                                size: 15, color: Colors.green),
                                            label: Text('3.4',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.green)))),
                                  )),
                            ),
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

    Widget f() {
      if (isLoading) {
        return buildJobShimer();
      } else {
        return Realdata();
      }
    }

    return (f());
  }
}
