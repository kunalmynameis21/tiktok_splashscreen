import 'package:api_get_put_test/put_product%20model.dart';
import 'package:flutter/cupertino.dart';

import 'api_Cart_HbHelper.dart';
import 'api_cart_model.dart';

class ApiCartProvider with ChangeNotifier {

  // var idController = TextEditingController();
  // var userIdController = TextEditingController();
  // var priceController = TextEditingController();

  ApiCartProvider() {
    getCart();
  }

  List<ApiCartModel> cartData = [];

  getCart() async {
    // ✅ Removed BuildContext
    var response = await ApiCartHelper.getCartApi();
    if (response != null) {
      cartData.clear();
      cartData.addAll(response);
      notifyListeners();
    }
  }
}