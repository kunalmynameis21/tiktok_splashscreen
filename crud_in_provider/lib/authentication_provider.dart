import 'package:crud_in_provider/CrudOprationPage.dart';
import 'package:crud_in_provider/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController loginEmailController=TextEditingController();
  TextEditingController loginPasswordController=TextEditingController();

  Future<void> registerUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("first_name_key",firstNameController.text.trim());
    prefs.setString("last_name_key",lastNameController.text.trim());
    prefs.setString("email_key",emailController.text.trim());
    prefs.setString("mobile_key",mobileController.text.trim());
    prefs.setString("password_key",passwordController.text.trim());
    prefs.setBool("isLogin",true);
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginDemo(),));
  }
  Future<void> loginUser(BuildContext context) async {
    SharedPreferences prefs=await SharedPreferences.getInstance();
   var getEmail=prefs.getString('email_key');
   var getPassword=prefs.getString('password_key');

    var storeEmail=loginEmailController.text.trim();
    var storePassword=loginPasswordController.text.trim();
    if(getEmail==storeEmail && getPassword==storePassword){
      prefs.setBool('isLoggedIn', true);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CrudOpration(),));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data not matched')));
    }
  }

}

