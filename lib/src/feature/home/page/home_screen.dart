import 'package:audition_app/core/const/route_const.dart';
import 'package:audition_app/src/feature/dashboard/widget/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const/asset_const.dart';
import '../../../../theme/app_colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  child:  ProfileImage(defaultImagePath: AssetConst.images.person,),
                  onTap: (){
                       Get.toNamed(RouteConst.profileScreen);
                  },),
              Icon(Icons.search)
          ],),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Number of blocks in each row
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2 / 3, // Aspect ratio for each block
              ),
              itemCount: 10, // Adjust the number of blocks you want
              itemBuilder: (context, index) {
                return Container(
                  color: AppColors.color6,
                  child: Center(
                    child: Text(
                      'Reel ${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),
        ],),
      )

    );
  }
}
