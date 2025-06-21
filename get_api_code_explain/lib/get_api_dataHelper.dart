import 'dart:convert';

import 'package:http/http.dart'as http;
class GetApiDatahelper {
   Future List<String,dynamic>>?getapiData()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var resBody=response.body;
      // var jsonBody=json.decode(resBody);
      List<dynamic>
    }

  }
}