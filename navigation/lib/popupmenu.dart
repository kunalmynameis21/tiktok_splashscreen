import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Passdata(),
    );
  }
}
class Passdata extends StatefulWidget {
  const Passdata({super.key});

  @override
  State<Passdata> createState() => _PassdataState();
}

class _PassdataState extends State<Passdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Popupmenu"),
         backgroundColor: Colors.green,
       ),
    );
  }
}
