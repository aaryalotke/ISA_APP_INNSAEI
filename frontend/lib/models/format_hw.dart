import 'package:flutter/foundation.dart';


class Format {
   int? id;
   String? name;
   String? image;
   String? Small_Specs;
   String? Info;
  
  
 

  Format({
     this.id,
     this.name,
     this.image,
     this.Small_Specs,
     this.Info,
  
    
  });

  Format.fromJson(Map<String, dynamic> json) {
    id = json['id']  ;
    name = json['name']  ;
    image = json['image']  ;
    Small_Specs = json['Small_Specs']  ;
    Info = json['Info']  ;
    
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['Small_Specs'] = this.Small_Specs;
    data['Info'] = this.Info;
    
    return data;
  }
}