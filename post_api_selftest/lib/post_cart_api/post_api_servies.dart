import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:post_api_selftest/getApi/CartModel.dart';
 class ApiPostServies{
   static Future<Cartmodel?>Postapi(Map<String,dynamic>data)async{
     var response=await http.post(Uri.parse("https://fakestoreapi.com/carts"),body:data);
     if(response.statusCode==201 || response.statusCode == 200){
       var resBody=response.body;
       dynamic json=jsonDecode(resBody);
       var Fromjson=Cartmodel.fromjson(json);
       return Fromjson;
     }
     return null;
   }
 }