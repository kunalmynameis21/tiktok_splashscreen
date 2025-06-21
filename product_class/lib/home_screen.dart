import 'package:flutter/material.dart';
import 'package:product_class/addProduct_screen.dart';
import 'package:product_class/provider_class.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<ProviderClass>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("get Data"),
      ),
      body: Column(
        children: [
          Consumer<ProviderClass>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                itemCount: value.dataLIst.length,
                itemBuilder: (context, index) {
                  var data=value.dataLIst[index];
                return ListTile(
                  title: Text("${data.title}"),
                );

              },),
            );
          },),
          FloatingActionButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddproductScreen(),));
          },)
        ],
      ),
    );
  }
}
