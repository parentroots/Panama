import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/chat_bot_screen/lawyer_ask_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/chat_bot_screen/lawyer_chat_bot_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../home/lawyer_home_screen.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class LawyerChatBotCategoryScreen extends StatefulWidget {
  const LawyerChatBotCategoryScreen({super.key});

  @override
  State<LawyerChatBotCategoryScreen> createState() => _LawyerChatBotCategoryScreenState();
}

class _LawyerChatBotCategoryScreenState extends State<LawyerChatBotCategoryScreen> {


  Future<void>onTapQuestionButton()async{
    Get.to(LawyerAskScreen());

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(LawyerHomeScreen()),
        onBackPressed: ()=>Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                "What would you like to\nask about today?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff233B69),
                ),
              ),
          
              const SizedBox(height: 50),
          
              // Button 1
              _optionButton(
                Icons: AppImages.paper,
                text: "Labor Procedure",
                onTap: () {
          
                  Get.to(LawyerChatBotScreen());
          
                },
              ),
          
              const SizedBox(height: 20),
          
              // Button 2
              _optionButton(
                Icons: AppImages.friends,
                text: "Family Problem",
                onTap: () {
                  Get.to(LawyerChatBotScreen());
                },
              ),
          
              const SizedBox(height: 20),
          
              // Button 3
              _optionButton(
                Icons: AppImages.bag,
                text: "Criminal Matter",
                onTap: () {
                  Get.to(LawyerChatBotScreen());
                },
              ),
          
              const SizedBox(height: 20),
          
              // Button 4
              _optionButton(
                Icons: AppImages.property,
                text: "Properties",
                onTap: () {
                  Get.to(LawyerChatBotScreen());
                },
              ),
          
              const SizedBox(height: 35),
          
              // Another Question Button
              InkWell(
                onTap: onTapQuestionButton,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.w),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff395886),
                    ),
                    child: Center(
                      child: Text(
                        "My question is another",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // Bottom Text
              Text(
                "Contact a specialist lawyer",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Option Button
  Widget _optionButton({
    required String Icons,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 52.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: const Color(0xff16253E),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Icons),
                SizedBox(width: 12.w),
                Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.commonTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
