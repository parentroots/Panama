import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/image/common_image.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/citizen/home/citizen_home_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/home/expert_home_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/home/lawyer_home_screen.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/student_information_upload_screen.dart';
import 'package:new_untitled/features/category_dash_board/student/home/student_home_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

class LoginWithCategoryScreen extends StatefulWidget {
  const LoginWithCategoryScreen({super.key});

  @override
  State<LoginWithCategoryScreen> createState() =>
      _LoginWithCategoryScreenState();
}

class _LoginWithCategoryScreenState extends State<LoginWithCategoryScreen> {



  Future<void>goToStudentInformationUploadScreen()async{
    Get.to(StudentInformationUploadScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonAppColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onBoardingImage),
            fit: BoxFit.cover,   // Full screen fill
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap:Get.back,
                        child: Image.asset(AppImages.back)),
                  ],
                ),
              ),
              SizedBox(height: 50),

              Align(
                alignment: Alignment.center,
                child: CommonImage(imageSrc: AppImages.appLogo, size: 100),
              ),
              20.height,

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 69),
                child: CommonText(
                  text: "Sign in",
                  color: AppColors.commonTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              60.height,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonButton(
                  buttonColor: AppColors.commonAppColor,
                  onTap:  () => Get.to(CitizenHomeScreen()),
                  titleText: AppString.iAmCitizen,
                  borderColor: AppColors.commonButtonBorderColor,
                  buttonRadius: 24,
                  buttonHeight: 53,
                  titleColor: AppColors.commonTextColor,
                ),
              ),

              SizedBox(height: 33.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonButton(
                  buttonColor: AppColors.commonAppColor,
                  onTap:  () => Get.to(LawyerHomeScreen()),
                  titleText: AppString.iAmLawyer,
                  borderColor: AppColors.commonButtonBorderColor,
                  buttonRadius: 24,
                  buttonHeight: 53,
                  titleColor: AppColors.commonTextColor,
                ),
              ),

              SizedBox(height: 33.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonButton(
                  buttonColor: AppColors.commonAppColor,
                  onTap:  () => Get.to(ExpertHomeScreen()),
                  titleText: AppString.iAmExpert,
                  borderColor: AppColors.commonButtonBorderColor,
                  buttonRadius: 24,
                  buttonWidth: 336,
                  buttonHeight: 53,
                  titleColor: AppColors.commonTextColor,
                ),
              ),

              SizedBox(height: 33.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonButton(
                  onTap:  () => Get.to(StudentHomeScreen()),
                  buttonColor: AppColors.commonAppColor,
                  titleText: AppString.iAmAStudent,
                  borderColor: AppColors.commonButtonBorderColor,
                  buttonRadius: 24,
                  buttonWidth: 336,
                  buttonHeight: 53,
                  titleColor: AppColors.commonTextColor,
                ),
              ),

              SizedBox(height: 246.h),
            ],
          ),
        ),
      ),
    );
  }
}
