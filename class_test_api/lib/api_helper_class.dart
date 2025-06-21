import 'dart:convert';

import 'package:class_test_api/api_model.dart';
import 'package:http/http.dart' as http;

class ApiHelperClass {
  static Future<List<ProductModel>?> getAllApi() async {
    var response = await http.get(
        Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var resBody = response.body;
      List<dynamic>jsonBody = jsonDecode(resBody);
      var jsonConvertTo = jsonBody
          .map((e) => ProductModel.jsonToModel(e))
          .toList();
      return jsonConvertTo;
    }
    return null;
  }


}
