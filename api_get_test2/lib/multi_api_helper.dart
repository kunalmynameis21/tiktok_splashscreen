import 'dart:convert';

import 'package:http/http.dart'as http;
class MultiApiHelper {
   static Future<Map<String,dynamic>?>getMultiApi()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products/1"));
    if(response.statusCode==200){
      var resBody=response.body;
      dynamic json=jsonDecode(resBody);
      return json;
    }
    return null;
  }
}