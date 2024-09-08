import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class AuthenticationController extends GetxController{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final phoneRegex = RegExp(r'^\d{10}$'); // Adjust based on your format
  final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#&*~]).{8,}$');

  String error="";
    String isValidate() {
      if (!emailRegex.hasMatch(emailController.text)) {
        error = 'Enter a correct email address.';
      } else if (!phoneRegex.hasMatch(phoneController.text)) {
        error = 'Enter a correct phone number.';
      } else if (!passwordRegex.hasMatch(passwordController.text)) {
        error = 'Password must be at least 8 characters, include an uppercase letter, number, and special character.';
      }

     return error;// Validation passed
    }

}