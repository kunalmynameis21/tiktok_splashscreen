import 'dart:async';

import 'package:crud_in_provider/CrudOprationPage.dart';
import 'package:crud_in_provider/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({super.key});

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      getData();
    });
  }


  getData() async {
    await Future.delayed(Duration(seconds: 2)); // Optional: Add splash delay
    var prefs = await SharedPreferences.getInstance();
    var isLogin = prefs.getBool("isLogin");

    if (isLogin == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CrudOpration()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginDemo()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spleshscreen"),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Icon(
          Icons.icecream,
          color: Colors.pink,
          size: 100,
        ),
      ),
    );
  }
}
