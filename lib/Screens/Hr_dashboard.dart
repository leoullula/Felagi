import 'package:felagi/Screens/Add_jobscreen.dart';
import 'package:felagi/Screens/Adminpost.dart';
import 'package:felagi/Screens/Detail.dart';
import 'package:felagi/Screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Hr_screen extends StatefulWidget {
  const Hr_screen({Key? key}) : super(key: key);

  @override
  _Hr_screenState createState() => _Hr_screenState();
}

class _Hr_screenState extends State<Hr_screen> {
  final _auth = FirebaseAuth.instance;

  // our form key
  // editing Controller
  final firstNameEditingController = new TextEditingController();
  final secondNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  String? errorMessage;
  navigateToDetail() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Addjob()));
  }

  @override
  Widget build(BuildContext context) {
    List docs = [2, 6];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Center(
            child: Chip(
          label: Text(
            'HR/Admin page',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          avatar: Icon(Icons.manage_accounts),
        )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: 350,
                  height: 100,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/a.png',
                        ),
                      ),
                    ),
                    title: Text(
                      'Leoul Mesfin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    isThreeLine: true,
                    subtitle: Text(
                      'HR/ Snow software solution',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Text(
                    'Hello,',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  Text('Leoul',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 100,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Adminpost()));
                        },
                        title: Text(
                          'Add-Job',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Post new job with title and job description',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        trailing: Icon(
                          Icons.post_add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 100,
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          'List-posted ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Post new job with title and job description',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        trailing: Icon(
                          Icons.list,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 100,
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          'Manage Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Post new job with title and job description',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        trailing: Icon(
                          Icons.post_add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 100,
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          'Post-Job',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(
                            'Post new job with title and job description',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        trailing: Icon(
                          Icons.post_add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Recent Posted Jobs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.category_sharp,
                          color: Colors.teal,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.teal,
                        ))
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text('data'),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.0, vertical: 14.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: docs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(22)),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text('Intel security',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.teal))),
                                      TextButton(
                                          onPressed: () {},
                                          child: Icon(Icons.star_half))
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

                                // Center(child: Image.asset('assets/peu.png')),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Be an early applicant",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    SizedBox(
                                      height: 60,
                                      width: 100,
                                      child: Image.asset('assets/micro.png'),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.teal,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                      width: 300,
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            )),
      ]),
    );
  }
}
