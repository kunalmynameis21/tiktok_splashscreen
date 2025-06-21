import 'package:basices_of_api/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(

      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          if(value.productList.isEmpty){

          return Text("No data found");
        }else{
            return ListView.builder(itemCount:value.productList.length,itemBuilder: (context, index) {
              var product=value.productList[index];
              return ListTile(title: Text("${product?.title}"),
              subtitle: Text("${product?.discreption}"),
              );

            },);
          }

      }
      ),
    );
  }
}
