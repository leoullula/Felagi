class AdminModel {
  String? uid;
  String? location;
  String? title;
  String? salary;
  String? type;
  // ignore: non_constant_identifier_names
  String? Requirment;
  // ignore: non_constant_identifier_names
  String? Responsibility;

  // ignore: non_constant_identifier_names
  AdminModel(
      {this.uid,
      this.location,
      this.title,
      this.salary,
      // ignore: non_constant_identifier_names
      this.Requirment,
      // ignore: non_constant_identifier_names
      this.Responsibility,
      this.type});

  // receiving data from server
  factory AdminModel.fromMap(map) {
    return AdminModel(
      uid: map['uid'],
      location: map['location'],
      title: map['title'],
      salary: map['salary'],
      Requirment: map['Requirment'],
      Responsibility: map['Responsibility'],
      type: map['type'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': location,
      'title': title,
      'salary': salary,
      'Requirment': Requirment,
      'Responsibility': Responsibility,
      'type': type
    };
  }
}
