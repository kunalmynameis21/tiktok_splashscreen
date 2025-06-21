import 'package:flutter/material.dart';

import 'get_api_dataHelper.dart';
class GetApiScreen extends StatefulWidget {
  const GetApiScreen({super.key});


  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}


class _GetApiScreenState extends State<GetApiScreen> {

  List<dynamic>data=[];
  @override

  void initState() {
    var dataStore=GetApiDatahelper.getapiData;


    // TODO: implement initState
    super.initState();
    get
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("GetApiScreen"),),
      body: ListView.builder(itemCount itemBuilder: itemBuilder),

    );
  }
}
