import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double height;
  final Color? backgroundColor;


   CommonAppBar({
    super.key,
    this.title,
    this.height = kToolbarHeight,
    this.backgroundColor=AppColors.color10,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.color9.withOpacity(0.4),
      toolbarHeight: height,

      title: title != null ? Text(title!) : null,

    );
  }

  @override
  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}
