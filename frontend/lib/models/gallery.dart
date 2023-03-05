//format of what goes into galllery pages

import 'package:flutter/foundation.dart';

class gallery {
  int? id;
  String? name;
  String? poster1;
  String? poster2;
  String? poster3;
  String? description;
  String? type;
  String? startDate;
  String? endDate;
  String? gallaryPic1;
  String? gallaryPic2;
  String? gallaryPic3;
  String? gallaryPic4;

  gallery(
      {this.id,
      this.name,
      this.poster1,
      this.poster2,
      this.poster3,
      this.description,
      this.type,
      this.startDate,
      this.endDate,
      this.gallaryPic1,
      this.gallaryPic2,
      this.gallaryPic3,
      this.gallaryPic4
      });

  gallery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    poster1 = json['poster1'];
    poster2 = json['poster2'];
    poster3 = json['poster3'];
    description = json['description'];
    type = json['type'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    gallaryPic1 = json['gallary_pic1_link'];
    gallaryPic2 = json['gallary_pic2_link'];
    gallaryPic3 = json['gallary_pic3_link'];
    gallaryPic4 = json['gallary_pic4_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['poster1'] = this.poster1;
    data['poster2'] = this.poster2;
    data['poster3'] = this.poster3;
    data['description'] = this.description;
    data['type'] = this.type;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['gallary_pic1_link'] = this.gallaryPic1;
    data['gallary_pic2_link'] = this.gallaryPic2;
    data['gallary_pic3_link'] = this.gallaryPic3;
    data['gallary_pic4_link'] = this.gallaryPic4;
    return data;
  }
}