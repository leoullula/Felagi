import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.home,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "By signing in to your account, you agree to felagi's terms of service and consent toour cookie policy and privacy policy",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  width: 420,
                  height: 590,
                  child: Column(
                    children: [
                      TextField(
                        decoration: new InputDecoration(
                          hintText: 'Email',
                          //icon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: new InputDecoration(
                          hintText: 'Password',
                          //icon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: new InputDecoration(
                          hintText: 'Confirm Password',
                          //icon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(440, 40),
                        ),
                      ),
                      SizedBox(height: 15),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        "or",
                        style: TextStyle(color: Colors.grey),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        label: Text('Sign In FaceBook'),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(440, 40),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.email),
                        label: Text('Sign In Google'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          fixedSize: Size(440, 40),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Already have and an Acount Login',
                            style: TextStyle(color: Colors.green[700]),
                          )),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
