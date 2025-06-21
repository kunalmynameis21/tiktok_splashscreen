import 'dart:async';
import 'dart:math';

import 'package:class_test_27_8_25/HomeScreen.dart';
import 'package:class_test_27_8_25/Login_screen_page.dart';
import 'package:class_test_27_8_25/RegisterPage_Screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    getdata(); // ✅ call here instead of hardcoding Login page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SpleshScreen"), centerTitle: true),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 370,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "welcome To User",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getdata() async {
    var prefes = await SharedPreferences.getInstance();
    var isLoged = prefes.getBool("login_status") ?? false;
    Timer(Duration(seconds: 3), () {
      if (isLoged == true) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreenPage()),
        );
      }
    });
  }
}
