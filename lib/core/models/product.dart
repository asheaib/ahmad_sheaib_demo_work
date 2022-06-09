import 'package:ahmad_sheaib_demo/core/models/rating.dart';

class Product {
  int ?id;
  String ?title;
  double ?price;
  String ?description;
  String ?category;
  String ?image;
  Rating ?rating;

  Product ({required this.id , required this.title , required this.price , required this.description,
    required this.category , required this.image ,required this.rating}
  );

  Product.fromJson(Map<String,dynamic>json) {
    id = json['id'];
    title = json['title'];
    price = json['price'].toDouble();
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = Rating.fromJson(json['rating']);
  }




}