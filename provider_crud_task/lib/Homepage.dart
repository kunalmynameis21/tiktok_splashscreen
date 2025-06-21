import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_crud_task/edit_addressprovider.dart';

import 'add data address.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Addressprovider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            provider.delitedata();

            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Address"),
                  content: Column(
                    children: [
                      TextFormField(
                        controller: provider.nameController,
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        controller: provider.emailController,
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        controller: provider.phoneController,
                        decoration: InputDecoration(labelText: 'Phone'),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          provider.insertAddress();
                          Navigator.pop(context);

                          // Navigator.pop(context);
                        },
                        child: Text("ADD DATA"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Icon(Icons.icecream),
        ),
        appBar: AppBar(backgroundColor: Colors.cyan, title: Text("Home Page")),
        body: Consumer<Addressprovider>(
          builder: (context, valu, child) {
            return
            ListView.builder(
              itemCount: valu.addressList.length,
              itemBuilder: (context, index) {
                if (valu.addressList.isEmpty) {
                  return Text("NO DATA");
                }
                var data = valu.addressList[index];
                return ListTile(
                  title: Column(
                    children: [
                      Text(data.name),
                      Text(data.phone as String),
                      Text(data.email),
                      Text(data.address),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          provider.delitedata();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Edit Address"),
                                content: Column(
                                  children: [
                                    TextFormField(
                                      controller: provider.phoneController,
                                    ),
                                    TextFormField(
                                      controller: provider.nameController,
                                    ),
                                    TextFormField(
                                      controller: provider.emailController,
                                    ),
                                    TextFormField(
                                      controller: provider.addressContrller,
                                    ),
                                    SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        provider.updateAddress(index);
                                        Navigator.pop(context);
                                      },
                                      child: Text("UPDATE NOW"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text("Edit Data"),
                      ),
                      IconButton(
                        onPressed: () {
                          provider.deleteAddress(index);
                        },
                        icon: Icon(CupertinoIcons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
    // var provider=Provider.of<Addressprovider>(context,listen: false);
  }
}
