import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/auth/presentaion/payment/citizen_bil_plan_screen.dart';
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

          SizedBox(height: 74.h),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 69),
            child: CommonText(
              text: 'Citizen Information',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 40.h),


          18.height,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            child: Container(
              height: 53,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(26),
                border: Border.all(
                  width: 1,
                  color: Colors.black
                )


              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CommonButton(
                      onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
                      borderColor: Colors.transparent,
                      buttonWidth: 100,
                      buttonHeight: 53,
                      titleSize: 17,
                      titleWeight: FontWeight.w400,
                      titleText: 'Residential Aria',
                      buttonColor: AppColors.white,
                      titleColor: AppColors.secondary,
                    ),
                  ),



                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Color(0xff2E5089),
                      child: Icon(Icons.arrow_drop_up,color: Colors.white,)),
                  SizedBox(width: 15.w,),


                ],
              ),
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            child: CommonButton(
              onTap:  () => Get.toNamed(AppRoutes.fileScanScreen),
              borderColor: AppColors.buttonBorderColor,
              buttonWidth: 380,
              buttonHeight: 53,
              titleSize: 17,
              titleWeight: FontWeight.w400,
              titleText: 'Extract Address',
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
              titleSize: 17,
              titleWeight: FontWeight.w400,
              titleText: 'Date of Birth',
              buttonColor: AppColors.white,
              titleColor: AppColors.secondary,
            ),
          ),

          Spacer(),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 52),
            child: CommonButton(
              onTap:  () => Get.to(CitizenBilPlanScreen()),
              buttonHeight: 53,
              buttonWidth: 336,
              titleText: AppString.continues,
            ),
          ),

          SizedBox(height: 82.h),






        ],
      ),
    );
  }
}
