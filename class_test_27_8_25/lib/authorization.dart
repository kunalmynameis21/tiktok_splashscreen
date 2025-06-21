import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomeScreen.dart';

class Authorization with ChangeNotifier {
  var nameController=TextEditingController();
  var pinCodeController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

registerUser(BuildContext context)async{
  var prefes= await SharedPreferences.getInstance();
  prefes.setString("name", nameController.text);
  prefes.setString("pinCode", pinCodeController.text);
  prefes.setString("email", emailController.text);
  prefes.setString("password", passwordController.text);

  emailController.clear();
  passwordController.clear();
  pinCodeController.clear();
  nameController.clear();

}
loginUser(BuildContext context)async{
var prefs=await SharedPreferences.getInstance();
var getEmail=prefs.getString("email");
var getPassword=prefs.getString("password");
var setEmail=emailController.text.trim();
var setPassword=passwordController.text.trim();

if(setEmail==getEmail && setPassword==getPassword){
prefs.setBool("login_status", true);
ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(" Login sucessfully")));
Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
}else{
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed")));
}


}






}