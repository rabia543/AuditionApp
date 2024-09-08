import 'package:flutter/material.dart';
class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final IconData icon;
  final String labelText;
  final bool? obscureText;
   CommonTextField({
    super.key,
    required this.controller,
  required this.inputType,
  required this.labelText,
  required this.icon,
     this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:obscureText??false,
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText:labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
