import 'package:authorization_post_api/auth_provider_page.dart';
import 'package:authorization_post_api/login_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home_page_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fromKey = GlobalKey<FormState>();

  void submit() {
    final isvalid = _fromKey.currentState!.validate();
    if (!isvalid) {
      return;
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("login done")));
    }
    _fromKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProviderPage>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("RegisterScreen"), centerTitle: true,actions: [IconButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageScreen(),));
      }, icon: Icon(Icons.arrow_back))],),
      body: Form(
        key: _fromKey,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(radius: 30, child: Icon(Icons.person, size: 40)),
                Text("Welcome To User"),
                SizedBox(height: 20),
                TextFormField(controller: provider.emailController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: "Entre your Email",
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if(value!.isEmpty)
                      return "fill the data";
                  },
                ),
                SizedBox(height: 20),
                TextFormField(controller: provider.passwordController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: "Entre your Password",
                    hintText: "Password",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty )
                      return 'Enter a valid email!';


                  },


                ),

                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 150),
                      ElevatedButton(onPressed: () {
                        provider.getAuthRegister(context);
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginPageScreen(),));

                      }, child: Text("register")),

                      SizedBox(height: 20, width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
