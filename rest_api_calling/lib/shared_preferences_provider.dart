import 'package:flutter/material.dart';
import 'package:rest_api_calling/product_api_screen_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  registerUser(BuildContext context) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("email", emailController.text);
    prefs.setString("password", passwordController.text);
    prefs.setBool('login_status', true);
    Navigator.pop(context); // go back after signup

    emailController.clear();
    passwordController.clear();
  }

  loginUser(BuildContext context) async {
    var prefs = await SharedPreferences.getInstance();
    var getEmail = prefs.getString("email");
    var getPassword = prefs.getString("password");

    var setEmail = emailController.text.trim();
    var setPassword = passwordController.text.trim();

    if (setEmail == getEmail && setPassword == getPassword) {
      prefs.setBool('login_status', true);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successful")));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login failed")));
    }
  }
}
