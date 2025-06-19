import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MYfacebookPage extends StatelessWidget {
  const MYfacebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 218.0),
                  child: Icon(Icons.facebook,color: Colors.blueAccent, size: 110),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 208.0),
                  child: Text("from",style: TextStyle(fontSize: 20,color: Colors.white24)),
                ),
                Text("F a c e b o o k",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,   color: Colors.black38),),
                Row(children: [

                  Image.asset("assets/images/user.png",scale: 25,width: 32,height: 20,),
                  Image.asset("assets/images/mail.png",scale: 19,width: 32,height: 20,),

                  Image.asset("assets/images/store.png",scale: 15,width: 32,height: 20,),
                  Image.asset("assets/images/visible.png",scale: 19,width: 32,height: 20,),




                ],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
