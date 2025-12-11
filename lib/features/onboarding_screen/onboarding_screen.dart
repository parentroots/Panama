import 'package:flutter/material.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/features/auth/sign%20in/presentation/screen/sign_in_screen.dart';
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

      backgroundColor: AppColors.backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onBoardingImage),
            fit: BoxFit.cover,   // Full screen fill
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                223.height,
                const Center(
                  child: CommonImage(imageSrc: AppImages.appLogo, size: 70),
                ),

                60.height,

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 69),
                  child: Column(
                    children: [
                      CommonText(
                        text: 'Your legal connection ',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.commonButtonBorderColor,
                        ),
                      ),

                      CommonText(
                        text: 'In Panama',
                        fontSize: 24,
                        color: AppColors.commonButtonBorderColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),

                80.height,

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 49.w),
                  child: CommonButton(
                    buttonRadius: 26,
                    buttonHeight: 53,
                    borderColor: AppColors.commonButtonBorderColor,
                    borderWidth: 1,
                    buttonColor: AppColors.commonAppColor,
                    titleText: AppString.signIn,
                    titleColor: AppColors.commonTextColor,
                    onTap: () => Get.to(SignInScreen()),
                  ),
                ),

                24.height,

                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 49.w),
                  child: CommonButton(
                    buttonRadius: 26,
                    buttonHeight: 53,
                    titleColor: AppColors.commonTextColor,
                    borderColor: AppColors.commonButtonBorderColor,
                    borderWidth: 1,
                    buttonColor: AppColors.commonAppColor,
                    titleText: AppString.signUp,
                    onTap: () => Get.toNamed(AppRoutes.signUpWithCategoryScreen),
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
