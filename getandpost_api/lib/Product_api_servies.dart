import 'dart:convert';
import 'package:getandpost_api/Product_Model.dart';
import 'package:http/http.dart' as http;


class ProductApiServies {
  static Future<List<ProductModel>?>getProduct()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var resBody=response.body;
      List<dynamic>json=jsonDecode(resBody);
      var fromjson=json.map((e) => ProductModel.fromjson(e)).toList();
      return fromjson;
    }
    return null;
}

// class ProductApiServices {
//   static Future<List<ProductModel>?> getProduct() async {
//     var response =
//     await http.get(Uri.parse("https://fakestoreapi.com/products"));
//
//     if (response.statusCode == 200) {
//       var resBody = response.body;
//       List<dynamic> jsonData = jsonDecode(resBody);
//
//       // Map JSON list to ProductModel list
//       var products =
//       jsonData.map((e) => ProductModel.fromjson(e)).toList();
//
//       return products;
//     }
//     return null;
//   }
}
