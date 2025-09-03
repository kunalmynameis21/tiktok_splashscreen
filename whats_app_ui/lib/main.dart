import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: WhatsAppPage());
  }
}

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({super.key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 160),
                child: Text(
                  "WhatApp",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
              ),
              Icon(CupertinoIcons.qrcode_viewfinder),
              SizedBox(width: 15),
              Icon(CupertinoIcons.camera),
              SizedBox(width: 15),
              Icon(Icons.more_vert_outlined),


            ],
          ),
        ],

        backgroundColor: Colors.white12,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 10),
            SearchBar(hintText: "ask Meta Ai or Search",
              controller: TextEditingController(text: "ask Meta Ai or Search"),),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/Tiktok.png"),
              ),
              title: Text("Santi kumari"),
              subtitle: Text("7288762974"),
              trailing: Text("3:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/man.png"),
              ),
              title: Text("Sujit kumar "),
              subtitle: Text("751828352"),
              trailing: Text("2:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                AssetImage("assert/images/girl-power.png"),
              ),
              title: Text("Anamika kumari"),
              subtitle: Text("751903828"),
              trailing: Text("7:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                AssetImage("assert/images/boy.png"),
              ),
              title: Text("kunal kumar"),
              subtitle: Text("7277987636"),
              trailing: Text("12:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/bussiness-man.png"),
              ),
              title: Text("Umaesh kumar Gupta"),
              subtitle: Text("8434234234"),
              trailing: Text("11:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/girl-power.png"),
              ),
              title: Text("tina kumari"),
              subtitle: Text("Busy with things that matter, like Netflis"),
              trailing: Text("10:00pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/male.png"),
              ),
              title: Text("Laxmi kumari "),
              subtitle: Text("I’m always busy, but I’m lazy as wel"),
              trailing: Text("2:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/office-worker.png"),
              ),
              title: Text("Ravi kumar singh"),
              subtitle: Text("Always on the move, busy with appointments"),
              trailing: Text("10:20pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/photo.png"),
              ),
              title: Text("shubham kr "),
              subtitle: Text("Scheduled appointments and meetings keeping me busy"),
              trailing: Text("1:20pm"),
            ),

            ListTile(
              leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("assert/images/picture.png"),),
              title: Text("prashant kumar singh"),
              subtitle: Text("8788787877"),
              trailing: Text("11:20pm"),
            ),ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assert/images/photo.png"),
              ),
              title: Text("ramesh kr "),
              subtitle: Text("Scheduled appointments and meetings keeping me busy"),
              trailing: Text("3:20pm"),
            ),

            ListTile(
              leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("assert/images/picture.png"),),
              title: Text("sanjit kumar singh"),
              subtitle: Text("88578354"),
              trailing: Text("10:20pm"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.commute), label: 'Communites'),
          BottomNavigationBarItem( icon:  Icon(Icons.call), label: 'Calls'),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },child: Icon(Icons.add),),
    );
  }
}
