import 'package:sqllight_provider_crud/db_helper.dart';

class studentProvider with ChangeNotifier{

  var nameController= TextEditingController();
  var emailController= TextEditingController();
  int? studentid;

  List<Map<String,dynamic>> students=[];

  void addStudent()async{
    var student={
      "name":nameController.text.toString(),
      "email":nameController.text.toString(),

    };
    studentid= await DbHelper.insertStudent(student);
   getStudentS();


  }
  void getStudentS()async{
    var studentList= await DbHelper.viewstudent();
    if(studentList!=null){
     students.clear();
     students.addAll(studentList);
     // notifyListeners();
    }

  }

}