import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  List docnew = [];

  Detail(this.docnew);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  get index => null;

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    List doc = widget.docnew;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        persistentFooterButtons: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Apply With Felagi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
              ),
            ),
          ),
        ],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, color: Colors.black54)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.black87,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Text(
                'Dangote',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black87),
              ),
              SizedBox(height: 5),
              Text(
                '',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              SizedBox(height: 5),
              Text(
                "Addis Abeba Bole.Remote",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(height: 15),
              Text(
                "Job Details",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Salary",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1200 - 2000 Per Month",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Text(
                "JobType",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Permanent",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Contractual",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Part Time",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Remote",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Number of Position For This Role",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Full Job Description",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 15),
              Text(
                "Role summary:",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Sony Electronics, Inc. look for the risk-takers, the collaborators, the inspired and the inspirational. We want the people who are brave enough to work at the cutting edge and create solutions that will enrich and improve the lives of people across the globe. So, if you want to make the world say wow, let's talk. We're looking for an Administrator to play a key part in supporting our operations within the North American business.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
