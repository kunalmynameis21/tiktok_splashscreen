//   void main(){
//   var edugaon  = {
//     "status": 200,
//     "message": "Success",
//     "data" : {
//       "faculties" : ["Ajay", "Suraj","Sudish"],
//       "students" :["Sonu", "Suraj", "Hena"]
//     }
//   };
//
//   var jsonToModel = EdugaonModel.fromJsonToModel(edugaon);
//   print(jsonToModel.apistatus);
//   print(jsonToModel.message);
//   print(jsonToModel.data);
// /*  var data = edugaon["data"] as Map<String, dynamic>;
//   var faculties = data["faculties"] as List<String>;
//   var studentData = data["students"] as List<String>;
//   print(studentData.length);
//
//
//  */
//
//
// var data=edugaon["data"] as Map<String,dynamic>;
// var faculties=data["faculties"] as List<String>;
// var students=data["student"]as List<String>;
// print(students.length);
// print(faculties.length);
// }
//
// class EdugaonModel {
//   int? apistatus;
//   String? message;
//   DataModel? data;
//
//   // EdugaonModel() //default constructor
//   EdugaonModel(this.apistatus, this.message, this.data); // parameterise
//
//   static EdugaonModel fromJsonToModel(Map<String, dynamic> data) {
//     var dataModel = DataModel.fromJsonToModel(data["data"]);
//     return EdugaonModel(data["status"], data["message"], dataModel);
//   }
// }
// class DataModel{
//   List<String>? faculties;
//   List<String>? students;
//   DataModel(this.faculties, this.students);
//
//   static DataModel fromJsonToModel(Map<String, dynamic> data){
//     return DataModel(data["faculties"], data["students"]);
//   }
// }