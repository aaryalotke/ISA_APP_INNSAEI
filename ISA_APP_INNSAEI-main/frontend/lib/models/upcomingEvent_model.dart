//import 'package:flutter/cupertino.dart';
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
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['EventName'] = EventName;
    data['PosterImage'] = PosterImage;
    data['FormLink'] = FormLink;
    data['Description'] = Description;
    data['DurationDate'] = DurationDate;
    return data;
  }
}
