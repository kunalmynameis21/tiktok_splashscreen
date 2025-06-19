
import 'package:flutter/material.dart';

class Newhomescreen extends StatefulWidget {
  const Newhomescreen({super.key});

  @override
  State<Newhomescreen> createState() => _NewhomescreenState();
}

class _NewhomescreenState extends State<Newhomescreen> {
  @override
  Widget build(BuildContext context) {
    return Newhomescreenpage(

    );
  }
}
class Newhomescreenpage extends StatelessWidget {
  const Newhomescreenpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data"),backgroundColor: Colors.pink,),
    );
  }
}

