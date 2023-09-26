//import 'package:url_launcher/url_launcher.dart';

class Profile_mem {
  User? user;
  String? role;
  String? github;
  String? linkedin;
  String? profile_image;
  String? phone_number;
  bool? isMember;

  Profile_mem({
    this.user,
    this.role,
    this.github,
    this.linkedin,
    this.profile_image,
    this.phone_number,
    this.isMember,
  });

  Profile_mem.fromJson(Map<String, dynamic> json) {
    //  user = <User>[User.fromJson(json['user'])];
    user = User.fromJson(json['user']);
    // (json[user] as List).forEach((e) {
    //   print('hi');
    //   user!.add(User.fromJson(e));
    // });
    role = json['role'] ?? "Student";
    github = json['github'] ?? "Invalid Github ID";
    linkedin = json['linkedin'] ?? "Invalid LinkedIn ID";
    profile_image = json['profile_image'] ?? "assets/imagse/user.png";
    phone_number = json['phone_number'] ?? "No phone number";
    isMember = json['isMember'] ?? false;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    // data['id'] = this.id;
    // data['username'] = this.username;
    // data['email'] = this.email;
    data['user'] = user;
    data['role'] = role;
    data['github'] = github;
    data['linkedin'] = linkedin;
    data['profile_image'] = profile_image;
    data['phone_number'] = phone_number;
    data['isMember'] = isMember;

    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  User({
    this.id,
    this.username,
    this.email,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = (json['id'] ?? 0) as int;
    username = json['username'] ?? "No username";
    email = json['email'] ?? "No email";
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}
