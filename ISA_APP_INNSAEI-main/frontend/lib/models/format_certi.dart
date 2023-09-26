
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
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['certificate_year'] = certificate_year;
    data['workshop_name'] = workshop_name;
    data['certificates'] = certificates;
    data['link'] = link;
    data['user'] = user;
    data['profile'] = profile;

    return data;
  }
}
