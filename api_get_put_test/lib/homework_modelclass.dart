// class HomeworkModelclass {
//   var edugaon = {
//     "status": 200,
//     "message": "Success",
//     "data": {
//       "faculties": [{"name": "Ajay", "age": 23}, {"name": "Suraj", "age": 39},
//         {"name": "Sudish", "age": 24}],
//     }
//
//
// };
//   var data=edugaon["data"] as Map<String,dynamic>;
//   var faculties=data ["faculties"] as Map<String,dynamic>;
// }
// class edugaonModel {
//   int?ststus;
//   String? message;
//   edugaonModel(this.ststus,this.message);
//   static edugaonModel jsonToModel(Map<String,dynamic>data){
//     var data=dataModel.jsonToModel(data["faculties"])
//     return edugaonModel(data["ststus"], data["message"]);
//
//   }
//
// }
//
// class dataModel{
//   String?name;
//   int?age;
//   dataModel(this.name,this.age);
//   static  dataModel jsonToModel(Map<String,dynamic>data){
//     return dataModel(data["name"], data["age"]);
//   }
// }