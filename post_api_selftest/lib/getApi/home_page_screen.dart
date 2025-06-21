import 'package:flutter/material.dart';
import 'package:post_api_selftest/getApi/CartProvider.dart';
import 'package:provider/provider.dart';

import '../post_cart_api/PostApipage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Cartprovider>(context, listen: false).getCart();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Cartprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: Consumer<Cartprovider>(
        builder: (context, value, child) {
          if (value.dataList.isEmpty) {
            return Text("no data");
          } else {
            return ListView.builder(
              itemCount: provider.dataList.length,
              itemBuilder: (context, index) {
                var datacart = value.dataList[index];
                return ListTile(title: Text("${datacart.userId}"));
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PostApipage()),
          );
        },
      ),
    );
  }
}
