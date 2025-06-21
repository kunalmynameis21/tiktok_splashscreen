import 'dart:convert';
import 'dart:math';

import 'package:product_api/product_model.dart';
import 'package:http/http.dart'as http;

class ProductApiServies {
static Future<List<ProductModel>?>getAllProductApiData()async{
var response= await http.get(Uri.parse("https://fakestoreapi.com/products"));
if(response.statusCode==200){
  var rebBody=response.body;
 List<dynamic>jsonBody=jsonDecode(rebBody);
var convertToModel=jsonBody.map((e) => ProductModel.jsonToModel(e),).toList();
return convertToModel;



}
return null;
}
}