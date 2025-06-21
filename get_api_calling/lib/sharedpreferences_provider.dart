import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_api_calling/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Homepagescreen.dart';

class Authorization with ChangeNotifier{
  var nameController=TextEditingController();
  var passwordController=TextEditingController();
  registerUser(BuildContext context)async{
    var prefes= await SharedPreferences.getInstance();
     prefes.setString("name", "nameController");
     prefes.setString("password", "passwordController");
     prefes.setBool("islogedststus", true);
     Navigator.pop(context);
     nameController.clear();
     passwordController.clear();


  }
loginUser(BuildContext context)async{
    var prefes= await SharedPreferences.getInstance();
    var getEmail=prefes.getString("name",);
  var getPassword=prefes.getString("password",);
    var setEmail=nameController.text.trim();
    var setPassword=passwordController.text.trim();
    if(setEmail==getEmail && getPassword==getPassword){
    prefes.setBool("isLoggedIn",true);
    Fluttertoast.showToast(msg: "Login scessful");

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepagescreen(),));
    }else{
      Fluttertoast.showToast(msg: "data is not matched");

    }


}

}