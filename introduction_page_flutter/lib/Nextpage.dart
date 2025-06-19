import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nextPge@2.dart';

class Myhomepage extends StatelessWidget {



  const Myhomepage({super.key});


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
            Padding(
              padding: const EdgeInsets.only(left: 208.0),
              child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));

              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text("data"),),
            )
          ],
        ),
      ),
    );
  }
}
