import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/home_screen_app_bar.dart';
import 'package:new_untitled/component/home_card/home_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../config/route/app_routes.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Container(
              height: 100.h,
              width: double.maxFinite,
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(AppImages.back, color: Colors.black),
                        SizedBox(width: 10.h),
                        Image.asset(AppImages.appBarHome),
                      ],
                    ),
                  ),
                  SizedBox(width: 120.h),

                  Image.asset(AppImages.appLogo, height: 50.h, width: 50.h),
                  SizedBox(width: 130.h),
                  Image.asset(AppImages.language),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.w),
              child: CommonText(
                text: 'Hello Carlos',
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: AppColors.nameTextColor,
              ),
            ),

            SizedBox(height: 45.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  text: 'Welcome To Panamas ',
                  fontSize: 18,
                  color: AppColors.nameTextColor,
                ),
                CommonText(
                  text: ' Number',
                  fontSize: 24,
                  color: AppColors.nameTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),

            CommonText(
              text: ' 1 legal platform.',
              fontSize: 24,
              color: AppColors.nameTextColor,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(height: 15.h,),
            
            
            Image.asset(AppImages.scaleBalencing),

            SizedBox(height: 10,),


            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    HomeCard(boxColor: AppColors.card1, text: "Chatbot", image: AppImages.bot, onTap: () {
                       Get.toNamed(AppRoutes.expertChatBotScreen);
                    },),
                    SizedBox(width: 20,),
                    HomeCard(boxColor: AppColors.card2, text: "Library", image: AppImages.library, onTap: () {
                      Get.toNamed(AppRoutes.expertLibraryScreen);
                    },)
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      HomeCard(boxColor: AppColors.card3, text: "Important articles", image: AppImages.book2, onTap: () {
                        Get.toNamed(AppRoutes.expertImportantArticlesScreen);
                      },),
                      SizedBox(width: 20,),
                      HomeCard(boxColor: AppColors.card4, text: "Profile", image: AppImages.person, onTap: () {
                        Get.toNamed(AppRoutes.expertProfileScreen);
                      },)
                    ],),
                ),
              ],
            ),



            SizedBox(height: 88.h,)




          ],
        ),
      ),
    );
  }
}
