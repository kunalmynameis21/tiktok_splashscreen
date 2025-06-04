import 'package:flutter/material.dart';
import 'package:navigation/ProductScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var namecontraoller = TextEditingController();
  var EMAILcontraoller = TextEditingController();
  var Passwordcontraoller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder:
                  (context) => [
                    PopupMenuItem(value: "NEWGROUP", child: Text("NEWGROUP")),
                    PopupMenuItem(child: Text("NEWGROUP")),
                  ],
              onSelected: (value) {
                print(value);
                if (value == "NEWGROUP") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Productscreen()),
                  );
                }
              },
            ),
          ],
        ),
        




        body: Column(
          children: [
            TextField(
              controller: namecontraoller,
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            TextField(
              controller: EMAILcontraoller,
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            TextField(
              controller: Passwordcontraoller,
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => Productscreen(
                            name: namecontraoller.text,
                            email: EMAILcontraoller.text,
                            password: Passwordcontraoller.text,
                          ),
                    ),
                  );
                },
                child: Text("Go To Product Screen"),
              ),
              

            ),

            SizedBox(height: 20,), 
            ElevatedButton(onPressed: () {
            }, child: Text("SHOWbtn"))
            

          ],
        ),

        
      ),
    );
  }
}
