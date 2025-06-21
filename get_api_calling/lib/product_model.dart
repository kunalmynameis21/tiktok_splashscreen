import 'package:flutter/cupertino.dart';

class ProductModel {
  String?name;
  String?title;
  String?categroes;
  String?discreption;
  String?image;

  ProductModel(
      this.discreption,this.name,this.title,this.image,this.categroes
      );
 //
 ProductModel get(Map<String,dynamic>data){
   return ProductModel(data["discreption"], data["name"], data["title"], data["image"], data["categroes"]);
 }
}