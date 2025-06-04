import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen());
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyScreenPage());
  }
}

class MyScreenPage extends StatefulWidget {
  const MyScreenPage({super.key});

  @override
  State<MyScreenPage> createState() => _MyScreenPageState();
}

class _MyScreenPageState extends State<MyScreenPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        actions: [
          PopupMenuButton(itemBuilder: (context)=> [
            PopupMenuItem(child: Text("data"),),

    ]

          )
        ],

      ),

      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 900.0),
              child: PopupMenuButton(itemBuilder: (context)=> [


                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.add),
                    Text("data1")
                  ],
                )),
                PopupMenuItem(child: Text("data1")),
                PopupMenuItem(child: Text("data1")),
                PopupMenuItem(child: Text("data1")),
                PopupMenuItem(child: Text("data1")),



                        ]


                        ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.icecream)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(),

            ),IconButton(onPressed: (){}, icon: Icon(Icons.icecream)),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(decoration: InputDecoration(hintText: "entre name"),),

            ),
            Container(width: 20,height: 20,decoration: BoxDecoration(color: Colors.yellow),child: Column(children: [
              TextField(decoration: InputDecoration(hintText: "ENTRE NAME"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(330)))),)
            ],),)


    ],
    ),);
  }

}
