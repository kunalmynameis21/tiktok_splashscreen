import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_calling/product_api_screen_page.dart';
import 'package:rest_api_calling/register_page.dart';
import 'package:rest_api_calling/shared_preferences_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginScreen"),
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
                    radius: 30,
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text(
                      "Welcome To New User",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Column(children: [
                    SizedBox(height: 20,),
                    TextField(controller: provider.emailController,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: "Enter your email ID",
                        hintStyle: TextStyle(color: Colors.red), // 👈 Hint Text Color
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
                        hintStyle: TextStyle(color: Colors.red), // 👈 Hint Text Color
                        border: OutlineInputBorder(),
                        labelText: "Enter your Password",
                        labelStyle: TextStyle(color: Colors.yellow), // 👈 Label Text Color
                      ),
                    ),
        
        
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                      ElevatedButton(onPressed: () {
                        provider.loginUser(context);

                      }, child: Text("Login")),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                      }, child: Text("Sign Up"))
                    ],),
        
                  ],),SizedBox(height: 20,),Text("Sign Up with Google ")
        
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
