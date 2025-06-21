import 'package:crud_in_provider/authentication_provider.dart';
import 'package:crud_in_provider/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<RegisterProvider>(context,listen:false );

    return Scaffold(
        appBar: AppBar(
          title: Text('register',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle:true,leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginDemo(),))
            ),

          ],
        ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.blueGrey)),
                          child: Image.asset('assets/images/sunflower.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: provider.firstNameController,

                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter some text';
                          }
                          return null;
                        }),


                        decoration: InputDecoration(

                            hintText: 'Enter first Name',
                            labelText: 'first named',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.green,
                            ),
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: provider.lastNameController,
                        validator: (value) {
                          if(value==null || value.isEmpty){
                            return 'Please fill last name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter last Name',
                            labelText: 'Last named',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: provider.emailController,
                        validator: (value) {
                          if(value==null || value.isEmpty){
                            return 'Please fill Email';
                          }if(!value.contains('@') || !value.contains('.com')){
                            return 'Email is Invalid';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.lightBlue,
                            ),
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: provider.passwordController,
                        validator: (value) {
                          if(value==null || value.isEmpty){
                            return 'Please fill Email';
                          }if(value.length!=6){
                            return 'Password must be 6 digits';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'password',
                            labelText: ' entre your password',
                            prefixIcon: Icon(
                              Icons.paste_sharp,
                              color: Colors.lightBlue,
                            ),
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: provider.mobileController,
                        validator: (value) {
                          if(value==null || value.isEmpty){
                            return 'Please fill mobile no';
                          }if(value.length==6){
                            return 'Password must be 10 digits';
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                            hintText: 'Mobile',
                            labelText: 'Mobile',
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                BorderRadius.all(Radius.circular(9)))),
                      ),
                    ),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  provider.registerUser(context);
                                }
                              },
                              style: ElevatedButton.styleFrom(

                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(30),
                                ), backgroundColor: Colors.blue, // बटन का रंग
                              ),

                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.white, fontSize: 22),
                              ),
                            ),
                          ),
                        )),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            'Or Sign Up Using',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 90),
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                  'assets/google.png',
                                  fit: BoxFit.cover,
                                )),
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/vishal.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                'assets/google.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}