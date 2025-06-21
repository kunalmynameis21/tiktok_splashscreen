import 'package:class_test_api/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CartProvider.dart';
import 'nextpage.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  void initState() {
    super.initState();
    var provider = Provider.of<CartProvider>(context,listen: false);
    provider.getAllCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cartpage")),
      body: Consumer<CartProvider>(builder: (context, value, child) {
        if (value.listCart.isEmpty) {
          return Center(child: Text("No Cart Found Data"));
        }
        else{
          return ListView.builder(
            itemCount: value.listCart.length,
            itemBuilder: (context, index) {
              var product = value.listCart[index];
              return ListTile(title: Text("${product.id}"),

                subtitle: Text("${product.userId}"),
              );
            },
          );
        }
      },

      ),floatingActionButton: FloatingActionButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Nextpage(),));
    },),
    );
  }
}
