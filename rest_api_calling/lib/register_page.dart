import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_calling/product_api_screen_page.dart';
import 'package:rest_api_calling/shared_preferences_provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("RegisterPage"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 710,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Column(
                children: [SizedBox(height: 240,width:500,child: Image(image: AssetImage("assets/image/images.jpg"))),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.person,size: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text(
                      "Welcome To RegisterPage",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Column(children: [
                    SizedBox(height: 20,),
                    TextField(controller: provider.emailController,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: "Enter your email ID",
                        hintStyle: TextStyle(color: Colors.blueGrey), // 👈 Hint Text Color
                        border: OutlineInputBorder(),
                        labelText: "Enter your email ID",
                        labelStyle: TextStyle(color: Colors.yellow), // 👈 Label Text Color
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(controller: provider.passwordController,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      obscureText: true, // 👈 Password ke liye
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(color: Colors.amber), // 👈 Hint Text Color
                        border: OutlineInputBorder(),
                        labelText: "Enter your Password",
                        labelStyle: TextStyle(color: Colors.grey), // 👈 Label Text Color
                      ),
                    ),
        
        
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                      // ElevatedButton(onPressed: () {
                      //   Navigator.pop(context);
                      // }, child: Text("Login",style: TextStyle(color: Colors.yellow),)),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: () {
                        provider.registerUser(context);
                      }, child: Text("Sign Up",style: TextStyle(color: Colors.redAccent)))
                    ],),
        
                  ],),SizedBox(height: 20,),Text("Sign Up with Google ",style: TextStyle(color: Colors.redAccent))
        
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
