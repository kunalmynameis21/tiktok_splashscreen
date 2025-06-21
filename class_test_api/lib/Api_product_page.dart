import 'package:class_test_api/cart_screen_page.dart';
import 'package:class_test_api/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Api_product_page extends StatefulWidget {
  const Api_product_page({super.key});

  @override
  State<Api_product_page> createState() => _Api_product_pageState();
}

class _Api_product_pageState extends State<Api_product_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api_product_page")),
      body: Consumer<ProductProvider>(builder: (context, value, child) {
          if (value.listProduct.isEmpty) {
             return Center(child: CircularProgressIndicator());
          }
            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: value.listProduct.length,
                itemBuilder: (context, index) {
                  var product = value.listProduct[index];
                  return ListTile(title: Text("${product.title}"));
                },
              ),
            );
          },

      ),floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage(),));
      },),
    );
  }
}
