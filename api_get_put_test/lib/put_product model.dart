class Productmodel {
  int?id;
  int?title;
  int?price;
  Productmodel(this.id,this.title,this.price);
  static Productmodel jsonToModel (Map<String,dynamic>data){
    return Productmodel(data["id"], data["title"], data["price"]);

  }


}