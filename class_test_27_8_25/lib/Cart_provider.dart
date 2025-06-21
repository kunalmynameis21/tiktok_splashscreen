import 'package:class_test_27_8_25/cart_api_model.dart';
import 'package:class_test_27_8_25/cart_db_helper.dart';
import 'package:flutter/widgets.dart';

// class CartProvider  with ChangeNotifier{
//   List<CartApiModel> productList=[];
//
//   getCart()async{
//     var products= await CartDbHelper.getCart();
//     if(products!=null){
//       products.clear();
//       products.addAll(products);
//       notifyListeners();
//     }
//
//   }
//
// }
class CartProvider with ChangeNotifier {
  List<CartApiModel> productList = [];

  getCartApi() async {
    var cartApi = await CartDbHelper.getCart();
    if (cartApi != null) {
      productList.clear();
      productList.addAll(cartApi);
      notifyListeners();  // ✅ fixed
    }
  }
}
