//import 'package:felagi/asset/db_icon.dart';
import 'package:felagi/Carag_Screens/Developer_Content.dart';

import 'package:felagi/Screens/catagory.dart';
import 'package:felagi/Screens/company_content.dart';
import 'package:flutter/material.dart';

class CatagDev extends StatelessWidget {
  const CatagDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget buildPage(String text) => Center(child: Text(text));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                elevation: 0,
                backgroundColor: Colors.greenAccent[700],
                actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.start, children: []),
                bottom: TabBar(
                  labelColor: Colors.cyan,
                  indicatorColor: Colors.blue,
                  indicatorWeight: 2,
                  unselectedLabelColor: Colors.orange,
                  unselectedLabelStyle: TextStyle(
                    color: Colors.amberAccent,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Developer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Constraction",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Art & Design",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                  children: [Developer(), Companycontent(), Catagory()])),
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
