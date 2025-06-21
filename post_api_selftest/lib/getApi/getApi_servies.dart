import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:post_api_selftest/getApi/CartModel.dart';

class Apiservice{
  static Future<List<Cartmodel>?>getApi()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/carts"));
    if(response.statusCode==200){
      var resbody=response.body;
      List<dynamic>jsonBody=jsonDecode(resbody);
      var fromjson=jsonBody.map((e) => Cartmodel.fromjson(e),).toList();
      return fromjson;
    }
    return null;
  }
}