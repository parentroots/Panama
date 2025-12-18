import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/home_screen_app_bar.dart';
import 'package:new_untitled/component/home_card/home_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/cases/citizen_cases_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/citizen_chat_bot_category_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/citizen_chat_bot_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/important_articles_screen/citizen_important_articles_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/library_screen/citizen_library_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/profile_screen/citizen_profile_screen.dart';
import 'package:new_untitled/features/profile/presentation/screen/profile_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../config/route/app_routes.dart';
import '../../../auth/sign in/presentation/screen/sign_in_screen.dart';

class CitizenHomeScreen extends StatelessWidget {
  const CitizenHomeScreen({super.key});

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
                        InkWell(
                          onTap:Get.back,
                            child: Image.asset(AppImages.back, color: Colors.black)),
                        SizedBox(width: 10.h),
                        InkWell(
                            onTap: ()=>Get.offAll(SignInScreen()),
                            child: Image.asset(AppImages.appBarHome)),
                      ],
                    ),
                  ),
                  SizedBox(width: 100.w),

                  Image.asset(AppImages.appLogo, height: 50.h, width: 50.h,color: Color(0xff2E5089),),
                  SizedBox(width: 120.w),
                  Image.asset(AppImages.language),
                ],
              ),
            ),

            CommonText(
              text: 'Hello Carlos',
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: AppColors.nameTextColor,
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
                       Get.to(CitizenChatBotCategoryScreen());
                    },),
                    SizedBox(width: 20,),
                    HomeCard(boxColor: AppColors.card2, text: "Cases", image: AppImages.casesFile, onTap: () {
                      Get.to(CitizenCasesScreen());
                    },)
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      HomeCard(boxColor: AppColors.card3, text: "Important articles", image: AppImages.book2, onTap: () {
                        Get.to(CitizenImportantArticlesScreen());
                      },),
                      SizedBox(width: 20,),
                      HomeCard(boxColor: AppColors.card4, text: "Profile", image: AppImages.person, onTap: () {
                        Get.to(CitizenProfileScreen());
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
