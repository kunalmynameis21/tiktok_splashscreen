import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_class/product_modal.dart';
import 'package:product_class/productapiscree.dart';


class ProviderClass with ChangeNotifier{
  var title=TextEditingController();
  var price=TextEditingController();
  var description=TextEditingController();
    ProviderClass(){
      getProductData();
    }

  List<ProductModal> dataLIst=[];

    getProductData()async{
      var data=await ProductApiHelper.getData();
      if(data!=null){
        dataLIst.clear();
        dataLIst.addAll(data);
        notifyListeners();
      }
    }

    setData(BuildContext context)async{
      var data={
        "title":title.text,
        "price":price.text,
        "description":description.text,
      };
     var api=await ProductApiHelper.postData(data);
     if(api!= null){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("insert data succesful")));
       getProductData();
     }



    }
}