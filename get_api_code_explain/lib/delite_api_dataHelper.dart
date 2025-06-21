import 'package:http/http.dart'as http;
class DeliteApiDatahelper {
  getdeliteApi()async{
    var response=await http.delete(Uri.parse("https://fakestoreapi.com/products")body: ({id}));
    
  }
}