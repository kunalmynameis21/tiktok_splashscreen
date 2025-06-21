import 'dart:convert';

import 'package:get_api_calling/product_model.dart';
import 'package:http/http.dart'as http;
class ProductApiData{
  getapiProuduct()async{
    var response= await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode== 200){
      var resBody=response.body;
      List<dynamic> json=jsonDecode(resBody);
      var jsonConvertTo=json.map((e) {

      }

      var convertToModel=jsonBody.map((e) => ProductModel.get,).toList();
    }
    return jsonToMoadal;
  }
  re
}