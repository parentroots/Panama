import 'package:flutter/material.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import '../../../../config/route/app_routes.dart';
import '../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../utils/constants/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/image/common_image.dart';
import '../../component/text/common_text.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("onBoarding"),),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            180.height,
            const Center(
              child: CommonImage(imageSrc: AppImages.noImage, size: 70),
            ),

            120.height,

            CommonText(text: 'Your legal connection in Panamá',style: TextStyle(
              fontSize: 24,
              color: AppColors.commonButtonBorderColor
            ),),

            80.height,

            CommonButton(
              buttonRadius: 26,
              buttonHeight: 53,
              buttonWidth: 336,
              borderColor: AppColors.commonButtonBorderColor,borderWidth: 1,
              buttonColor: AppColors.commonButtonColor,
              titleText: AppString.signIn,
              titleColor: AppColors.commonTextColor,
              onTap: () => Get.toNamed(AppRoutes.signIn),
            ),

            24.height,

            CommonButton(
              buttonRadius: 26,
              buttonHeight: 53,
              buttonWidth: 336,
              titleColor: AppColors.commonTextColor,
              borderColor: AppColors.commonButtonBorderColor,borderWidth: 1,
              buttonColor: AppColors.commonButtonColor,
              titleText: AppString.signUp,
              onTap: () => Get.toNamed(AppRoutes.signUpWithCategoryScreen),
            ),
          ],
        ),
      ),
    );
  }
}
