import 'package:audition_app/firebase/Sevices/AuthService/auth_service.dart';
import 'package:audition_app/src/feature/authentication/widgets/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/common-componenets/common_elevated_button.dart';
import '../../../../core/common-componenets/common_text_field.dart';
import '../../../../theme/app_colors.dart';
import '../controller/authentication_controller.dart';

class SignInScreen extends GetView<AuthenticationController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              "Sign in",
              style: TextStyle(color: AppColors.color10, fontSize: 50, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 80,
            ),
            CommonTextField(
                controller: controller.emailController,
                inputType: TextInputType.emailAddress,
                labelText: 'Email',
                icon: Icons.email),
            SizedBox(height: 16.0),
            CommonTextField(
                controller: controller.passwordController,
                obscureText: true,
                inputType: TextInputType.text,
                labelText: 'Password',
                icon: Icons.lock),
            SizedBox(height: 16.0),
            SizedBox(height: 24.0),
            CommonElevatedButton(
              text: 'sign in',
              onPressed: () async {
                await AuthService()
                    .signIn(email: controller.emailController.text, password: controller.passwordController.text);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't, sign up yet?"),
                TextButton(
                  onPressed: () async {
                    //await AuthService().signOut();
                    Get.to(() => SignUpScreen());
                  },
                  child: const Text(
                    "sign up",
                    style: TextStyle(
                      color: AppColors.color2, // Set the color of the link text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
