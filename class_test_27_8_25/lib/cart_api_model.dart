class  CartApiModel {
  int?id;
  int?userId;
  CartApiModel(this.id,this.userId);
   static CartApiModel jsonToModel (Map<String,dynamic>data){
     return CartApiModel(data["id"], data["userId"]);

  }
}