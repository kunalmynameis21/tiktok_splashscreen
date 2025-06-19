import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_page_flutter/NextPage@3.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("data@2"), backgroundColor: Colors.pinkAccent)
        ,
        body: Column(
          children: [
            Image.asset("images/1749898660309.jpg"),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyThirdPage(),));

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
