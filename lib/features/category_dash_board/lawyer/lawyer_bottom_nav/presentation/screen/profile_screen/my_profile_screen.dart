import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/expert_details_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/expert_directory_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/lawyer_profile_edit_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/rating_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeBottomCurvedAppBar(
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 4),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            SizedBox(height: 25.h,),

            Row(children: [
              
              SvgPicture.asset(AppImages.bottomPerson),
              SizedBox(width: 10,),
              CommonText(text: "My Professional Profile",color: Color(0xff2E5089),)

            ],),


            SizedBox(height: 32.h,),


            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(ExpertDirectoryScreen());
                  },
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(AppImages.carlos), // Change
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mario Núñez",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail,size: 15,color: Color(0xff2E5089),),
                        SizedBox(width: 10,),
                        Text("mario@gmail.com",style: TextStyle(
                          color: Color(0xff2E5089),
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.call,size: 15,color: Color(0xff2E5089),),
                        SizedBox(width: 10,),
                        Text("mario@gmail.com",style: TextStyle(
                          color: Color(0xff2E5089),
                        ),),
                      ],
                    ),
                  ],
                )
              ],
            ),

            SizedBox(height: 33.h),

            _card("Description",
                "Lawyer with 8 years of experience in labor and civil law.",(){

                  Get.to(ExpertDetailsScreen());
                }),

            SizedBox(height: 10),

            _card("Work area", "Panama City, Panama",() {
              Get.to(RatingScreen());
            }
            ),

            SizedBox(height: 16.h),
            
           

            _card("Punctuation", "⭐ 4.8",(){
              
              Get.to(RatingScreen());
            }),
               Spacer(),

            // Edit button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 27.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff16253E),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                  ),
                  onPressed: () {
                    Get.to(LawyerProfileEditScreen());
                  },
                  child: const Text(
                    "Edit profile",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Card Widget
  Widget _card(String title, String value,VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.w),
        child: Container(
          width: double.maxFinite,
          height: 119,
          padding:  EdgeInsets.all(15.w),
          decoration: BoxDecoration(
            color: Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(39),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(color: Colors.black54, fontSize: 13)),
              const SizedBox(height: 5),
              Text(value,
                  style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
