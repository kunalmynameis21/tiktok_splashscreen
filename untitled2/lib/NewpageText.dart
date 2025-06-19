import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newpagetext extends StatefulWidget {
  final String name;
  const Newpagetext({super.key,required this.name});

  @override
  State<Newpagetext> createState() => _NewpagetextState();
}

class _NewpagetextState extends State<Newpagetext> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Text("this is mt name:${widget.name}")
            ],
          ),
        ));
  }
}
