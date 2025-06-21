class Cartmodel {
  int?id;
  int?userId;
  Cartmodel(this.id,this.userId);
   static Cartmodel fromjson(Map<String,dynamic>data){
    return Cartmodel(data["id"], data["userId"]);

  }
}