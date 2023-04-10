import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class Format {
  int? id;
  String? certificate_year;
  String? workshop_name;
  String? certificates;
  String? link;
  int? user;
  int? profile;

  Format({
    this.id,
    this.certificate_year,
    this.workshop_name,
    this.certificates,
    this.link,
    this.user,
    this.profile,
  });

  Format.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    certificate_year = json['certificate_year'];
    workshop_name = json['workshop_name'];
    certificates = json['certificates'];
    link = json['link'];
    user = json['user'];
    profile = json['profile'];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['certificate_year'] = this.certificate_year;
    data['workshop_name'] = this.workshop_name;
    data['certificates'] = this.certificates;
    data['link'] = this.link;
    data['user'] = this.user;
    data['profile'] = this.profile;

    return data;
  }
}
