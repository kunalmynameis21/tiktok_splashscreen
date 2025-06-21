import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_model.dart';

class CartApiHelper {
  static Future<List<CartModel>?> getAllCartApi() async {
    var response = await http.get(Uri.parse("https://fakestoreapi.com/carts"));
    if (response.statusCode == 200) {
      var resBody = response.body;
      List<dynamic>jsonBody = jsonDecode(resBody);
      var jsonConverter = jsonBody.map((e) => CartModel.jsonToModel(e)).toList();
      return jsonConverter;
    }
    return null;
  }
}