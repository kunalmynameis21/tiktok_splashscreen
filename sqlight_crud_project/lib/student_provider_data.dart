import 'package:provider/provider.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'db_helper.dart';

class studentProvider with ChangeNotifier{
  var nameController= TextEditingController();
  var emailController= TextEditingController();
  int? studentid;

  List<Map<String,dynamic>> students=[];

  void addStudent(BuildContext context)async{
    var student={
      "name":nameController.text.toString(),
      "email":nameController.text.toString(),

    };
    studentid= await DbHelper.insertStudent(student);
    getStudentS(context);


  }
  void getStudentS(BuildContext context)async{
    var studentList= await DbHelper.viewstudent();
    if(studentList !=null){
      students.clear();
      students.addAll(studentList);
      notifyListeners();
    };

  }

}