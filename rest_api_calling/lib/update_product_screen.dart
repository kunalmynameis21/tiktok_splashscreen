import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_calling/product_provider.dart';
class UpdateProductScreen extends StatefulWidget {

  final int id;

  const UpdateProductScreen({super.key,required this.id});


  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<ProductProvider>(context,listen: false);

    return Scaffold(appBar: AppBar(title: Text("UpdateProductScreen"),),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30,),
          TextField(controller: provider.categoriesController,decoration: InputDecoration(hintText: "Entre you Titledetail",labelText: "Titledetail",border: OutlineInputBorder(borderSide: BorderSide())),),
          SizedBox(height: 15,),
          TextField(controller: provider.imageController,decoration: InputDecoration(hintText: "Entre you imagedetail",labelText: "imagedetail",border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),),
          SizedBox(height: 15,),
          TextField(controller: provider.priceController,decoration: InputDecoration(hintText: "Entre you price",labelText: "price",border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),),
          SizedBox(height: 15,),
          TextField(controller: provider.titleController,decoration: InputDecoration(hintText: "Entre you Titledetail",labelText: "Titledetail",border: OutlineInputBorder()),),
          SizedBox(height: 15,),
          TextField(controller: provider.discreptionController,decoration: InputDecoration(hintText: "Entre you discreptiondetail",labelText: "discreptiondetail",border: OutlineInputBorder()),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            provider.updateProduct(context);
          }, child: Text("Update now",style: TextStyle(color: Colors.blue),))
        ],),
      ),

    );
  }
}
