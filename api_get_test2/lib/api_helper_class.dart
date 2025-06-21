import 'dart:convert';

import 'package:http/http.dart'as http;
class ApiHelperClass {
  static Future<List<dynamic>?> getApiData()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var resBody=response.body;
      List<dynamic>data=jsonDecode(resBody);
      return data;
    }
    return null;
  }
}