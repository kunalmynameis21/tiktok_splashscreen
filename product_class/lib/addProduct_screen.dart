import 'package:flutter/material.dart';
import 'package:product_class/provider_class.dart';
import 'package:provider/provider.dart';

import '';
class AddproductScreen extends StatefulWidget {
  const AddproductScreen({super.key});

  @override
  State<AddproductScreen> createState() => _AddproductScreenState();
}

class _AddproductScreenState extends State<AddproductScreen> {
  @override
  Widget build(BuildContext context) {

    var provider=Provider.of<ProviderClass>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: provider.title,
            decoration: InputDecoration(labelText: "title"),
          ),
          TextField(
            controller: provider.price,
            decoration: InputDecoration(labelText: "price"),
          ),

          TextField(
            controller: provider.description,
            decoration: InputDecoration(labelText: "description"),
          ),
          ElevatedButton(onPressed: () {
            provider.setData(context);

          }, child: Text("add data"))

        ],
      ),
    );
  }
}
