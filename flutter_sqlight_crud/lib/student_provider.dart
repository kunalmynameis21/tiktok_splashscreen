import 'package:flutter/cupertino.dart';
import 'package:flutter_sqlight_crud/Db_helper.dart';

class studentProvider with ChangeNotifier{

var nameController=TextEditingController();
var emailController=TextEditingController();
int ?studentid;
List<Map<String,dynamic>> students=[];
Future<void>addStudent()async{
 var student={
"name":nameController.text.toString(),
"email":emailController.text.toString(),

 };
 await DbHelper.insertStudent(student);
 await getStudent();
 nameController.clear();
 emailController.clear();
 notifyListeners();

}

 Future<void>getStudent()async{
 var studentList= await DbHelper.viewStudents();
if(studentList ! ==null){
 students.clear();
students.addAll(studentList);
notifyListeners();
}
}
void deliteStudent(int id)async{
await DbHelper.deliteData(id);
await getStudent();
notifyListeners();

}
void updateStudent(int id)async{
var updateStudent={
"name":nameController.text.toString(),
"email":emailController.text.toString(),

};
await DbHelper.updateData(id, updateStudent);
await getStudent();
nameController.clear();
emailController.clear();
notifyListeners();
}

}