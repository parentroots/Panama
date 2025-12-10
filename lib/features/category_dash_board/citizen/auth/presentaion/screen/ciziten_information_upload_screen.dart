import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

import '../../../../../../component/curved_background_widget/curved_background_widget.dart';
import '../../../../../../config/route/app_routes.dart';
import '../../../../../../utils/constants/app_colors.dart';

class CitizenInformationUploadScreen extends StatefulWidget {
  const CitizenInformationUploadScreen({super.key});

  @override
  State<CitizenInformationUploadScreen> createState() =>
      _CitizenInformationUploadScreenState();
}

class _CitizenInformationUploadScreenState
    extends State<CitizenInformationUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: CommonAppBar(
        leadingIcon: AppImages.back, onTap: () {
          Get.back();
      },
      )),
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 120,
            text: AppString.register,

            imageSource: AppImages.appLogo,
            textColor: AppColors.commonTextColor,
          ),

          SizedBox(height: 40.h),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 69),
            child: CommonText(
              text: 'Citizen Information',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 135.w),
            child: CommonText(
              text: AppString.identityDocument,
              fontWeight: FontWeight.w700,
              fontSize: 17,
            ),
          ),

          18.height,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            child: CommonButton(
              onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
              borderColor: AppColors.buttonBorderColor,
              buttonWidth: 380,
              buttonHeight: 53,
              titleText: 'Upload File',
              buttonColor: AppColors.white,
              titleColor: AppColors.secondary,
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: CommonButton(
              borderColor: AppColors.buttonBorderColor,
              buttonHeight: 53,
              titleText: AppString.technicalSpeciality,
              buttonColor: AppColors.white,
              titleColor: AppColors.secondary,
            ),
          ),

          Spacer(),

          CommonButton(
            onTap:  () => Get.toNamed(AppRoutes.bill_plan_screen),
            buttonHeight: 53,
            buttonWidth: 336,
            titleText: AppString.continues,
          ),

          SizedBox(height: 60.h),






        ],
      ),
    );
  }
}
