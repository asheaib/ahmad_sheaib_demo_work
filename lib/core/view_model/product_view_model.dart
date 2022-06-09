import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api.dart';

class ProductProvider with ChangeNotifier {
  List<Product>productItems=[];

  Future<void>getAllProducts()async {
    final productListJSON = await Api.apiInstance.getProducts();
    productItems = productListJSON!.map((object) => Product.fromJson(object)).toList();
    notifyListeners();
  }


}