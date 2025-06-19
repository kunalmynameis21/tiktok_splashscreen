import 'package:flutter/material.dart';
import 'package:navigatar_basics_work/NewHomescreen.dart';

class Myscreenpage extends StatefulWidget {
  const Myscreenpage({super.key});

  @override
  State<Myscreenpage> createState() => _MyscreenpageState();
}

class _MyscreenpageState extends State<Myscreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>  Newhomescreenpage(),
              ),
            );
          },
          child: const Center(
            child: Text("III"),
          ),
        ),
      ),
    );
  }
}