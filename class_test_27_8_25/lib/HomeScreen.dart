import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AddTaskScreen.dart';
import 'ShowTaskScreen_page.dart';
import 'cartApiScreen_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>pages=[
    TaskScreen(),
    ShowtaskscreenPage(),
  CartapiscreenPage(),

  ];
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    // var provider=Provider.of(listen: false,context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("all tabes show "),
      //   backgroundColor: Colors.blue,
      // ),
      body: pages[pageIndex],
         bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
         backgroundColor: Colors.yellow,
         selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        items: [
               BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add task"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp),label: "cart_api"),

               BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined_sharp),label: "Show task"),
               ],


      ),
    );
  }
}
