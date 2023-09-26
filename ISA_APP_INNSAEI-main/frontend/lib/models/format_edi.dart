

class Format {
   int ? id;
   String? editorial_name;
   String? editorial_link;
   
   

  Format({
     this.id,
     this.editorial_name,
     this.editorial_link,
    
  });

    Format.fromJson(Map<String, dynamic> json) {
    id = json['id']  ;
    editorial_name = json['editorial_name']  ;
    editorial_link = json['editorial_link']  ;
    
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['editorial_name'] = editorial_name;
    data['editorial_link'] = editorial_link;
    
    return data;
  }
}





 


