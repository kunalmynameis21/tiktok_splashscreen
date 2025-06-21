import 'package:flutter/material.dart';
import 'package:get_api_calling/sharedpreferences_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Authorization>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("LoginPage"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120),
            Container(
              height: 120,
              width: 130,
              color: Colors.yellow,
              child: Icon(Icons.person,size: 102,),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome To NewUser",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            TextField(
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "Enter your login name",
                labelText: "name",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "Enter your Login Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.loginUser(context);

              },
              child: Text("Login", style: TextStyle(color: Colors.blue)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Register", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
