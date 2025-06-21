import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_data_address extends StatefulWidget {
  const Add_data_address({super.key});

  @override
  State<Add_data_address> createState() => _Add_data_addressState();
}

class _Add_data_addressState extends State<Add_data_address> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: Text("Add_data_address"),
      centerTitle: true,
      leading: Icon(Icons.more_vert,color: Colors.red,),
      backgroundColor: Colors.yellow,),
      body: SingleChildScrollView(child: Column(children: [
        TextFormField(controller: TextEditingController(),
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
            label: Text("Entre your name"),
            labelText: "apna nam likho",
            hintStyle: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.yellow),
        ),
        ),SizedBox(height: 20,),
        TextFormField(controller: TextEditingController(),
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
            label: Text("Entre your Email"),
            labelText: "apna Email likho",
            hintStyle: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.yellow),
          ),
        ),SizedBox(height: 20,),
        TextFormField(controller: TextEditingController(),
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
            label: Text("Entre your phone no "),
            labelText: "apna phone no  likho",
            hintStyle: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.yellow),
          ),
        ),


      ],
      ),

      ),
    )
    );
  }
}
