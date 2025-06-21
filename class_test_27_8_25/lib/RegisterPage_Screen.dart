import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'Login_screen_page.dart';
import 'authorization.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  var _formkey=GlobalKey<FormState>();
  void submit(){
    final isValid=_formkey.currentState!.validate();
    if(!isValid){
      return ;
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fill the all field")));
    }
    _formkey.currentState!.save();
  }


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Authorization>( context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("RegisterPage"),actions: [IconButton(onPressed: () {

      }, icon: IconButton(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreenPage(),));
      }, icon: Icon(CupertinoIcons.increase_indent)))],),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Text(
                  "RegisterPage ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(controller: provider.nameController,
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Entre Name",
                hintText: "Entre your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(controller: provider.pinCodeController,
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: " entre PinCode",
                hintText: "Entre your PinCode",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(controller: provider.emailController,
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: " entre Email",
                hintText: "Entre your Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(controller: provider.passwordController,
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: " entre Password",
                hintText: "Entre your Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Container(
              width: 320,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(),
                  ElevatedButton(onPressed: () {
                    provider.registerUser(context);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreenPage(),));

                  }, child: Text("Sign_Up")),
                ],
              ),
            ),
          ],
        ),
      ),)
    );
  }
}
