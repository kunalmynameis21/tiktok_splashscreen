import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqlight_crud_project/student_provider_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Provider.of<studentProvider>(context, listen: false).getStudentS(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<studentProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Sqflite Database")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16), // Added padding for better layout
        child: Column(
          children: [
            TextField(
              controller: provider.nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                border: OutlineInputBorder(), // Added border for better UI
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            SizedBox(height: 16), // Added spacing
            TextField(
              controller: provider.emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(), // Added border for better UI
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              keyboardType: TextInputType.emailAddress, // Better keyboard for email
            ),
            SizedBox(height: 16), // Added spacing
            ElevatedButton(
              onPressed: () {
                provider.addStudent(context);
                // Clear the text fields after adding
                provider.nameController.clear();
                provider.emailController.clear();
              },
              child: Text("Add Student"),
            ),
            SizedBox(height: 24), // Added spacing
            Text(
              "Student List",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16), // Added spacing
            SizedBox(
              height: 340,
              child: Consumer<studentProvider>(
                builder: (context, value, child) {
                  if (value.students.isEmpty) {
                    return Center(
                      child: Text(
                        "No Data found",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: value.students.length,
                      itemBuilder: (context, index) {
                        var student = value.students[index];
                        return Card( // Wrapped in Card for better UI
                          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: ListTile(
                            title: Text(
                              student["name"] ?? "No Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              student["email"] ?? "No Email", // FIXED: Changed to email
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            trailing: IconButton( // Added delete option
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Add delete functionality here
                                _showDeleteDialog(context, student["id"], value);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellow[100], // Softer yellow
    );
  }

  // Optional: Add delete confirmation dialog
  void _showDeleteDialog(BuildContext context, int id, studentProvider provider) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Student"),
          content: Text("Are you sure you want to delete this student?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                // Add your delete logic here
                // provider.deleteStudent(id, context);
                Navigator.of(context).pop();
              },
              child: Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}