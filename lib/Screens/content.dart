import 'package:felagi/Screens/Detail.dart';
import 'package:felagi/DatabaseConfig/database.dart';
import 'package:felagi/Enhance_Ui_Screens/shimmer.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  bool isLoading = false;
  //final List<int> numbers = [1];
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
    db.read().then((value) => {
          setState(() {
            docs = value;
          })
        });
  }

  navigateToDetail(docs) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Detail(docs)));
  }

  @override
  Widget build(BuildContext context) {
    Widget buildJobhomeShimer() => Padding(
          padding: const EdgeInsets.fromLTRB(10, 140, 10, 0),
          child: ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index) {
                return (Container(
                    color: Colors.white,
                    height: 240,
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Shimmerwid.circular(
                                width: 280,
                                height: 30,
                                shapeBorder: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                              Shimmerwid.rectangular(
                                height: 20,
                                width: 30,
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 10,
                            width: 180,
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 20,
                            width: 150,
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 20,
                            width: 250,
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 20,
                            width: 250,
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 20,
                            width: 150,
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Shimmerwid.rectangular(
                            height: 20,
                            width: 150,
                          ),
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey[300],
                        ),
                      ],
                    )));
              }),
        );

    Widget f() {
      if (isLoading) {
        return buildJobhomeShimer();
      } else {
        return Realhomedata();
      }
    }

    return (f());
  }

  // ignore: non_constant_identifier_names
  Widget Realhomedata() => ListView(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
          child: Text(
            "30 September 2021",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.grey[700]),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
          child: Text(
            "Jobs based on your search.Updated 13min(s)ago",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey[900]),
          ),
        ),
        Divider(thickness: 5, color: Colors.grey[300]),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
            height: MediaQuery.of(context).size.height * 0.70,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => navigateToDetail(docs[index]),
                    child: Container(
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(docs[index]['company'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.bold)),
                                  Icon(Icons.block, color: Colors.grey[700]),
                                ]),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ethio Telecom",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("3.4",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w900)),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  )
                                ]),

                            //////////////////////////////////
                            ///
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Addis Abeba Around Bole",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,
                                      )),
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.grey[100])),
                                    onPressed: () {},
                                    child: Text(
                                      "£10,200 - 13,400k(Felagi Est)",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ]),

                            // Center(child: Image.asset('assets/peu.png')),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    "Be an early applicant",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  icon: Icon(
                                    Icons.speed,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 100,
                                  child: Image.asset('assets/micro.png'),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "See details. And apply a Job",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                    ),
                  );
                })),
      ]);
}
