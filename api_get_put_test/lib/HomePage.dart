import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api_cart_provider.dart';


void main(){
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => ApiCartProvider(),)],
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ApiCartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Posts List")),
      body: Consumer<ApiCartProvider>(builder: (context, value, child) {
        if(value.cartData!=null){
          return Text(" no data");



          return ListView.builder(
              itemCount: value.productList.length,
              itemBuilder: (context, index) {
                var product = value.productList[index];
                return ListTile(
                    title: Text("${product.title}"),

