import 'package:flutter/material.dart';

import 'api_helper_class.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
 List<dynamic>adddata=[];

  @override
  void initState() {
    super.initState();
    ApiHelperClass.getApiData().then((value) {
      if (value != null) {

        adddata.addAll(value);
        setState(() {

        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomepageScreen"),backgroundColor: Colors.green,),

      body: ListView.builder(
        itemCount: adddata.length,

        itemBuilder: (context, index) {
          var ind=adddata[index];
        return ListTile(
          title: Column(
            children: [
              Text("${index}")
            ],
          ),
        );
      },)
    );
  }
}
