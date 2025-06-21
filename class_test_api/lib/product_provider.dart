import 'package:class_test_api/api_helper_class.dart';
import 'package:class_test_api/api_model.dart';
import 'package:flutter/cupertino.dart';

import 'CartApiHelper.dart';
import 'api_model.dart';

class ProductProvider with ChangeNotifier {

  ProductProvider() {
    getApiProduct();
  }

  List<ProductModel> listProduct = [];

  getApiProduct() async {
    var product = await ApiHelperClass.getAllApi();
    if (product != null) {
      listProduct.clear();
      listProduct.addAll(product);
      notifyListeners();
    }
  }
}

