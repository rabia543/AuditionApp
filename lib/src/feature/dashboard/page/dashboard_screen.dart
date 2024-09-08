import 'package:audition_app/src/feature/dashboard/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/common-componenets/common_bottom_button.dart';
import '../../../../theme/app_colors.dart';
import '../../../reels/page/reels_screen.dart';
import '../../home/page/home_screen.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({super.key});

  final List<Widget> _screens = [
    ReelsScreen(),
    HomeScreen(),
    const Text("Middle Screen"),
    const Text("Chat Screen"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5,
      body: SafeArea(child: Obx(() {
        return _screens[controller.selected.value];
      })),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: AppColors.color9.withOpacity(0.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonBottomButton(toolTip: "Reels", screenNo: 1, icon: Icons.person, title: "Reels"),
            CommonBottomButton(toolTip: "Downloads", screenNo: 2, icon: Icons.download, title: "Download"),
            CommonBottomButton(
                toolTip: "training", screenNo: 3, icon: Icons.video_collection_outlined, title: "training"),
            CommonBottomButton(toolTip: "Application", screenNo: 4, icon: Icons.contact_page, title: "Application"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.onChangeScreens(0);
        },
        shape: const CircleBorder(),
        backgroundColor: AppColors.color5,
        child: Icon(Icons.video_camera_back_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
