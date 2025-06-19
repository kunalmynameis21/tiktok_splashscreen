
import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: nextpage2(),
    );
  }
} 
class nextpage2 extends StatelessWidget {
  const nextpage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}

