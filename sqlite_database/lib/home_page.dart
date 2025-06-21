
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sqlite_database/student_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override



  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Provider.of<studentProvider>(context, listen: false).getStudent();
    });
  }


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<studentProvider>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              height: 250,
              color: Colors.yellow,
              child: Column(
                children: [
                  Spacer(),
                  FlutterLogo(size: 160,),
                  SizedBox(height: 60,),
                  Text("Image Picker"),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    child: Icon(CupertinoIcons.profile_circled,color: Colors.white,size: 120,)
                  ),
                  ElevatedButton(
                    onPressed: () {


                    },
                    child: Row(children: [Icon(Icons.enhance_photo_translate_outlined),SizedBox(width: 12,),Text("Pick from camera ")],),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero))

                  ),
                  ElevatedButton(onPressed: () {


                  },
                   child:Row(children: [Icon(CupertinoIcons.photo,),SizedBox(width: 12,),Text("Pick image from gallery")],),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,))
                  )
                ],
              ),
            ),

            Column(
              children: [
                TextField(
                  controller: provider.nameController,
                  decoration: InputDecoration(hintText: "Entre your name"),
                ),
                TextField(
                  controller: provider.emailController,
                  decoration: InputDecoration(hintText: "Entre your email"),
                ),
                ElevatedButton(
                  onPressed: () {
                    provider.addStudent();
                  },
                  child: Text("Add student"),
                ),
                SizedBox(
                  height: 400,
                  child: Consumer<studentProvider>(
                    builder: (context, value, child) {
                      if (value.students.isEmpty) {
                        return Text(" THERE IS NO DATA");
                      }
                      return ListView.builder(
                        itemCount: value.students.length,
                        itemBuilder: (context, index) {
                          var student = value.students[index];
                          return ListTile(
                            title: Text("Name: ${student["name"]}"),
                            subtitle: Text("Email: ${student["email"]}"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    provider.nameController.text =
                                        "${student["name"]}";
                                    provider.emailController.text =
                                        "${student["email"]}";
                                    provider.studentid = student["id"];
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Update data"),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextField(
                                                controller:
                                                    provider.nameController,
                                                decoration: InputDecoration(
                                                  hintText: "Edit Name",
                                                ),
                                              ),
                                              TextField(
                                                controller:
                                                    provider.emailController,
                                                decoration: InputDecoration(
                                                  hintText: "Edit Email",
                                                ),
                                              ),
                                              // ElevatedButton(
                                              //   onPressed: () {
                                              //     provider.updateStudent(student["id"]);
                                              //     Navigator.pop(context);
                                              //   },
                                              //   child: Text("Update Now"),
                                              // ),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Cancel"),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                provider.updateStudent(
                                                  student["id"],
                                                );
                                                Navigator.pop(context);
                                              },
                                              child: Text("update data"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.update),
                                ),
                                IconButton(
                                  onPressed: () {
                                    provider.deleteStudent(student["id"]);
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
