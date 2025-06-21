import 'dart:convert';

import 'package:class_test_27_8_25/cart_api_model.dart';
import 'package:http/http.dart'as http;
class CartDbHelper {
    static Future<List<CartApiModel>?>getCart()async{
      var response=await http.get(Uri.parse("https://fakestoreapi.com/carts"));
      if(response.statusCode==200){
        var resBody=response.body;
        List<dynamic>json=jsonDecode(resBody);
        var convertToModel=json.map((e) => CartApiModel.jsonToModel(e),).toList();
        return convertToModel;

      }
      return null;

   }
}