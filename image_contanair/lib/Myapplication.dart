import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myapplication extends StatefulWidget {
  const Myapplication({super.key});

  @override
  State<Myapplication> createState() => _MyapplicationState();
}

class _MyapplicationState extends State<Myapplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Project"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [

          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19, left: 20),
                  child: Container(
                    height: 250,
                    width: 100,
                    color: Colors.green,
                    child: Image.asset("assets/images/onlyman.jpg"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 19.0, left: 20),
                  child: Container(
                    height: 250,
                    width: 100,
                    color: Colors.green,
                    child: Image.asset("assets/images/Capture.JPG"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 19.0, left: 20),
                  child: Container(
                    height: 250,
                    width: 100,
                    color: Colors.green,
                    child: Image.asset("assets/images/security.png"),
                  ),
                ),
              ],
            ),
          ),

          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 19.0, left: 20),
          //       child: Container(
          //         height: 250,
          //         width: 100,
          //         color: Colors.green,
          //         child: Image.asset("assets/images/imageart.jpg"),
          //       ),
          //     ),
          //   ],
          // ),

          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 19.0, left: 20),
          //       child: Container(
          //         height: 250,
          //         width: 100,
          //         color: Colors.green,
          //         child: Image.asset("assets/images/imageart.jpg"),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              height: 150,
              width: 360,
              color: Colors.red,
              child: Image.asset("assets/images/security.png"),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19.0, left: 20),
                  child: Container(
                    height: 220,
                    width: 120,
                    color: Colors.green,
                    child: Image.asset("assets/images/man2.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19.0, left: 100),
                  child: Container(
                    height: 220,
                    width: 120,
                    color: Colors.green,
                    child: Image.asset("assets/images/man2.jpg"),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
