import 'package:flutter/cupertino.dart';
import 'package:product_api/product_api_servies.dart';
import 'package:product_api/product_model.dart';

class Productprovider with ChangeNotifier {
  List<ProductModel> ProductList = [];

  getProduct() async {
    var products = await ProductApiServies.getAllProductApiData();
    if (products != null) {
      products.clear();
      ProductList.clear();
      ProductList.addAll(products);
      notifyListeners();
    }
  }
}
