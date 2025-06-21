// import 'package:class_test_27_8_25/sqlight_dataHelper.dart';
// import 'package:flutter/cupertino.dart';
//
// class AddTaskProvider with ChangeNotifier {
// final TextEditingController nameController=TextEditingController();
// final TextEditingController descriptionController=TextEditingController();
// final TextEditingController statusController=TextEditingController();
// var globalKey=GlobalKey<FormState>();
// final DbHelper dbHelper=DbHelper();
// List<Map<String,dynamic>>taskData=[];
// Future<bool> addTaskProvider(){
// var data={
//   dbHelper.COLUMN_NAME:nameController.text,
//   dbHelper.COLUMN_DESCRIPITION:descriptionController.text,
//   dbHelper.COLUMN_STATUS:statusController.text,
// };
// getAllTaskProvider();
// return dbHelper.getAllTaskFromDatabase();
// notifyListeners();
// }
//
// }