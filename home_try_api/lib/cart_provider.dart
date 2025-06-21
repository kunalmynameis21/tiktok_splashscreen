import 'package:flutter/material.dart';
import 'package:home_try_api/api_cart_dbhelper.dart';
import 'package:home_try_api/cart_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> cartList = [];

  getCartApi() async {
    var cartApi = await ApiCartDbhelper.getCartApi();
    if (cartApi != null) {
      cartList.clear();
      cartList.addAll(cartApi);
      notifyListeners();  // ✅ fixed
    }
  }
}


// import 'package:flutter/material.dart';
// import 'package:home_try_api/api_cart_dbhelper.dart';
// import 'package:home_try_api/cart_model.dart';
//
// class CartProvider with ChangeNotifier {
//   List<CartModel> cartList = [];
//
//   getCartApi() async {
//     var cartApi = await ApiCartDbhelper.getCartApi();
//     if (cartApi != null) {
//       cartList.clear();
//       cartList.addAll(cartApi);
//       notifyListeners();  // ✅ fixed
//     }
//   }
// }
