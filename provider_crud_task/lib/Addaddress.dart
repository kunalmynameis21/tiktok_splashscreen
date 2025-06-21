import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addaddress extends StatefulWidget {
  const Addaddress({super.key});

  @override
  State<Addaddress> createState() => _AddaddressState();
}

class _AddaddressState extends State<Addaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Icon(Icons.more_vert),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            maxLength: 8,
            style: TextStyle(color: Colors.yellow),
            controller: TextEditingController(),
            decoration: InputDecoration( hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
              hintText: "Entre your name",
              label: Icon(
                Icons.icecream,
                color: Colors.yellow,

                shadows: [BoxShadow(color: Colors.red)],
              ),
            ),
          ),TextFormField(
            maxLength: 8,
            style: TextStyle(color: Colors.yellow),
            controller: TextEditingController(),
            decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow,),
                hintText: "Entre your name",
                label: Text("Entre your name")
            ),
          ), TextFormField( keyboardType: TextInputType.emailAddress,
            maxLength: 8,
            style: TextStyle(color: Colors.black54),
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: "Entre your Email Id",
              label: Icon(
                Icons.icecream,
                color: Colors.yellow,

                shadows: [BoxShadow(color: Colors.red)],
              ),
            ),
          ),TextFormField(cursorColor: Colors.black,
            maxLength: 8,keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.orange),
            controller: TextEditingController(),
            decoration: InputDecoration(
                hintText: "Entre your phone no",
                label:Text("Using country code before add phone no"),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
            ),
          ),ElevatedButton(onPressed: () {
            
          }, child: Text("Add Address now"))

        ],
      ),
    );
  }
}
