import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("data"), backgroundColor: Colors.pinkAccent)
        ,
        body: Column(
          children: [
            Image.asset("images/image.jpg"),
            Padding(
              padding: const EdgeInsets.only(top: 118.0),
              child: Text("Fusce dictum tristique elit nec iaculi"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0,),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor risus, aliquet a erat quis duis"),


            ),

          ],
        ),
      ),
    );
  }
}




