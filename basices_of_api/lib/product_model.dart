class ProductModel{
  int ?id;
  String? title;
  String? price;
  String? discreption;
  String? categeory;
  String? image;
  ProductModel(
      this.id,
      this.image,
      this.price,
      this.discreption,
      this.title,
      this.categeory,


      );
  static  ProductModel jsonToModel(Map<String,dynamic>data){
    return ProductModel(data["id"], data["title"], data["price"], data["discreption"], data["title"], data["categeory"]);
  }

}