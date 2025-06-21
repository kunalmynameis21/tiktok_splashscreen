import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api_calling/product_model.dart';

class ProductApiHelper {
  static Future<List<ProductModel>?> getAllProductApiData() async {
    var response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    if (response.statusCode == 200) {
      var resBody = response.body;
      List<dynamic> jsonBody = jsonDecode(resBody);
      var convertToModel = jsonBody
          .map((e) => ProductModel.jsonToModel(e))
          .toList();

      return convertToModel;
    }
    return null;
  }

  static Future<ProductModel?> PostProductApiData(
    Map<String, dynamic> data
  ) async {
    var response = await http.post(
      Uri.parse("https://fakestoreapi.com/products"),
      body: data
    );
    if (response.statusCode == 201) {
      var resBody = response.body;
      dynamic jsonBody = jsonDecode(resBody);
      var convertToModel = ProductModel.jsonToModel(jsonBody);
      return convertToModel;
    }
    return null;
  }

  static Future<ProductModel?> UpdateProductApiData(Map<String,dynamic>data) async {
    var response = await http.put(
      Uri.parse("https://fakestoreapi.com/products/products/${data["id"]}"),
      body: data,
    );
    if (response.statusCode == 200) {
      var resBody = response.body;
      dynamic jsonBody = jsonDecode(resBody);
      var convertToModel = ProductModel.jsonToModel(jsonBody);
      return convertToModel;
    }
    return null;
  }

  static Future<String?> deliteProductApi(int id) async {
    var response = await http.delete(
      Uri.parse("https://fakestoreapi.com/products/$id"),
    );
    if (response.statusCode == 200) {
      return "sucessful";
    }
    return null;
  }
}
