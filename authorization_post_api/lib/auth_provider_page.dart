import 'package:authorization_post_api/Home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProviderPage with ChangeNotifier {

  var passwordController=TextEditingController();
  var emailController=TextEditingController();



  getAuthRegister(BuildContext context)async{
    var prefes= await SharedPreferences.getInstance();
    prefes.setString("nameKey", "passwordController");
    prefes.setString("emailKey", "emailController");


    Navigator.pop(context);
    passwordController.clear();
    emailController.clear();
    prefes.setBool("islogin", true);








  }
  getAuthLogin(BuildContext context)async{
     var prefes= await SharedPreferences.getInstance();
     prefes.getString("nameKey");
     prefes.getString("emailKey");
     var setEmail=prefes.getString("email");
     var setPass=prefes.getString("password");
     var getEmail=emailController.text.trim();
     var getpassword=passwordController.text.trim();

     if(setEmail==getEmail && setPass==getpassword){
      prefes.setBool("islogin", true);
      ScaffoldMessenger.of( context).showSnackBar( SnackBar(content: Text("login Sucessful")));
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePageScreen(),));

     }else{
       ScaffoldMessenger.of( context).showSnackBar( SnackBar(content: Text("login faild")));


     }





  }



}