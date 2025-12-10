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

class LawyerInformationUploadScreen extends StatefulWidget {
  const LawyerInformationUploadScreen({super.key});

  @override
  State<LawyerInformationUploadScreen> createState() =>
      _LawyerInformationUploadScreenState();
}

class _LawyerInformationUploadScreenState
    extends State<LawyerInformationUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                text: 'Lawyer Information',
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
        
            SizedBox(height: 40.h),
        
            // Work Area Input
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 52.w),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.buttonBorderColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Work Area",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 170.h),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 69),
              child: CommonText(
                text: "Identity Number",
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
        
            SizedBox(height: 18),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.r),
                  border: Border.all(color: AppColors.buttonBorderColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.file_upload_outlined, color: Colors.black54),
                    const SizedBox(width: 8),
                    CommonText(
                      text: 'Upload File',
                      color: AppColors.secondary,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
            ),
        
            SizedBox(height: 30),
        
            // Suitability Certificate Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 69),
              child: CommonText(
                text: "Suitability Certificate",
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
        
            SizedBox(height: 18),
        


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: InkWell(
                onTap: () => Get.toNamed(AppRoutes.fileScanScreen),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.buttonBorderColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.file_upload_outlined, color: Colors.black54),
                      const SizedBox(width: 8),
                      CommonText(
                        text: 'Upload File',
                        color: AppColors.secondary,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 60),


            Center(
              child: CommonButton(
                onTap: () => Get.toNamed(AppRoutes.lawyerBill_plan_screen),
                buttonHeight: 53,
                buttonWidth: 336,
                titleText: "Continue",
              ),
            ),
        
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
