import 'package:audition_app/src/feature/authentication/controller/authentication_controller.dart';
import 'package:audition_app/src/feature/dashboard/controller/dashboard_controller.dart';
import 'package:audition_app/src/reels/controller/reels_screen_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => ReelsScreenController());
  }
}
