import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_calling/product_api_helper.dart';
import 'package:rest_api_calling/product_model.dart';

class ProductProvider with ChangeNotifier {
  var titleController = TextEditingController();
  var categoriesController = TextEditingController();
  var priceController = TextEditingController();
  var imageController = TextEditingController();
  var discreptionController = TextEditingController();
  List<ProductModel> productList = [];

  getProduct() async {
    var products = await ProductApiHelper.getAllProductApiData();
    if (products != null) {
      productList.clear();
      productList.addAll(products);
      notifyListeners();
    }
  }

  addProduct(BuildContext context) async {
    var data = {
      "title": titleController.text,
      "price": priceController.text,
      "discreption": discreptionController.text,
      "categories": categoriesController.text,
      "image": imageController.text,
    };
    var response = await ProductApiHelper.PostProductApiData(data);
    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data add sucessfully")),);
      getProduct();
      Navigator.pop(context);
    }
  }
  updateProduct(BuildContext context)async{
    
    var data = {
      "title": titleController.text,
      "price": priceController.text,
      "description": discreptionController.text,
      "categories": categoriesController.text,
      "image": imageController.text,
    };
    var response = await ProductApiHelper.UpdateProductApiData(data);
    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data  updateed successfully")),);
      getProduct();
      Navigator.pop(context);
    }
  }
  deliteProduct(BuildContext context ,int id)async{
    var response=await ProductApiHelper.deliteProductApi(id);
    if(response != null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(" delited sucessful")));
      getProduct();
    }
  }
}