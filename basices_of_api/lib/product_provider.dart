import 'package:basices_of_api/product_api_helper_dart.dart';
import 'package:basices_of_api/product_model.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> productList = [];

  getProduct() async {
    var products = ProductApiHelper.getAllProductApiData();
    if (products != null) {
      productList.clear();
      productList.addAll(products as Iterable<ProductModel>);
      notifyListeners();
    }
  }
}
