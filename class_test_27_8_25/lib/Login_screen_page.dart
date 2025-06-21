import 'package:class_test_27_8_25/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

import 'RegisterPage_Screen.dart';
import 'authorization.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  var _formkey = GlobalKey<FormState>();

  void submit(Function onSuccess) {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill all fields")),
      );
      return;
    }
    _formkey.currentState!.save();
    onSuccess(); // ✅ run passed callback
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Authorization>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("LoginScreenPage"),actions: [IconButton(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreenPage(),));
      }, icon: Icon(CupertinoIcons.back))], centerTitle: true),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Text(
                    "Login User ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill the data";
                  }
                  return null;
                },
                controller: provider.emailController,
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "Enter EmailId",
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill the data";
                  }
                  return null;
                },
                controller: provider.passwordController,
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              Container(
                width: 320,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ✅ Login Button
                    ElevatedButton(
                      onPressed: () {
                       provider.loginUser(context);
                      },
                      child: Text("Login"),
                    ),
                    SizedBox(width: 90),

                    // ✅ Sign Up Button
                    ElevatedButton(
                      onPressed: () {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage()),
                          );

                      },
                      child: Text("Sign Up",style:  TextStyle(color: Colors.red),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
