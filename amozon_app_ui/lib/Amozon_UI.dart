import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmozonApp extends StatefulWidget {
  const AmozonApp({super.key});

  @override
  State<AmozonApp> createState() => _AmozonAppState();
}

class _AmozonAppState extends State<AmozonApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Row(
              children: [
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.search),
                      ),
                      Text(
                        "Search or  ask  a question",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Icon(Icons.camera_alt),
                      ),
                      Icon(Icons.mic),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.qr_code, color: Colors.white),
                ),
                // Icon(Icons.account_balance)
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 710,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Container(
                            height: 60,
                            width: 90,
                            color: Colors.white,
        
                            child: Image.asset("assets/images/star.png"),
                          ),
                        ),
                        Text("Top Picks"),
                        Container(
                          width: 100,
                          color: Colors.white12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  height: 60,
                                  width: 90,
                                  color: Colors.white,
        
                                  child: Image.asset("assets/images/corporate-lawyer.png"),
                                ),
                              ),
                              Text("Amozon Pay"),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          color: Colors.white12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  height: 60,
                                  width: 90,
                                  color: Colors.white,
        
                                  child: Image.asset("assets/images/devices.png"),
                                ),
                              ),
                              Text("Mobile and Electronics"),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  height: 60,
                                  width: 90,
                                  color: Colors.white,
        
                                  child: Image.asset("assets/images/shopping-bag (2).png"),
                                ),
                              ),
                              Text("Groceries"),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  height: 60,
                                  width: 90,
                                  color: Colors.white,
        
                                  child: Image.asset("assets/images/devices.png"),
                                ),
                              ),
                              Text("Mobile & pet Supplies"),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Container(
                                  height: 60,
                                  width: 90,
                                  color: Colors.white,
        
                                  child: Image.asset("assets/images/devices.png"),
                                ),
                              ),
                              Text("Mobile & pet Supplies"),
                            ],
                          ),
                        ),
        
        
                      ],
                    ),
                  ),
        
                  Container(
                    width: 272,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Top Categories For You ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
        
                            // Image.asset("assets/images/star.png"),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 550,
                                  width: 265,
                                  color: Colors.white,
                                  child: Wrap(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0,),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/mobile.jpg",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("mobile"),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/fashion.jpg",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("fashion"),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/electronic.jpg",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Text("electronic"),
                                          )
                                        ],
                                      ), Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/travel.jpg",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Travel"),
                                          )
                                        ],
        
                                      ), Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/online-shopping.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("shopping"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/small-appliance.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Home"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/food.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Groces"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/popcorn.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Movies"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/makeup-pouch.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Beauty"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/home-appliance.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("appliance"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/table.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("futuner"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
        
                                              child:
                                              Image.asset(
                                                "assets/images/toys.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Toys"),
                                          )
                                        ],
        
                                      ), Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
                                              child:
                                              Image.asset(
                                                "assets/images/amazon_images.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Pime"),
                                          )
                                        ],
        
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Container(
                                              height: 62,
                                              width: 50,
                                              color: Colors.black,
                                              child:
                                              Image.asset(
                                                "assets/images/kam_images.png",
                                              ),
        
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 28.0),
                                            child: Text("Amazon Business"),
                                          )
                                        ],
        
                                      ),
        
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        
        
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "You"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Cart",),
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu",backgroundColor: Colors.red),
        BottomNavigationBarItem(icon: Image.asset("assets/images/app.png",height: 18,width: 17,),label: "Refus"),
      ]),
    );
  }
}
