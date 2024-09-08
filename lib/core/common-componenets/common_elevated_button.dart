import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
class CommonElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CommonElevatedButton({
    super.key,
    required this.onPressed,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.color10, // Background color
      ),
      onPressed:onPressed,
      child: Text(text,style: TextStyle(color: Colors.white),),
    );
  }
}
