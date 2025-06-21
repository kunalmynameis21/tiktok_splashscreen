import 'package:all_api_method/getapi/CartModel.dart';
import 'package:all_api_method/getapi/cartApiservies.dart';
import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier {
  List<Cartmodel> cartData = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> getCart() async {
    isLoading = true;
    errorMessage = '';
    notifyListeners();

    try {
      var response = await CartApiService.getCartApi();

      if (response != null && response.isNotEmpty) {
        cartData = List<Cartmodel>.from(response);
      } else {
        errorMessage = 'No cart data available';
      }
    } catch (e) {
      errorMessage = 'Error fetching cart data: $e';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}