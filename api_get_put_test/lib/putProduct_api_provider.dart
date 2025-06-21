// import 'package:api_get_put_test/put_product%20model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'api_Cart_HbHelper.dart';
// import 'api_cart_model.dart';
//
// class PutproductApiProvider with ChangeNotifier {
//   // PutproductApiProvider(){
//   //   updateUser();
//   //
//   // }
//
//   var idController=TextEditingController();
//   var userIdController=TextEditingController();
//   var priceController=TextEditingController();
//   List<Productmodel> cartData = [];
//
//
//
//    updateUser(BuildContext context ,int id )async{
//    var data={
//      "id":id,
//     "user":userIdController.text,
//     " price":priceController.text,
//
//
//    };
//    var responseApi=await ApiCartHelper.putProApi(data);
//    if(responseApi!=null){
//      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("no data found")));
//
//     }
//
//
//
//   }
// }