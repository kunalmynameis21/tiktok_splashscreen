import 'package:flutter/material.dart';
import 'package:post_api_selftest/getApi/CartProvider.dart';
import 'package:post_api_selftest/post_cart_api/postApi_provider.dart';
import 'package:provider/provider.dart';
class PostApipage extends StatefulWidget {
  const PostApipage({super.key});

  @override
  State<PostApipage> createState() => _PostApipageState();
}

class _PostApipageState extends State<PostApipage> {
@override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Provider.of<PostApiProvider>(context ,listen: false).getPostApi(context);
  //
  // }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<PostApiProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("PostApipage"),),
      body:Column(children: [
        // TextField(
        //   controller: provider.idController,
        //   decoration: InputDecoration( hintText: "Entre id"),
        // ),SizedBox(height: 20,),
        TextField(
          controller: provider.userIdController,decoration: InputDecoration( hintText: "Entre User id"),
        ),ElevatedButton(onPressed: () {
          provider.getPostApi(context);
        }, child: Text("postApi")),
      ],)
    );
  }
}
