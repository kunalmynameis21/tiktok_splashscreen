import 'package:all_api_method/getapi/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CartProvider>(context ,listen: false).getCart();
  }
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("CartScreen")),
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          if (value.cartData.isEmpty) {
            return Center(child: Text("please wait"));
          } else {
            return ListView.builder(
              itemCount: provider.cartData.length,
              itemBuilder: (context, index) {
                var CartList = value.cartData[index];
                ListTile(title: Center(child: Text("${CartList.userId}",style: TextStyle(color: Colors.yellow),)));

              },
            );
          }
        },
      ),
    );
  }
}
