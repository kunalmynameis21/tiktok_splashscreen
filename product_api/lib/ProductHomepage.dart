import 'package:flutter/material.dart';
import 'package:product_api/product_provider.dart';
import 'package:provider/provider.dart';

class ProductHomepage extends StatefulWidget {
  const ProductHomepage({super.key});

  @override
  State<ProductHomepage> createState() => _ProductHomepageState();
}

class _ProductHomepageState extends State<ProductHomepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var provider = Provider.of<Productprovider>(context, listen: false);
    provider.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProductHomepage")),
      body: Consumer<Productprovider>(
        builder: (context, value, child) {
          if (value.ProductList.isEmpty) {
            return Text("no data found");
          } else {
            return ListView.builder(
              itemCount: value.ProductList.length,
              itemBuilder: (context, index) {
                var product = value.ProductList[index];
                return ListTile(
                  title: Text("${product?.title}"),
                  subtitle: Text("${product?.discreaption}"),
                );
              },
            );
          }
          ;
        },
      ),
    );
  }
}
