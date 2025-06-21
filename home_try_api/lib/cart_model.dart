class CartModel {

  int?id;
  int?userId;
  CartModel(this.id,this.userId);
  static CartModel  jsonToModel (Map<String,dynamic>data){
    return CartModel(data["id"], data["userId"]);


  }

}