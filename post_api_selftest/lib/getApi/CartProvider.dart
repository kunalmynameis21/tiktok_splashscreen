import 'package:flutter/material.dart';
import 'package:post_api_selftest/getApi/CartModel.dart';
import 'package:post_api_selftest/getApi/getApi_servies.dart';

class Cartprovider  with ChangeNotifier{
  List<Cartmodel>dataList=[];
  getCart()async{
    var response=await Apiservice.getApi();
    if(response!=null){
      dataList.clear();
      dataList.addAll(response);
      notifyListeners();
    }
  }

}