// class ProductModal {
//
//   int? id;
//   String? title;
//   String? price;
//   String? description;
//   String? category;
//
//   ProductModal(this.id,this.price,this.title,this.category,this.description);
//   static ProductModal get(Map<String,dynamic>data){
//     return ProductModal(data["id"], data["price"].toString(), data["title"], data["category"], data["description"]);
//
//   }
// }
//
class ProductModal{
  String?name;
  String?title;
  String?discreption;
  String?categoes;
  ProductModal(this.title,this.name,this.categoes,this.discreption);
  static ProductModal get(Map<String,dynamic>data){
    return ProductModal(data["title"], data["name"], data["categoes"], data["discreption"]);

  }
}


