class Cartmodel {
  int?id;
  int?userId;
  Cartmodel(this.userId,this.id);
  static Cartmodel fromjson(Map<String,dynamic>data){
    return Cartmodel(data["userId"], data["id"]);
  }
}