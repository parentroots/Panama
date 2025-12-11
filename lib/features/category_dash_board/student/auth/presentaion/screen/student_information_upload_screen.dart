import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/file_scan_screen.dart';
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


  Future<void>onTapFileUpLoadButton()async{

    Get.to(StudentFileScanScreen());
  }

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
              text: 'Student Information',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 70.h),



          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            child: CommonButton(
              onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
              borderColor: AppColors.buttonBorderColor,
              buttonWidth: 380,
              buttonHeight: 53,
              titleSize: 17,
              titleText: 'University',
              buttonColor: AppColors.white,
              titleColor:  Color(0xff878A90),
            ),
          ),

          SizedBox(height: 40.h,),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            child: CommonButton(
              onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
              borderColor: AppColors.buttonBorderColor,
              buttonWidth: 380,
              buttonHeight: 53,
              titleSize: 17,
              titleText: 'Current year',
              buttonColor: AppColors.white,
              titleColor:  Color(0xff878A90),
            ),
          ),

          SizedBox(height: 100.h),

          CommonText(text: 'Student ID or Enrollment Proof',color: Color(0xff2E5089),),

          SizedBox(height: 18.h,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: InkWell(
              onTap: onTapFileUpLoadButton,
              child: Container(
                height: 53.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.buttonBorderColor
                  )
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.file_upload_outlined,color: Color(0xff878A90),),
                    CommonText(text: 'Upload file',color: Color(0xff878A90),)
                  ],),
                ),
                // borderColor: AppColors.buttonBorderColor,
                // buttonHeight: 53,
                // titleSize: 17,
                // titleText: AppString.technicalSpeciality,
                // buttonColor: AppColors.white,
                // titleColor: AppColors.secondary,
              ),
            ),
            
          ),

          Spacer(),

          CommonButton(
            onTap:  () => Get.toNamed(AppRoutes.studentLoadingScreen),
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
