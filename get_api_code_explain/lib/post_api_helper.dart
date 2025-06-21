import 'dart:convert';

import 'package:http/http.dart'as http;
class PostApiHelper {
  getPostApi()async{
    var response=await http.post(Uri.parse("https://fakestoreapi.com/products"),body: {int id});
    if(response.statusCode==201){
      var resBody=response.body;
      var jsonBody=json.decode(resBody);
      return jsonBody;

    }
  }
}