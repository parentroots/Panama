import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/file_scan_screen.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/student_loading_screen.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import 'package:new_untitled/utils/extensions/extension.dart';

import '../../../../../../component/curved_background_widget/curved_background_widget.dart';
import '../../../../../../config/route/app_routes.dart';
import '../../../../../../utils/constants/app_colors.dart';

class StudentInformationUploadScreen extends StatefulWidget {
  const StudentInformationUploadScreen({super.key});

  @override
  State<StudentInformationUploadScreen> createState() =>
      _StudentInformationUploadScreenState();
}

class _StudentInformationUploadScreenState
    extends State<StudentInformationUploadScreen> {

  Future<void> onTapFileUpLoadButton() async {
    Get.to(StudentFileScanScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () => Get.back(),
        ),
      ),

      // 🚀 Body scrollable to avoid overflow
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Column(
          children: [

            // Top Curved Widget
            CommonCurvedWidget(
              height: 120.h,
              text: AppString.register,
              imageSource: AppImages.appLogo,
              textColor: AppColors.commonTextColor,
            ),

            SizedBox(height: 40.h),

            // Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 69.w),
              child: CommonText(
                text: 'Student Information',
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),

            SizedBox(height: 40.h),

            // University Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: CommonButton(
                onTap: () => Get.toNamed(AppRoutes.fileScanScreen),
                borderColor: AppColors.buttonBorderColor,
                buttonWidth: double.infinity,
                buttonHeight: 53.h,
                titleSize: 17.sp,
                titleText: 'University',
                buttonColor: AppColors.white,
                titleColor: Color(0xff878A90),
              ),
            ),

            SizedBox(height: 30.h),

            // Current Year Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: CommonButton(
                onTap: () => Get.toNamed(AppRoutes.fileScanScreen),
                borderColor: AppColors.buttonBorderColor,
                buttonWidth: double.infinity,
                buttonHeight: 53.h,
                titleSize: 17.sp,
                titleText: 'Current year',
                buttonColor: AppColors.white,
                titleColor: Color(0xff878A90),
              ),
            ),

            SizedBox(height: 60.h),

            // Upload Title
            CommonText(
              text: 'Student ID or Enrollment Proof',
              color: Color(0xff2E5089),
              fontSize: 16.sp,
            ),

            SizedBox(height: 18.h),

            // Upload Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.w),
              child: InkWell(
                onTap: onTapFileUpLoadButton,
                child: Container(
                  height: 53.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.r),
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.buttonBorderColor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.file_upload_outlined, color: Color(0xff878A90)),
                      SizedBox(width: 10.w),
                      CommonText(
                        text: 'Upload file',
                        color: Color(0xff878A90),
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.h),
          ],
        ),
      ),

      // 🚀 Bottom Button — Always visible, no overflow
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all( 52.h),
        child: CommonButton(
          onTap: () => Get.to(StudentPaymentLoadingScreen()),
          buttonHeight: 53.h,
          buttonWidth: 336.w,
          titleText: AppString.continues,
        ),
      ),
    );
  }
}
