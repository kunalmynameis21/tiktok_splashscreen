import 'package:api_get_test2/multi_api_helper.dart';
import 'package:flutter/material.dart';

class MultiPageCsreen extends StatefulWidget {
  const MultiPageCsreen({super.key});

  @override
  State<MultiPageCsreen> createState() => _MultiPageCsreenState();
}

class _MultiPageCsreenState extends State<MultiPageCsreen> {

  Map<String,dynamic>?data;
  @override

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MultiApiHelper.getMultiApi().then((value) {
      if(value!=null){
        data=value;
        setState(() {

        });
        
      }
      
    },);
    initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MultiPageCsreen"),),
      body:Column(children: [
        Text("${data!["title"]}")
      ],),
    );
  }
}
