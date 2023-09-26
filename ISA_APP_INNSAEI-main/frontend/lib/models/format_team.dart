//import 'package:flutter/cupertino.dart';
//import 'package:url_launcher/url_launcher.dart';

class Council {
   int ? id;
   String? name;
   String? photo;
   String? council;
   String? post;
   int? order_number;
   String? insta_id;
   String? linked_in;
   String? email;
   String? phoneNumber;

  Council({
     this.id,
     this.name,
     this.photo,
     this.council,
     this.post,
     this.order_number,
     this.insta_id,
     this.linked_in,
     this.email,
     this.phoneNumber,
  });

    Council.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    council = json['council'];
    post = json['post'];
    order_number = json['order_number'];
    insta_id = json['insta_id'];
    linked_in = json['linked_in'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
   
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['council'] = council;
    data['post'] = post;
    data['order_number'] = order_number;
    data['insta_id'] = insta_id;
    data['linked_in'] = linked_in;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
   
    return data;
  }
}





//ID Name Post Photo and unke links