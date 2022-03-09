import 'package:felagi/Auth/Login.dart';
import 'package:felagi/Carag_Screens/Developer_Content.dart';
import 'package:felagi/Carag_Screens/catagDev-page.dart';
import 'package:felagi/Screens/Sign.dart';
import 'package:felagi/Carag_Screens/catag-page.dart';
import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  const Catagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final List<int> numbers = [1, 2, 6, 8];
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.developer_mode,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CatagDev())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.construction,
                        color: Colors.orange,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Catag())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.design_services,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Developer",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Constraction",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Art & Design",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
              ),

              ////////////////////////////////////////////////////////////
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.model_training,
                        color: Colors.amber,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.agriculture,
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.social_distance,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Teaching",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Agriculture",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Marketing",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                ////////////////////////////////////////////////////////////////
                ///
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.medication_outlined,
                        color: Colors.indigo,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.money_off_csred,
                        color: Colors.blueGrey,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      height: 110,
                      width: 110,
                      child: Icon(
                        Icons.engineering,
                        color: Colors.brown,
                        size: 50,
                      ),
                    ),
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sign())),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Medical-Jobs",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Accounting",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Engineering",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
