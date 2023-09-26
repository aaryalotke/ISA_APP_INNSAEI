

class Format {
   int? id;
   String? name;
   String? image;
   String? Small_Specs;
   String? Info;
   bool? Is_available;
  
  
 

  Format({
     this.id,
     this.name,
     this.image,
     this.Small_Specs,
     this.Info,
     this.Is_available,
  
    
  });

  Format.fromJson(Map<String, dynamic> json) {
    id = json['id']  ;
    name = json['name']  ;
    image = json['image']  ;
    Small_Specs = json['Small_Specs']  ;
    Info = json['Info']  ;
    Is_available = json['Is_available']  ;
    
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['Small_Specs'] = Small_Specs;
    data['Info'] = Info;
    data['Is_available'] = Is_available;
    
    return data;
  }
}