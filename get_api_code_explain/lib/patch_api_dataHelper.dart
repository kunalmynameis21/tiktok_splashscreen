import 'dart:convert';

import 'package:http/http.dart'as http;
getPatchApi()async{

  var response=await http.patch(Uri.parse("https://fakestoreapi.com/products"),body: {name});
  if(response.statusCode==200){
    var resBody=response.body;
    var JsonBody=json.decode(resBody);
    return JsonBody;
  }
}