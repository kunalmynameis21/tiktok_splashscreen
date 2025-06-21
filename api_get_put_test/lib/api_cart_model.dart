class ApiCartModel {
int?id;
int?price;
String?description;

  ApiCartModel({
    this.price,
    this.id,
    this.description,
  });

    static ApiCartModel fromJson (Map<String, dynamic> data) {
    return ApiCartModel(
      price: data["price"],
      description: data["description"],
      id: data["id"],
    );
  }
}


// }
// class PutCartModel {
//   int?title;
//   int?id;
//   int?price;
//   PutCartModel(this.id,this.price,this.title);
//
//   static PutCartModel jsonintomodel(Map<String,dynamic>data){
//     return PutCartModel (data["id"], data["price"], data["title"]);
//   }
//
// }
