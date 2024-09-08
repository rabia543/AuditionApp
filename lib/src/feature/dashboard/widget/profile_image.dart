import 'package:flutter/material.dart';

import '../../../../core/const/asset_const.dart';
import '../../../../theme/app_colors.dart';
import 'dart:io';
class ProfileImage extends StatelessWidget {
  final File? file; // File from the Dart `dart:io` package
  final String defaultImagePath;
  final double? width;
  final double? height;
  ProfileImage({
    Key? key,
    this.file,
    this.width=60,
    this.height=60,
    required this.defaultImagePath
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.color1, // Define your border color
            width: 2.0,
          ),
          shape: BoxShape.circle,
        ),
        child: file != null
            ? Image.file(
          file!,
          fit: BoxFit.cover, // Adjust fit as needed
        )
            : Image.asset(
          defaultImagePath,
          fit: BoxFit.cover, // Adjust fit as needed
        ),
      ),
    );
  }
}
