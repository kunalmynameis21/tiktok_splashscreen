import 'package:flutter/cupertino.dart';
import 'package:getandpost_api/Product_Model.dart';
import 'package:getandpost_api/Product_api_servies.dart';

class ProductProvider  with  ChangeNotifier {

  List<ProductModel>productList=[];

   getProduct()async{
    var response=await ProductApiServies.getProduct();
   if(response!=null){
     productList.clear();
     productList.addAll(response);
     notifyListeners();

   }
  }

}