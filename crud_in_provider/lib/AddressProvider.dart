import 'package:crud_in_provider/AddressModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressProvider with ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController =
      TextEditingController(); // Corrected
  TextEditingController phoneController = TextEditingController();

  void clearControllers() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    notifyListeners();
  }

  var addressList = <AddressModel>[];

  updateAddress(int index) {
    if (nameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      addressList[index] = AddressModel(
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        password: passwordController.text.trim(),
        name: nameController.text.trim(),
      );
      clearControllers();
      notifyListeners();
    }
  }

  insertAddress() {
    addressList.add(
      AddressModel(
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        password: passwordController.text.trim(),
        name: nameController.text.trim(),
      ),
    );
    clearControllers();
    notifyListeners();
  }

  void deleteAddress(int index) {
    addressList.removeAt(index);
    notifyListeners(); // Notify listeners about the change
  }
}




