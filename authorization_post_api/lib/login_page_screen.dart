import 'package:authorization_post_api/auth_provider_page.dart';
import 'package:authorization_post_api/register_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home_page_screen.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final fromKey = GlobalKey<FormState>();

  void submit() {
    final isvalid = fromKey.currentState!.validate();
    if (!isvalid) {
      return;
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("fill add sucessfully")));
    }
    fromKey.currentState!.save();
  }
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 10),()async{
  //     var prefes=await SharedPreferences.getInstance();
  //     var  isLogiged= prefes.getBool("islogin")?? false;
  //     if(isLogiged){
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageScreen(),));
  //     }else{
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPageScreen(),));
  //     }
  //   }
  //   );
  // }

  @override


  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProviderPage>(listen: false,context);
    return Scaffold(
      appBar: AppBar(title: Text("LoginPageScreen"), centerTitle: true),
      body: Form(
        key: fromKey,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(radius: 30, child: Icon(Icons.person, size: 40)),
                Text("Welcome To User"),
                SizedBox(height: 20),
                TextField(controller: provider.emailController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: "Entre your Email",
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(controller: provider.passwordController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: "Entre your Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),

                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 150),
                      ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.cyan)),

                          onPressed: () {
                            provider.getAuthLogin(context);
                        // submit();


                      }, child: Text("Login")),

                      SizedBox(height: 20, width: 10),
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellow)),
                        onPressed: () {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),

                            ),
                          );
                        },
                        child: Text("Sign Up"),
                      ),
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
