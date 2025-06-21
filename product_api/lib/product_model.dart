class ProductModel{
  String? title;
  String?discreaption;
  String?price;
  String?categroies;
  int? id;
  String?image;
  ProductModel(

      this.discreaption,
      this.id,
      this.image,
      this.categroies,
      this.price,
      this.title,
      );
  static ProductModel jsonToModel(Map<String,dynamic>data){
return ProductModel(data["discreaption"], data["id"], data["image"], data["categroies"], data["price"], data["title"]);
  }

}