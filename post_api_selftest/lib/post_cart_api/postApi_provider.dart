import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:post_api_selftest/getApi/CartModel.dart';
import 'package:post_api_selftest/post_cart_api/post_api_servies.dart';

class PostApiProvider with ChangeNotifier{


  List<Cartmodel>dataList=[];
  TextEditingController userIdController=TextEditingController();
   getPostApi(BuildContext context)async{

     var dataApi={
       "userId":userIdController.text,
     };
    var response=await ApiPostServies.Postapi(dataApi);
    if(response !=null){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("post api done")));
    }

  }

}

