import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/citizen_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/ask_me_question_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/citizen_chat_bot_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/chat_bot_screen/lawyer_ask_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/chat_bot_screen/lawyer_chat_bot_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../lawyer/lawyer_bottom_nav/lawyer_bottom_nav_screen.dart';

class OtherQuestionAskScreen extends StatefulWidget {
  const OtherQuestionAskScreen({super.key});

  @override
  State<OtherQuestionAskScreen> createState() => _OtherQuestionAskScreenState();
}

class _OtherQuestionAskScreenState extends State<OtherQuestionAskScreen> {


  Future<void>onTapQuestionButton()async{
    Get.to(LawyerAskScreen());

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                "What kind of work-related issue do you want to ask about?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff233B69),
                ),
              ),

              const SizedBox(height: 50),


              _optionButton(
                text: "Unfair dismissal",
                onTap: () {

                  Get.to(CitizenChatBotScreen());

                },
              ),

              const SizedBox(height: 20),

              // Button 2
              _optionButton(
                text: "settlement",
                onTap: () {
                  Get.to(CitizenChatBotScreen());
                },
              ),

              const SizedBox(height: 20),

              // Button 3
              _optionButton(
                text: "Workplace harassment",
                onTap: () {
                  Get.to(CitizenChatBotScreen());
                },
              ),

              const SizedBox(height: 20),

              // Button 4
              _optionButton(
                text: "Voluntary resignation",
                onTap: () {
                  Get.to(CitizenChatBotScreen());
                },
              ),

              const SizedBox(height: 35),

              // Another Question Button
              Row(
                children: [

                  InkWell(
                    onTap: Get.back,
                    child: Container(
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.commonButtonBorderColor
                        ),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff395886),
                      ),
                      child: Center(
                        child: Text(
                          "back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  10.width,


                  InkWell(
                    onTap: ()=>Get.to(AskMeQuestionScreen()),
                    child: Container(
                      height: 55,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.commonButtonBorderColor
                        ),
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff395886),
                      ),
                      child: Center(
                        child: Text(
                          "Make Inquiry",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
