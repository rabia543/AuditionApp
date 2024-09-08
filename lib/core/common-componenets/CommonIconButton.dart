import 'package:flutter/material.dart';
class CommonIconButton extends StatelessWidget {

  final VoidCallback? onPressed;
  final IconData icon;
   CommonIconButton({
    super.key,
  required this.onPressed,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed:onPressed,
     // isFilled: controller.selected == screenNo.obs ? true : false,
      icon:  Icon(
        icon,
      ),
    );
  }
}
