import 'package:crud_project_task/textfield_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          TextField(
            controller: provider.taskName,
            decoration: InputDecoration(
              hintText: "AddTask",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: provider.taskDescription,
            decoration: InputDecoration(
              hintText: "TASK DISCREAPTION",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: provider.taskStatus,
            decoration: InputDecoration(
              hintText: "TASK STATUS",
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 20),
          ElevatedButton(onPressed: () {
            provider.addData();
          }, child: Text("Add")),
        ],
      ),
    );
  }
}
