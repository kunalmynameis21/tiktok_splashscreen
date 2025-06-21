import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqllight_database/db_helper.dart';

class studentProvider with ChangeNotifier {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  int? studentid;
  List<Map<String, dynamic>> students = [];

  void addStudent() async {
    var student = {
      "name": nameController.text.toString(),
      "email": emailController.text.toString(),
    };
    studentid = await DbHelper.insertStudent(student);
    getStudent();
    notifyListeners();
  }

  void getStudent() async {
    var studentList = await DbHelper.viewstudent();
    if (studentList != null) {
      students.clear();
      students.addAll(studentList);
      notifyListeners();
    }
  }
}
