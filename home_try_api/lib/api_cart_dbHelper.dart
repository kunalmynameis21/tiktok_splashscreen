import 'dart:convert';

import 'package:home_try_api/cart_model.dart';
import 'package:http/http.dart' as http;
class ApiCartDbhelper {
   static Future<List<CartModel>?>getCartApi()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/carts"));
    if(response.statusCode==200){
      var resBody=response.body;
      List<dynamic>jsonBody=json.decode(resBody);
      var convertToModel=jsonBody.map((e) => CartModel.jsonToModel(e),).toList();
      return convertToModel;
    }
    return null;
  }
}