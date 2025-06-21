import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqllight_provider_crud/student_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {  // ✅ Correct spelling
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Provider.of<studentProvider>(context, listen: false).getStudentS();
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<studentProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("sqflite_database")),
      body: Column(
        children: [
          TextField(
            controller: provider.nameController,
            decoration: InputDecoration(hintText: "Enter your name"),
          ),
          TextField(
            controller: provider.emailController,
            decoration: InputDecoration(hintText: "Enter your email"),
          ),
          ElevatedButton(
            onPressed: () {
              provider.addStudent();
            },
            child: Text("Add Student"),
          ),
          SizedBox(
            height: 340,
            child: Consumer<studentProvider>(
              builder: (context, value, child) {
                if (value.students.isEmpty) {
                  return Center(child: Text("No Data found"));
                }
                return ListView.builder(   // ✅ return added
                  itemCount: value.students.length,
                  itemBuilder: (context, index) {
                    var student = value.students[index];
                    return ListTile(
                      title: Text(student["name"]),
                      subtitle: Text(student["email"]),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
