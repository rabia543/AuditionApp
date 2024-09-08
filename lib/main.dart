import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:audition_app/core/const/asset_const.dart';
import 'package:audition_app/src/feature/authentication/widgets/sign_up_screen.dart';
import 'package:audition_app/theme/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/base/auth_binding.dart';
import 'core/base/route_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: AuthBinding(),
      getPages: RoutesBinding.getPageBindings(),
      home: FlutterSplashScreen.gif(
        gifPath: AssetConst.gifs.splashGif,
        gifWidth: 269,
        gifHeight: 474,
        nextScreen: SignUpScreen(),
        duration: const Duration(milliseconds: 4100),
        backgroundColor: AppColors.color5,
      ),
    );
  }
}
