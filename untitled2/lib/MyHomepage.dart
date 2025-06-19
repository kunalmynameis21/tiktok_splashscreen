import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NewpageText.dart';

class MyHomepage extends StatefulWidget {



  MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  var nameControllor=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WELCOME TO YOU",
          style: TextStyle(
            color: Colors.pinkAccent,
            backgroundColor: Colors.purpleAccent,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.green,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Entre your name :"),
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),

          ),
          SizedBox (height: 10,width: 30,),

         TextField(
           controller: nameControllor,
         ),
          ElevatedButton (onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) =>
               Newpagetext(name:nameControllor.text),));
          }, child: Text("data"),)
        ],
      ),
    );

  }
}
