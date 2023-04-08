

import 'package:flutter/foundation.dart';
//import 'package:url_launcher/url_launcher.dart';

class Profile_mem {
   User? user;
   String? role;
   String? github;
   String? linkedin;
   String? profile_image;
   int? phone_number;
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
    role = json['role'];
    github = json['github'] ?? "base_profile";
    linkedin = json['linkedin'] ?? "base_profile";
    profile_image = json['profile_image']?? "base_profile";
    phone_number = json['phone_number'];
    isMember = json['isMember'];
   
    
   
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    // data['id'] = this.id;
    // data['username'] = this.username;
    // data['email'] = this.email;
     data['user'] = this.user;
    data['role'] = this.role;
    data['github'] = this.github;
    data['linkedin'] = this.linkedin;
    data['profile_image'] = this.profile_image;
    data['phone_number'] = this.phone_number;
    data['isMember'] = this.isMember;
   
    
   
    return data;
  }
}


class User{
   int? id;
   String? username;
   String? email;
  User({
     this.id,
     this.username,
     this.email,  
  });

    User.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int ;
    username = json['username'];
    email = json['email']; 
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}









