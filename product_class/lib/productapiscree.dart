// import 'dart:convert';
//
// import 'package:http/http.dart'as http;
// import 'package:product_class/product_modal.dart';
//
// // class ProductApiHelper {
// //  static Future<List<ProductModal>?> getData()async {
// //       var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
// //       if(response.statusCode == 200){
// //         var resBody = response.body;
// //         List<dynamic>jsonBody=jsonDecode(resBody);
// //         var convertToModal=jsonBody.map((e) => ProductModal.get(e),).toList();
// //         return convertToModal;
// //       }
// //       return null;
// //   }
// class ProductApiHelper()async {
//   var response= await http.get(Uri.http("https://fakestoreapi.com/products"));
//   if(response.statusCode==200){
//     var resBody=response.body;
//     List<dynamic>jsonBody=jsonDecode(resBody);
//     var convertToModel=jsonBody.map((e) => ProductModal.get(e),).toList();
//
// }
//
//   static Future<ProductModal?>postData(Map<String,dynamic>data)async{
//    var responce= await http.post(Uri.parse("https://fakestoreapi.com/products"),body: data);
//    if(responce.statusCode==201){
//      var resbody=responce.body;
//      dynamic jsonBody= jsonDecode(resbody);
//      var converToModal= ProductModal.get(jsonBody);
//      return converToModal;
//
//    }
//    return null;
//
//   }
// }
