import 'package:felagi/Screens/Hr_login.dart';

import 'package:felagi/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          elevation: 0,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text('Lula'), accountEmail: Text('@gmail.com'))
            ],
          ),
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    child: Image.asset(
                      "assets/Fn.png",
                      fit: BoxFit.contain,
                    )),
                Text(
                  'Felagi',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(children: [
              Center(child: Text('Felagi')),
              Text("Pick the identity the best describes you !"),
            ]),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40))),
                        width: 100,
                        height: 30,
                      ),
                    ],
                  ),
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      leading: CircleAvatar(
                        child: Image.asset(
                          'assets/a.png',
                        ),
                      ),
                      title: Text(
                        'Find jobs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Join the communit and get updated with your opinion job catagory',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              wordSpacing: 1.5))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                color: Colors.grey[100],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40))),
                          width: 100,
                          height: 30,
                        ),
                      ],
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Hrlogin()));
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/a2.png',
                        ),
                      ),
                      title: Text('Manager /H.R',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        'post company profile and details of announced and keep use our platform to communicate the contacts.',
                        style: TextStyle(fontSize: 12, wordSpacing: 1.5),
                      ),
                    )
                  ],
                ))
          ]),
        )));
  }
}
