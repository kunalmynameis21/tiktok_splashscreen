import 'package:crud_project_task/login_page.dart';
import 'package:crud_project_task/textfield_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProvider>(context,listen: false);
    return  Scaffold(
      appBar: AppBar(title: Text("Register page"), centerTitle: true),
      backgroundColor: Colors.grey,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Register page",style: TextStyle(fontSize: 17,color: Colors.yellow),),
            SizedBox(height: 10,),
            TextField(
              controller: provider.nameController,
              decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: "Entre Name",
                prefixIcon: Icon(Icons.email_outlined),
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: provider.contactController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: "Entre Contact",
                prefixIcon: Icon(Icons.login),
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),SizedBox(height: 20),
            TextField(
              controller: provider.pinCodeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: "Entre Pin Code",
                prefixIcon: Icon(Icons.login),
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),SizedBox(height: 20),
            TextField(
              controller: provider.emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: "Entre Email",
                prefixIcon: Icon(Icons.login),
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),SizedBox(height: 20),
            TextField(
    controller: provider.passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: "Entre Password",
                prefixIcon: Icon(Icons.login),
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white), // Background color
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Colors.red), // Border if needed
                  ),
                ),
              ),
              onPressed: () {
                provider.register(context);
              },
              child: Text(
                "Register Now",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            )
        
        
          ],
        ),
      ),
    );
  }
}
