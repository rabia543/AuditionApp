import 'package:audition_app/src/feature/UserProfile/page/user_profile_screen.dart';
import 'package:audition_app/src/feature/authentication/widgets/sign_up_screen.dart';
import 'package:audition_app/src/feature/dashboard/page/dashboard_screen.dart';
import 'package:get/get.dart';

import '../../src/feature/authentication/widgets/sign_in_screen.dart';
import '../../src/reels/page/reels_screen.dart';
import '../const/route_const.dart';
import 'auth_binding.dart';

class RoutesBinding {
  static List<GetPage<dynamic>>? getPageBindings() {
    return [
      GetPage(
        name: RouteConst.signUp,
        page: () => SignUpScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: RouteConst.signIn,
        page: () => SignInScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: RouteConst.dashboard,
        page: () => DashboardScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: RouteConst.profileScreen,
        page: () => UserProfileScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: RouteConst.reelsScreen,
        page: () => ReelsScreen(),
        binding: AuthBinding(),
      ),
    ];
  }
}
