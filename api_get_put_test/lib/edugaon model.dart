// void main(){
//   var edugaon={
//     "id":1,
//     "name":"kunal",
//     "status":"online",
//     "school":{
//       "student":"kunal",
//       "teacher":"sudiesh sir",
//       "classTeacher":"ravi",
//
//     }
//   };
//   var obj=EdugaonModel.jsonToModel(edugaon);
//   print(obj.id);
//   print(obj.name);
//   print(obj.status);
//   print(obj.school?.student);
//   print(obj.school?.teacher);
//   print(obj.school?.classTeacher);
// }
//
//
// class EdugaonModel {
//   int? id;
//   String? name;
//   String? status;
//   SchoolModel? school;
//
//   EdugaonModel(this.id, this.name, this.status, this.school);
//
//   static EdugaonModel jsonToModel(Map<String, dynamic> data) {
//     var school = SchoolModel.jsonToMOdel(data["school"]);
//     return EdugaonModel(data["id"], data["name"], data["status"],school );
//   }
// }
//
//
//   class SchoolModel{
//       String? student;
//       String? teacher;
//       String? classTeacher;
//   SchoolModel(this.student,this.teacher,this.classTeacher);
//   static SchoolModel jsonToMOdel(Map<String,dynamic>data){
//     return SchoolModel(data["student"],data["teacher"],data["classTeacher"]);
//   }
//
//
//
//   }
//
//
//
//
//
//
//
