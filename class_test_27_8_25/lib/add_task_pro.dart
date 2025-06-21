import 'package:class_test_27_8_25/sqlight_dataHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class TaskProvider with ChangeNotifier {
  TextEditingController taskName = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  TextEditingController taskStatus = TextEditingController();
  List<Map<String, dynamic>> _tasks = [];
  String _name = '';
  String _description = '';
  String _status = '';

  List<Map<String, dynamic>> get tasks => _tasks;
  String get name => _name;
  String get description => _description;
  String get status => _status;

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  void setDescription(String value) {
    _description = value;
    notifyListeners();
  }

  void setStatus(String value) {
    _status = value;
    notifyListeners();
  }

  Future<void> addTask() async {
    if (_name.isEmpty || _description.isEmpty || _status.isEmpty) {
      return;
    }

    final task = {
      'name': _name,
      'description': _description,
      'status': _status,
    };

    await DbHelper.insertTask(task);
    await getTasks();

    // Clear fields
    _name = '';
    _description = '';
    _status = '';
    notifyListeners();
  }

  Future<void> getTasks() async {
    _tasks = await DbHelper.getTasks();
    notifyListeners();
  }

  Future<void> updateTask(int id) async {
    final task = {
      'name': _name,
      'description': _description,
      'status': _status,
    };

    await DbHelper.updateTask(id, task);
    await getTasks();

    // Clear fields
    _name = '';
    _description = '';
    _status = '';
    notifyListeners();
  }

  Future<void> deleteTask(int id) async {
    await DbHelper.deleteTask(id);
    await getTasks();
  }

  void clearFields() {
    _name = '';
    _description = '';
    _status = '';
    notifyListeners();
  }

  void loadTaskForEditing(Map<String, dynamic> task) {
    _name = task['name'] ?? '';
    _description = task['description'] ?? '';
    _status = task['status'] ?? '';
    notifyListeners();
  }
}