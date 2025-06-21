import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'add_task_pro.dart';
class ShowtaskscreenPage extends StatefulWidget {
  const ShowtaskscreenPage({super.key});

  @override
  State<ShowtaskscreenPage> createState() => _ShowtaskscreenPageState();
}

class _ShowtaskscreenPageState extends State<ShowtaskscreenPage> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<TaskProvider>(listen: false,context);
    return Scaffold(

    body: Column(children: [

    ],),

    );
  }
}
