import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider_crud_task/address%20model.dart';

class Addressprovider with ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressContrller = TextEditingController();

  var addressList = <AddressModel>[];

  insertAddress() {
    addressList.add(
      AddressModel(
        nameController.text.toString(),
        phoneController.text.length,
        emailController.text.toString(),
        addressContrller.text.toString(),
      ),
    );notifyListeners();
  }


  updateAddress(int index) {
    if (nameController.text.isEmpty &&
    phoneController.text.isEmpty &&
    emailController.text.isEmpty &&
        addressContrller.text.isEmpty

    ){
      addressList[index]=AddressModel(
      nameController.toString(),
      phoneController.toString()as int,
      emailController.toString(),
      addressContrller.toString(),
    );
notifyListeners();
    }
  }

  void deleteAddress(int index) {
   addressList.remove(index);
   notifyListeners();// Notify listeners about the change
    }
    void delitedata(){
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    addressContrller.clear();
  }
}

class AddressModel {
  final String name;
  final String email;
  final int phone;
  final String address;

  AddressModel(this.name, this.phone, this.email,this.address);
}
