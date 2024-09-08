import 'package:audition_app/core/common-componenets/common_app_bar.dart';
import 'package:audition_app/core/common-componenets/common_elevated_button.dart';
import 'package:audition_app/core/common-componenets/common_text_field.dart';
import 'package:audition_app/core/const/route_const.dart';
import 'package:audition_app/firebase/Sevices/AuthService/auth_service.dart';
import 'package:audition_app/src/feature/authentication/controller/authentication_controller.dart';
import 'package:audition_app/src/feature/authentication/widgets/sign_in_screen.dart';
import 'package:audition_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignUpScreen extends GetView<AuthenticationController> {
  const SignUpScreen({super.key});

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
            Center(child: Text("Sign up",style: TextStyle(color: AppColors.color10,fontSize: 50,fontWeight: FontWeight.bold),)),
           SizedBox(height: 80,),
            CommonTextField(
                controller: controller.emailController ,
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
            CommonTextField(
                controller:controller.phoneController,
                inputType:TextInputType.phone,
                labelText: 'Phone Number',
                icon: Icons.phone),
            SizedBox(height: 24.0),

            CommonElevatedButton(text: 'Sign Up',onPressed: ()async{
             String error=controller.isValidate();
             if(error.isNotEmpty){
               Fluttertoast.showToast(
                 msg:error,
                 toastLength: Toast.LENGTH_LONG,
                 gravity: ToastGravity.BOTTOM,
                 backgroundColor: AppColors.color10,
                 textColor: Colors.white,
                 fontSize: 16.0,
               );
             }
             else{
               await AuthService().signUp(email: controller.emailController.text, password: controller.passwordController.text);
               Get.toNamed(RouteConst.signIn);
             }
            },),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to the login page
                    Get.to(() => SignInScreen());
                  },
                  child: const Text(
                    "Sign in",
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
