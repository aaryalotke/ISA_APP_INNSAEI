

class Format {
   int ? id;
   String? name;
   String? image;
   String? council;
   String? post;
   int? order_number;
   String? insta_id;
   String? linked_in;
   String? email;
   String? phoneNumber;

  Format({
     this.id,
     this.name,
     this.image,
     this.council,
     this.post,
     this.order_number,
     this.insta_id,
     this.linked_in,
     this.email,
     this.phoneNumber,
  });

    Format.fromJson(Map<String, dynamic> json) {
    id = json['id']  ;
    name = json['name']  ;
    image = json['image']  ;
    council = json['council']  ;
    post = json['post']  ;
    order_number = json['order_number']  ;
    insta_id = json['insta_id']  ;
    linked_in = json['linked_in']  ;
    email = json['email']  ;
    phoneNumber = json['phoneNumber'] ; 
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
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


  //   Format.fromJson(Map<String, dynamic> json) {
  //   id = json['id'] as int ;
  //   name = json['name'] as String ;
  //   image = json['image'] as String ;
  //   council = json['council'] as String ;
  //   post = json['post'] as String ;
  //   order_number = json['order_number'] as int ;
  //   insta_id = json['insta_id'] as String ;
  //   linked_in = json['linked_in'] as String ;
  //   email = json['email'] as String ;
  //   phoneNumber = json['phoneNumber'] as String;
   
  // }

 


