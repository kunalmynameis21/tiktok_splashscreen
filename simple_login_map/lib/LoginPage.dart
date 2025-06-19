import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _MyLoginState();
}

class _MyLoginState extends State<HomeScrren> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 375,
              height: 200,
              color: Colors.blueAccent,
              child: SizedBox(
                height: 12,
                width: 50,
                child: Container(
                  height: 120,
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 230.0,
                          bottom: 20,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 19,

                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 130.0),
                        child: Text(
                          "and you discover best",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130.0),
                        child: Text(
                          "news around the world",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 120),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Password(optional)"),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                        Text("Remember me"),
                      ],
                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent, // background color
                      foregroundColor: Colors.white,
                      minimumSize: Size(312, 31), // text color
                    ),
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
