import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/bottom_navigation_bar/profile_screen.dart';
import 'package:untitled6/bottom_navigation_bar/settings.dart';
import 'package:untitled6/bottom_navigation_bar/updates.dart';

import '../Airindia.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  var pageList = [
    Airindia(),
    ProfileScreen(),
    Settings(),
    Updates(),
  ];

  int selectedIndex =0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value){
              setState(() {
                selectedIndex =value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
              BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
              BottomNavigationBarItem(icon: Icon(Icons.commute), label: 'Communites'),
              BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),])

    );
  }
}
