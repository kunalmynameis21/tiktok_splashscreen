import 'package:flutter/cupertino.dart';

import 'CartApiHelper.dart';
import 'api_model.dart';
import '';



class CartProvider with ChangeNotifier{
CartProvider() {
getAllCart();
}


  List<CartModel> listCart=[];

  getAllCart()async{
    var cart= await CartApiHelper.getAllCartApi();
    if(cart !=null){
      listCart= cart;
      listCart.clear();
      listCart.addAll(cart);
      notifyListeners();

    }
  }
}