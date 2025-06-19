import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listview.dart';

void main() {
  runApp(Myscreen());
}

class Myscreen extends StatelessWidget {
  const Myscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page());
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        actions: [
          ElevatedButton(onPressed: () {}, child: Text("data")),

          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.mail)),

          // IconButton(onPressed: () {
          //
          // }, icon: Icon(Icons.ac_unit_rounded))
        ],
      ),

      body: Column(
    children: [
      ElevatedButton(onPressed: () {
        showMenu(context: context, items: [
          PopupMenuItem(child: Text('hello')),
          PopupMenuItem(child: Text('world')),
          PopupMenuItem(child: Text('kunal')),
          PopupMenuItem(child: Text('kumar')),
        ]);
      }, child: Text("Context menu"))
    ],
    ));
  }
}
