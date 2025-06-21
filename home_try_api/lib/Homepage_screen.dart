import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:home_try_api/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<CartProvider>(context, listen: false).getCartApi());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart Data")),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) {
          if (provider.cartList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: provider.cartList.length,
            itemBuilder: (context, index) {
              var cart = provider.cartList[index];
              return ListTile(
                leading: CircleAvatar(child: Text(cart.id.toString())),
                title: Text("User ID: ${cart.userId}"),
              );
            },
          );
        },
      ),
    );
  }
}
