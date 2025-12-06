import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

import '../../../../../component/curved_background_widget/curved_background_widget.dart';
import '../../../../../config/route/app_routes.dart';
import '../../../../../utils/constants/app_colors.dart';

class ExpertInformationUploadScreen extends StatefulWidget {
  const ExpertInformationUploadScreen({super.key});

  @override
  State<ExpertInformationUploadScreen> createState() =>
      _ExpertInformationUploadScreenState();
}

class _ExpertInformationUploadScreenState
    extends State<ExpertInformationUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 100,
            text: AppString.register,

            imageSource: AppImages.profile,
            textColor: AppColors.commonTextColor,
          ),

          SizedBox(height: 40),

          CommonText(
            text: AppString.expertInformation,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          SizedBox(height: 20),
          CommonText(
            text: AppString.identityDocument,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),

          40.height,

          CommonButton(
            onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
            borderColor: AppColors.buttonBorderColor,
            buttonWidth: 380,
            buttonHeight: 53,
            titleText: 'Upload File',
            buttonColor: AppColors.white,
            titleColor: AppColors.secondary,
          ),

          SizedBox(height: 30),

          CommonButton(
            borderColor: AppColors.buttonBorderColor,
            buttonWidth: 380,
            buttonHeight: 53,
            titleText: AppString.technicalSpeciality,
            buttonColor: AppColors.white,
            titleColor: AppColors.secondary,
          ),

          Spacer(),

          CommonButton(
            onTap:  () => Get.toNamed(AppRoutes.bill_plan_screen),
            buttonHeight: 53,
            buttonWidth: 336,
            titleText: AppString.continues,
          ),

          SizedBox(height: 40),






        ],
      ),
    );
  }
}
