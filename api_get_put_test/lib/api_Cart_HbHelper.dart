import 'dart:convert';
import 'package:api_get_put_test/put_product%20model.dart';
import 'package:http/http.dart' as http;
import 'api_cart_model.dart';

class ApiCartHelper {
  static Future<List<ApiCartModel>?> getCartApi() async {
    var response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    if (response.statusCode == 200) {
      var resBody=response.body;
      List<dynamic>json=jsonDecode(resBody);
      var jsonToModel=json.map((e) => ApiCartModel.fromJson(e)).toList();
      return jsonToModel;
    }
    return null;
  }


  // static Future<ApiCartModel?>putProApi(Map<String,dynamic>data)async{
  //   var response=await http.put(Uri.parse("https://fakestoreapi.com/products/${"id"}"),body: jsonEncode(data));;
  //   if(response.statusCode==200){
  //     var resBody=response.body;
  //     dynamic json=jsonDecode(resBody);
  //     var jsonToModel=ApiCartModel.fromJson(json);
  //    return jsonToModel;
  //   }
  //   return null;
  // }
}