import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTikTokPage extends StatelessWidget {
  const MyTikTokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/tiktok.png"),
        ],
      ),
    ),
    );
  }
}
