import 'package:class_test_27_8_25/Cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartapiscreenPage extends StatefulWidget {
  const CartapiscreenPage({super.key});

  @override
  State<CartapiscreenPage> createState() => _CartapiscreenPageState();
}

class _CartapiscreenPageState extends State<CartapiscreenPage> {
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<CartProvider>(context, listen: false).getCartApi());
  }
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(

      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          if (value.productList.isEmpty){
          return Center(child: Center(child: Text("no data found")));
        }else{
            return ListView.builder(itemCount: value.productList.length,
              itemBuilder: (BuildContext context, int index) {
              var product=value.productList[index];
              return ListTile(
                title: Text("User ID: ${product.userId}"),
                subtitle: Text(" ID: ${product.id}"),
              );
              },);
          }
        }
      ),
    );
  }
}
