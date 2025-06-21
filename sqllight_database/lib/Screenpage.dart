import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqllight_database/student_provider.dart';

class Screenpage extends StatefulWidget {
  const Screenpage({super.key});

  @override
  State<Screenpage> createState() => _ScreenpageState();
}

class _ScreenpageState extends State<Screenpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Provider.of<studentProvider>(context, listen: false).getStudent();
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<studentProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Screenpage"), backgroundColor: Colors.red),
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          TextField(
            controller: provider.nameController,
            decoration: InputDecoration(hintText: "Entre your name"),
          ),
          TextField(
            controller: provider.emailController,
            decoration: InputDecoration(hintText: "Entre your name"),
          ),ElevatedButton(onPressed: () {
            provider.getStudent();

          }, child: Text("Add data"))
        ],
      ),
    );
  }
}
