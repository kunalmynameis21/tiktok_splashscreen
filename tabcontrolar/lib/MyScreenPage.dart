import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myscreenpage extends StatefulWidget {
  const Myscreenpage({super.key});

  @override
  State<Myscreenpage> createState() => _MyscreenpageState();
}

class _MyscreenpageState extends State<Myscreenpage> {
  List<String> datatype = [
    "Buy Birthday gift for sarah",
    "Renew gym membership",
    "Plan weekend trip",
    "Read a new book",
    "yesterday going to park ",
    "today market buy iphone",
  ];
  // List<String> myStringList = ['Item 1', 'Item 2', 'Item 3'];
  var title=TextEditingController();

  var oncheck = false;

  void addData(){
    datatype.add(title.text);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 118.0),
                  child: Text(
                    "Task Follow",
                    style: TextStyle(fontSize: 20, color: Colors.white10),
                  ),
                ),
                Text(
                  "Organise Your life With Beautiful List",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Tab(text: "Pesronal "),
                ),
                Tab(text: "Work"),
                Tab(text: "Shoping"),
                Tab(text: "Idea"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height: 200,
                color: Colors.white10,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 218.0),
                      child: Text(
                        "Pesonal Task",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 18.0,
                              top: 17,
                            ),
                            child: TextField(controller: title,
                              decoration: InputDecoration(
                                hintText: "Entre something",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15, width: 20),
                        ElevatedButton(
                          onPressed: () {
                            addData();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 8.0,
                              top: 5,
                              bottom: 6,
                            ),
                            child: Text("Add",style: TextStyle(color: Colors.red),),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 500,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: datatype.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Color(0xfff0f9ff),
                            child: ListTile(
                              title: Text(datatype[index]),
                              trailing: IconButton(
                                icon: Icon(CupertinoIcons.delete),
                                onPressed: () {
                                  setState(() {
                                    datatype.removeAt(index);
                                  });
                                },
                              ),

                              leading: Checkbox(
                                value: oncheck,
                                onChanged: (value) {
                                  if (value != null) {
                                    oncheck = value;
                                    setState(() {});
                                  }
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
              Container(color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
