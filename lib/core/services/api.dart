import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../utils/constants.dart';

class Api {
   static Api apiInstance=Api();


  // fetch products from web
  Future<List<dynamic>?>getProducts()async {
    try {
     final response = await http.get(Uri.parse(apiLink));
     if (response.statusCode == 200){
       final body = jsonDecode(response.body);
       return body;
     }
    } catch(e){
      //
    }
    return null;


  }

}