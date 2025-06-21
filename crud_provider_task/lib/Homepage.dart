import 'package:crud_provider_task/user_detailsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'AddNewDetailsPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery
        .of(context)
        .size
        .width;
    double hightScreen = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Address",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 14,
          ),

        ),
        leading: Icon(CupertinoIcons.arrow_left_circle_fill),
        backgroundColor: Colors.orange,
        centerTitle: true,

        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) =>
            [
              PopupMenuItem(value: "Logout", child: Text("Logout")),
              PopupMenuItem(value: "Add New", child: Text("Add New")),
            ],
            onSelected: (value) async {
              if (value == "Logout") {
                Fluttertoast.showToast(msg: "you are logout");
              }
              if (value == "Add New") {
                final addData = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddNewDetails()),
                );
              }
              if (addData == true) {
                setState(() {});
              }
            },
          ),

        ],

      ), body: Column(children: [
        Divider(),
      Expanded(child: dataList.isEmpty
          ? Center(child: Text("Please add the DATA"),)
          : ListView.separated(itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Padding(padding: const EdgeInsets.symmetric(horizontal: 20,
              vertical: 10,), child: Container(width: widthScreen,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow), child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Expanded(child: Column(
                    children: [
                    Text((dataList[index].name),), Wrap(children: [
                Text("${dataList[index].state}, "),
                Text("${dataList[index].name}, "),
                Text("${dataList[index].number}, "),
                Text("${dataList[index].villageName}, "),
                Text("${dataList[index].pinCode}, "),
                Text("${dataList[index].street}, "),

              ],

              ), Text("Phone number:${dataList[index].number}"),
              Center(child:
              SizedBox(width: 200, height: 50,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius
                          .circular(10), side: BorderSide(width: 1),),
                  ),onPressed: ()async{
                    final result=await Navigator.push(context, MaterialPageRoute(builder: (context) => EditDetails,))

                  }


                   ),),)
              ],
            ),),
            ],
            ),),

            ),);
          }),
      )],),
    );
  }
}
