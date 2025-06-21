import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AddressProvider.dart';

class CrudOpration extends StatefulWidget {
  const CrudOpration({super.key});

  @override
  State<CrudOpration> createState() => _CrudOprationState();
}

class _CrudOprationState extends State<CrudOpration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AddressProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Crud Operation")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                provider.clearControllers(); // Clear previous input if any
                return AlertDialog(
                  title: const Text("Add Data"),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: provider.nameController,
                          decoration: const InputDecoration(
                            labelText: "Enter your name",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Name is required';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: provider.emailController,
                          decoration: const InputDecoration(
                            labelText: "Enter your email",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: provider.phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            labelText: "Enter your phone number",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone number is required';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: provider.passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Enter your password",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              provider.insertAddress();
                              Navigator.pop(context);
                            }
                          },
                          child: const Text("Add Data"),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: Consumer<AddressProvider>(
          builder: (context, value, child) {
            if (value.addressList.isEmpty) {
              return const Center(child: Text("No Data Available"));
            }
            return ListView.builder(
              itemCount: value.addressList.length,
              itemBuilder: (context, index) {
                final data = value.addressList[index];
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.email),
                      Text(data.password),

                      Text(data.name),
                      Text(data.phone.toString()),
                      // Ensure phone is a String
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Pre-fill fields with existing data
                          provider.phoneController.text = data.phone.toString();
                          provider.nameController.text = data.name;
                          provider.emailController.text = data.email;
                          provider.passwordController.text=data.phone;
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Edit Address"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      controller: provider.nameController,
                                      decoration: const InputDecoration(
                                        labelText: "Name",
                                      ),
                                    ),
                                    TextFormField(
                                      controller: provider.emailController,
                                      decoration: const InputDecoration(
                                        labelText: "Email",
                                      ),
                                    ),
                                    TextFormField(
                                      controller: provider.phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: const InputDecoration(
                                        labelText: "Phone Number",
                                      ),
                                    ),
                                    TextFormField(
                                      controller: provider.passwordController,
                                      decoration: const InputDecoration(
                                        labelText: "password",
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        provider.updateAddress(index);
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Update"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Text("Edit"),
                      ),
                      IconButton(
                        onPressed: () {
                          provider.deleteAddress(index);
                        },
                        icon: const Icon(CupertinoIcons.delete),
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
  }
}