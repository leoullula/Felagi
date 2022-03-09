//import 'package:felagi/asset/db_icon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:felagi/Screens/catagory.dart';
import 'package:felagi/Screens/content.dart';
import 'package:felagi/Enhance_Ui_Screens/shimmerhome.dart';
import 'package:felagi/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel logedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) => {this.logedInUser = UserModel.fromMap(value.data())});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.teal,
                          onPressed: () {
                            showSearch(context: context, delegate: Search());
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Icon(Icons.notifications, color: Colors.teal),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contact_page, color: Colors.teal),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/a.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "${logedInUser.firstName}",
                        style: TextStyle(color: Colors.teal),
                      )
                    ],
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /* IconButton(
                    onPressed: () {},
                    icon: Icon(Felagi.logo),
                    color: Colors.blue[900],
                    iconSize: 200,
                  )*/
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Felagi",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                        ]),
                    bottom: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.teal,
                      indicatorWeight: 3,
                      unselectedLabelColor: Colors.amber,
                      unselectedLabelStyle: TextStyle(
                        color: Colors.amberAccent,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "Job Feed",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Catagory",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Acount",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )),
              /*drawer: Drawer(
                elevation: 0,
                child: ListView(
                  children: [
                    UserAccountsDrawerHeader(
                        accountName: Text('Lula'),
                        accountEmail: Text('@gmail.com'))
                  ],
                ),
              ),*/
              body: TabBarView(children: [Content(), Catagory(), Shim()])),
        ));
  }
}

class Search extends SearchDelegate<String> {
  final job = ['Software', 'Managment', 'Marketing', 'Constraction'];
  final recentsearch = ['Software', 'Managment'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggessionList = query.isEmpty
        ? recentsearch
        : job.where((j) => j.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.badge),
        title: Text(suggessionList[index]),
      ),
      itemCount: suggessionList.length,
    );
  }
}
