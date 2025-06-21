import 'dart:convert';

import 'package:http/http.dart'as http;
class PutApiDatahelper {
  getputApi()async{
    var respose=await http.put(Uri.parse("https://fakestoreapi.com/products"),body: {id});
    if(respose.statusCode==200){
      var resbBody=respose.body;
      var jsonBody=json.decode(resbBody);
      return jsonBody;
    }
  }
}