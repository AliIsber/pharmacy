// ignore_for_file: non_constant_identifier_names

class MedModel {
  String? image;
  String? name;

  String? price;
 

  MedModel({
    required this.image,
    required this.name,
    required this.price,
   
  });

  MedModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];

    // selectedStartingDate = json['selectedStartingDate'].toDate();

 
  }

  Map<String, dynamic> tomap() {
    return {
      'image': image,
      'name': name,
      'price': price,
  
    };
  }
}
