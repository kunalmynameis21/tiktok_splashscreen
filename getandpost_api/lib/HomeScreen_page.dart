import 'package:flutter/material.dart';
import 'package:getandpost_api/product_provider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ProductProvider>(context, listen: false).getProduct();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen"), centerTitle: true),
      backgroundColor: Colors.yellow,
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          if (value.productList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Expanded(
              child: ListView.builder(
                itemCount: value.productList.length,
                itemBuilder: (context, index) {
                  var product = value.productList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.add),
                    ),
                    subtitle: Text("\$${product.id}"),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
