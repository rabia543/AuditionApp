import 'package:audition_app/src/feature/dashboard/controller/dashboard_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'CommonIconButton.dart';
class CommonBottomButton extends GetView<DashboardController>{
  final String toolTip;
  final int screenNo;
  final IconData icon;
  final String title;

  const CommonBottomButton({super.key,
    required this.toolTip,
    required this.screenNo,
    required this.icon,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CommonIconButton(
            onPressed: () {
              controller.onChangeScreens(screenNo);
            },
              icon: icon
          ),
        ),
        const SizedBox(height: 15,),
        Expanded(child: Text(title,))
      ],
    );
  }
}