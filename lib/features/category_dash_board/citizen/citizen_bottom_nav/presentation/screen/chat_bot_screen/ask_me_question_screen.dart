import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/lawyer_founded_loading_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../../student/student_bottom_nav/student_bottom_nav_screen.dart';

class AskMeQuestionScreen extends StatefulWidget {
  const AskMeQuestionScreen({super.key});

  @override
  State<AskMeQuestionScreen> createState() => _AskMeQuestionScreenState();
}

class _AskMeQuestionScreenState extends State<AskMeQuestionScreen> {
  final TextEditingController questionController = TextEditingController();

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔵 Title
              Text(
                "Write your question here?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2E5089),
                ),
              ),

              SizedBox(height: 20),

              // 🟦 Large TextField Box
              Container(
                padding: EdgeInsets.all(15),
                height: 314,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextField(
                  controller: questionController,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Write your question here...",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 29),

              // 🔘 Send Button
              Center(
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 53.h),
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff2E5089),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Send",
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

              SizedBox(height: 28),

              // Description Text
              Center(
                child: Text(
                  "We offer a pre-programmed response based on your\n"
                      "query. We suggest you contact a specialist lawyer.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff2E5089),
                  ),
                ),
              ),

              SizedBox(height: 17),

              // 🔘 Contact Lawyer Button
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 53.h),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff121C3E),
                      borderRadius: BorderRadius.circular(26.r),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(LawyerFoundedLoadinScreen());
                      },
                      child: Text(
                        "Contact a lawyer",
                        style: TextStyle(
                          color: Color(0xffF6EFD9),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
