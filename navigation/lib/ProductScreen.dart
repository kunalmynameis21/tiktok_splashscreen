import 'package:flutter/material.dart';

class Productscreen extends StatefulWidget {
  final String? name;
  final String? email;
  final String? password;
  const Productscreen({super.key,required,this.name,this.email,this.password});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Text("${widget.name}"),
          Text("${widget.email}"),
          Text("${widget.password}"),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Go Back")),
          Container(
            child: InkWell(
              onTap: (){
                
              },
              child: Center(child: Text("Go To Product Screen"),),
            ),
          )
        ],
      ),
    ));
  }
}
