import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/image/common_image.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_icons.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonButtonColor,
      appBar: AppBar(
        title: Text("Sign UP with Category"),
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),

          Align(
            alignment: Alignment.center,
            child: CommonImage(imageSrc: AppImages.noImage, size: 100),
          ),
          20.height,

          CommonText(
            text: AppString.howWillYouRegister,
            color: AppColors.commonTextColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),

          60.height,

          CommonButton(
            titleText: AppString.iAmCitizen,
            borderColor: AppColors.commonButtonBorderColor,
            buttonRadius: 24,
            buttonWidth: 336,
            buttonHeight: 53,
          ),

          SizedBox(height: 25),

          CommonButton(
            titleText: AppString.iAmLawyer,
            borderColor: AppColors.commonButtonBorderColor,
            buttonRadius: 24,
            buttonWidth: 336,
            buttonHeight: 53,
          ),

          SizedBox(height: 25),

          CommonButton(
            onTap:  () => Get.toNamed(AppRoutes.expertSignUpScreen),
            titleText: AppString.iAmExpert,
            borderColor: AppColors.commonButtonBorderColor,
            buttonRadius: 24,
            buttonWidth: 336,
            buttonHeight: 53,
          ),

          SizedBox(height: 25),

          CommonButton(
            titleText: AppString.iAmAStudent,
            borderColor: AppColors.commonButtonBorderColor,
            buttonRadius: 24,
            buttonWidth: 336,
            buttonHeight: 53,
          ),

          SizedBox(height: 25),
        ],
      ),
    );
  }
}
