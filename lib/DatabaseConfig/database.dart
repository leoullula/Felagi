import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  late FirebaseFirestore firestore;

  initialise() {
    firestore = FirebaseFirestore.instance;
  }

  Future<List> read() async {
    List docs = [];
    QuerySnapshot querySnapshot;

    try {
      querySnapshot = await firestore.collection("Jobfelagi").get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "company": doc['comany'],
            "location": doc['location'],
            "title": doc['title']
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }

  /////////////////////////////////////
  Future<List> readDev() async {
    List docs = [];
    QuerySnapshot querySnapshot;

    try {
      querySnapshot = await firestore.collection('Developer').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "Adress": doc['Adress'],
            "Type": doc['Type'],
            "Salary": doc['Salary'],
            "Title": doc['JobTitle'],
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return docs;
  }
}
