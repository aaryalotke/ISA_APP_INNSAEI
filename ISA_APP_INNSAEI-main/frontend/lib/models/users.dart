class Users {
  final String eid;
  final String eemail;
  final String ename;


  Users({required this.eid, required this.eemail, required this.ename});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      eid: json['eid'],
      ename: json['ename'],
      eemail: json['eemail'],
    );
  }

  Map<String, dynamic> toJson() => {
    'eid' : eid,
    'ename': ename,
    'eemail': eemail,
  };
}
