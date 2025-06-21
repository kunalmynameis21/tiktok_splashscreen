import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SettingsTab.dart';
import 'add_task.dart';
import 'show_task.dart';
import 'home_screen.dart';

class DataModel {
  String name;
  String discreaption;
  String status;

  DataModel({
    required this.discreaption,
    required this.status,
    required this.name,
  });
}

class AuthProvider with ChangeNotifier {
  PageController pageController = PageController();
  var screen = [AddTask(), ShowTask(), SettingsTab()];
  int onSelected = 0;

  TextEditingController taskName = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  TextEditingController taskStatus = TextEditingController();

  List<DataModel> userData = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  register(BuildContext context) async {
    if (nameController.text.isNotEmpty &&
        contactController.text.isNotEmpty &&
        pinCodeController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      var shar = await SharedPreferences.getInstance();
      shar.setString("name_key", nameController.text.toString());
      shar.setString("contact_key", contactController.text.toString());
      shar.setString("pinCode_key", pinCodeController.text.toString());
      shar.setString("email_key", emailController.text.toString());
      shar.setString("password_key", passwordController.text.toString());
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("PLEASE FILL ALL DETAILS")),
      );
    }
  }

  login(BuildContext context) async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var prefs = await SharedPreferences.getInstance();
      var storeEmail = prefs.getString("email_key");
      var storePassword = prefs.getString("password_key");

      var email = emailController.text.toString();
      var password = passwordController.text.toString();

      if (storeEmail == email && storePassword == password) {
        prefs.setBool("isLoggedIn", true);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainTabScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("data is not match")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("fill all details")),
      );
    }
  }

  nextScreen(int index) {
    onSelected = index;
    notifyListeners();
    pageController.jumpToPage(index);
  }

  addData() {
    if (taskName.text.isNotEmpty &&
        taskDescription.text.isNotEmpty &&
        taskStatus.text.isNotEmpty) {
      userData.add(DataModel(
        discreaption: taskDescription.text,
        status: taskStatus.text,
        name: taskName.text,
      ));

      // Clear after adding
      taskName.clear();
      taskDescription.clear();
      taskStatus.clear();

      notifyListeners(); // Update UI
    }
  }
}
