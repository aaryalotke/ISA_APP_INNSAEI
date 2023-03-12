//import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
//import 'package:url_launcher/url_launcher.dart';

class upcomingEvent {
  int? id;
  String? EventName;
  String? PosterImage;
  String? FormLink;
  String? Description;
  String? DurationDate;

  upcomingEvent({
    this.id,
    this.EventName,
    this.PosterImage,
    this.FormLink,
    this.Description,
    this.DurationDate,
  });

  upcomingEvent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    EventName = json['EventName'];
    PosterImage = json['PosterImage'];
    FormLink = json['FormLink'];
    Description = json['Description'];
    DurationDate = json['DurationDate'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['EventName'] = this.EventName;
    data['PosterImage'] = this.PosterImage;
    data['FormLink'] = this.FormLink;
    data['Description'] = this.Description;
    data['DurationDate'] = this.DurationDate;
    return data;
  }
}
