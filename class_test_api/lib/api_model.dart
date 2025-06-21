class ProductModel {
  int? id;
  String? title;
  String? price;
  String? description;
  String? category;
  String? image;

  ProductModel(
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  );

  static ProductModel jsonToModel(Map<String, dynamic> data) {
    return ProductModel(
      data["id"],
      data["title"],
      data["price"].toString(),
      data["description"],
      data["category"],
      data["image"],
    );
  }
}

class CartModel {
  int? id;
  int? userId;
  dynamic products;

  CartModel(this.id, this.products, this.userId);

  static CartModel jsonToModel(Map<String, dynamic> data) {
    return CartModel(
      data['id'],
      data['userId'],
      data['products'],
    );
  }
}
