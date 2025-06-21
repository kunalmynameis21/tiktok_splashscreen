import 'dart:async';

import 'package:crud_project_task/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 3), () async {
        SharedPreferences prefs=await SharedPreferences.getInstance();
        bool isLoggedIn=prefs.getBool('isLoggedIn') ?? false;
        if(isLoggedIn){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainTabScreen()),
          );
        }else{
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpleshScreen"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Center(child: Column(children: [Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 228.0),
          child: CircleAvatar(radius: 112,child:Icon(Icons.account_circle,size: 200,) ,),
        ),
        Text("Welcome ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
      ],)],),));
  }
}
