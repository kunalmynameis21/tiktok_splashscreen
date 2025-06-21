import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UpdateField extends StatefulWidget {
  const UpdateField({super.key});

  @override
  State<UpdateField> createState() => _UpdateFieldState();
}

class _UpdateFieldState extends State<UpdateField> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Update_Field"),),
      body: Column(children: [
        SizedBox(height: 20,),
        TextField(style: TextStyle(fontWeight: FontWeight.bold),decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: BorderSide(width: 12),),hintText: "entre any title",labelText: "put_title"),keyboardType: TextInputType.emailAddress,),

        SizedBox(height: 20,),
        TextField(style: TextStyle(fontWeight: FontWeight.bold),decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: BorderSide(width: 12),),hintText: "entre any price",labelText: "put price"),keyboardType: TextInputType.emailAddress,)

      ],),
    );
  }
}
