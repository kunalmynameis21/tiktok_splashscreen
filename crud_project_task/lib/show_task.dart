import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crud_project_task/textfield_provider.dart'; // your provider import

class ShowTask extends StatefulWidget {
  const ShowTask({super.key});

  @override
  State<ShowTask> createState() => _ShowTaskState();
}

class _ShowTaskState extends State<ShowTask> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar:
          AppBar(title: Text("Show Task")),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Divider(thickness: 2),
                Expanded(
                  child: ListView.builder(
                    itemCount: provider.userData.length,
                    itemBuilder: (context, index) {
                      var item = provider.userData[index];
                      return Card(
                        child: ListTile(
                          title: Text(item.name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description: ${item.discreaption}"),
                              Text("Status: ${item.status}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
