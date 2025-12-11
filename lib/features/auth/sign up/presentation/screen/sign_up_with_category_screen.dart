import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/image/common_image.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/student_information_upload_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

class SignUpWithCategoryScreen extends StatefulWidget {
  const SignUpWithCategoryScreen({super.key});

  @override
  State<SignUpWithCategoryScreen> createState() =>
      _SignUpWithCategoryScreenState();
}

class _SignUpWithCategoryScreenState extends State<SignUpWithCategoryScreen> {



  Future<void>goToStudentInformationUploadScreen()async{
    Get.to(StudentInformationUploadScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonAppColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(100.0),
      child: CommonAppBar(
        leadingIcon: AppImages.back, onTap: () {
        Get.back();
      },
      )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),

            Align(
              alignment: Alignment.center,
              child: CommonImage(imageSrc: AppImages.appLogo, size: 100),
            ),
            20.height,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 69),
              child: CommonText(
                text: AppString.howWillYouRegister,
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
                onTap:  () => Get.toNamed(AppRoutes.citizenSignUpScreen),
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
                onTap:  () => Get.toNamed(AppRoutes.lawyerSignUpScreen),
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
                onTap:  () => Get.toNamed(AppRoutes.expertSignUpScreen),
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
                onTap: goToStudentInformationUploadScreen,
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
    );
  }
}
