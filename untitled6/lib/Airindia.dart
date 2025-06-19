import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Airindia extends StatefulWidget {
  const Airindia({super.key});

  @override
  State<Airindia> createState() => _AirindiaState();
}

class _AirindiaState extends State<Airindia> {
  // double _currentSliderPrimaryValue = 0.2;
  // double _currentSliderSecondaryValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Text(
            "AIR INDIA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.pink,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.menu, color: Colors.red),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.doorbell),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              "VISON\nVISOIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ],

        leadingWidth: 13,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    "WELCOME TO AIR INDIA",
                    style: TextStyle(fontSize: 10),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 19.0),
                  child: Text("NAMASTE!", style: TextStyle(fontSize: 26)),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 330,
                            width: 356,
                            child: Image.asset("images/goa.jpg"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            //color: Colors.red,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),

                            height: 120,
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: Icon(
                                        Icons.error,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20.0,
                                        left: 5,
                                      ),
                                      child: Text(
                                        "Important Update",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Flight Al171 (AMD-LGW) was involved in an incident\n on 12 June 2025. Air India has set up a dedicated\n passenger hotline at 1800 5691 444 for callers within \n India, and ‪+91 80627 79200‬ for those outside India.",
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            spacing: 15,
                            children: [
                              Container(
                                width: 100,
                                height: 150,
                                color: Colors.grey, child:   Image.asset("images/man.png"),

                              ),
                              Container(
                                width: 100,
                                height: 150,
                                color: Colors.red, child: Image.asset("images/man2.png"),
                              ),
                              Container(
                                width: 100,
                                height: 150,
                                color: Colors.grey,child:
                                 Image.asset("images/man.png"),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Text("NAMASTE!")
        ],
      ),
    //     bottomNavigationBar: BottomNavigationBar(
    //         type: BottomNavigationBarType.fixed,
    //         items: [
    //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
    // BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
    // BottomNavigationBarItem(icon: Icon(Icons.commute), label: 'Communites'),
    // BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),])

    );
  }
}
