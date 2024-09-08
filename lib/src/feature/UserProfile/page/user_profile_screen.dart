import 'package:audition_app/core/common-componenets/common_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/const/asset_const.dart';
import '../../../../theme/app_colors.dart';
import '../../dashboard/widget/profile_image.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      backgroundColor: AppColors.color5,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft, // Aligns the text at the center of the image
            children: [
              // Image with reduced opacity
              Opacity(
                opacity: 0.5, // Set the opacity to 50%
                child: Image.asset(
                  'assets/images/img_4.png', // Replace with your image path
                  height: MediaQuery.sizeOf(context).height / 3,
                  width: MediaQuery.sizeOf(context).width, // Set desired height
                  fit: BoxFit.cover,
                ),
              ),
              // Text over the image
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileImage(
                      defaultImagePath: AssetConst.images.person,
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontSize: 24, // Text size
                        fontWeight: FontWeight.bold, // Text weight
                        shadows: [
                          Shadow(
                            blurRadius: 14.0,
                            color: Colors.white.withOpacity(0.5), // Shadow color
                            offset: Offset(2.0, 2.0), // Shadow position
                          ),
                        ],
                      ),
                    ),
                    Text(
                        "🎤 Aspiring Singer & Actor \n🎭 Bringing stories to life, one reel at a time\n🌟 Dream big, act bigger!",
                        style: TextStyle(
                            color: Colors.black, // Text color
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        // Text color
                        side: BorderSide(color: Colors.white, width: 2), // White border
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding inside the button
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          /*  Container(
        height: MediaQuery.sizeOf(context).height/3,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
      gradient: LinearGradient(
        tileMode: TileMode.repeated,
        begin: Alignment.topCenter,
        colors: [
          AppColors.color5,
          AppColors.color4.withOpacity(0.6),
          AppColors.color3.withOpacity(0.3),
          AppColors.color8.withOpacity(0.4),
        ],
      ),
    ),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ProfileImage(defaultImagePath: AssetConst.images.person,width: 100,height: 100,),
      SizedBox(height: 50,),
      Text("Maira Naveed"),
      Text("🎤 Aspiring Singer & Actor \n🎭 Bringing stories to life, one reel at a time\n🌟 Dream big, act bigger!"),
    ],)
    ),*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of blocks in each row
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
          ),
        ],
      ),
    );
  }
}
