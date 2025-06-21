import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Buttompage extends StatefulWidget {
  const Buttompage({super.key});

  @override
  State<Buttompage> createState() => _ButtompageState();
}

class _ButtompageState extends State<Buttompage> {
  File? image;

  Future pickImageFromGallery() async {
    try {
      final pickedImage =
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage == null) return;

      final tempImage = File(pickedImage.path);
      setState(() => image = tempImage);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future pickImageFromCamera() async {
    try {
      final pickedImage =
      await ImagePicker().pickImage(source: ImageSource.camera);
      if (pickedImage == null) return;

      final tempImage = File(pickedImage.path);
      setState(() => image = tempImage);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: Container(
        height: 490,width: double.infinity,
        color: Colors.yellow,
        child: Column(
          children: [
            Spacer(),
            FlutterLogo(size: 100),
            SizedBox(height: 30),
            Text("Image Picker"),
            SizedBox(height: 20),
            image != null
                ? Image.file(
              image!,
              width: 160,
              height: 150,
              fit: BoxFit.cover,
            )
                : CircleAvatar(
              radius: 60,
              backgroundColor: Colors.black,
              child: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 120,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickImageFromCamera,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.camera_alt),
                  SizedBox(width: 12),
                  Text("Pick from Camera"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: pickImageFromGallery,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(CupertinoIcons.photo),
                  SizedBox(width: 12),
                  Text("Pick from Gallery"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
