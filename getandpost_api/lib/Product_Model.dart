class ProductModel {
  int?id;
  int?userId;
  ProductModel(this.id,this.userId);
   static ProductModel fromjson(Map<String,dynamic>data){
    return ProductModel(data["id"], data["userId"]);
  }
}