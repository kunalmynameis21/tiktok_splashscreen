import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_task_pro.dart';


class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  void initState() {
    super.initState();
    // Load tasks when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TaskProvider>(context, listen: false).getTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context,listen: false);
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Form
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Add New Task',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: provider.taskName,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.title),
                      ),
                      onChanged: (value) =>
                          Provider.of<TaskProvider>(context, listen: false)
                              .setName(value),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: provider.taskDescription,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.description),
                      ),
                      maxLines: 3,
                      onChanged: (value) =>
                          Provider.of<TaskProvider>(context, listen: false)
                              .setDescription(value),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: provider.taskStatus,
                      decoration: InputDecoration(
                        labelText: 'Status',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.star),
                        hintText: 'e.g., Pending, In Progress, Completed',
                      ),
                      onChanged: (value) =>
                          Provider.of<TaskProvider>(context, listen: false)
                              .setStatus(value),
                    ),
                    SizedBox(height: 16),
                    Consumer<TaskProvider>(
                      builder: (context, provider, child) {
                        return ElevatedButton(
                          onPressed: () async{
                           await provider.addTask();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Task added successfully!'),
                              ),
                            );
                          },
                          child: Text('Add Task'),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Task List
            Expanded(
              child: Consumer<TaskProvider>(
                builder: (context, provider, child) {
                  if (provider.tasks.isEmpty) {
                    return Center(
                      child: Text(
                        'No tasks yet. Add some tasks!',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: provider.tasks.length,
                    itemBuilder: (context, index) {
                      final task = provider.tasks[index];
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          title: Text(
                            task['name'] ?? 'No Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(task['description'] ?? 'No Description'),
                              SizedBox(height: 5),
                              Chip(
                                label: Text(
                                  task['status'] ?? 'No Status',
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.blue,
                              ),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  provider.loadTaskForEditing(task);
                                  _showEditDialog(context, task['id']);
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  _showDeleteDialog(context, task['id']);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, int taskId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: SingleChildScrollView(
            child: Consumer<TaskProvider>(
              builder: (context, provider, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(text: provider.name),
                      onChanged: (value) => provider.setName(value),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(),
                      ),
                      controller:
                      TextEditingController(text: provider.description),
                      maxLines: 3,
                      onChanged: (value) => provider.setDescription(value),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Status',
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(text: provider.status),
                      onChanged: (value) => provider.setStatus(value),
                    ),
                  ],
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskProvider>(context, listen: false)
                    .updateTask(taskId);
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Task updated successfully!'),
                  ),
                );
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, int taskId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete this task?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskProvider>(context, listen: false)
                    .deleteTask(taskId);
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Task deleted successfully!'),
                  ),
                );
              },
              child: Text('Delete', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}