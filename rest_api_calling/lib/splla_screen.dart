import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rest_api_calling/login_screen.dart';
import 'package:rest_api_calling/product_api_screen_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpllaScreen extends StatefulWidget {
  const SpllaScreen({super.key});

  @override
  State<SpllaScreen> createState() => _SpllaScreenState();
}

class _SpllaScreenState extends State<SpllaScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('data'));
  }

  getData() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLogged = sharedPref.getBool('login_status')??false;
    Timer(Duration(seconds: 3), () {
      if (isLogged == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }
    });
  }
}
