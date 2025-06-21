import 'package:crud_project_task/textfield_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("MainTabScreen"),),
      body: PageView(
        controller: provider.pageController,
        onPageChanged: provider.nextScreen,
        children: provider.screen
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add,color: Colors.yellow,),label: "Add task"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.table_badge_more,color: Colors.blue,),label: "Task List "),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled_solid,color: Colors.black12,),label: "Add task")
      ],currentIndex: provider.onSelected,
        onTap: provider.nextScreen,
      ),
    );
  }
}
