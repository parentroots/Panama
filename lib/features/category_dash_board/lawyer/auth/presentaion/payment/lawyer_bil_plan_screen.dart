import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/pricing_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../../../component/app_bar/common_app_bar.dart';

class LawyerBilPlanScreen extends StatefulWidget {
  const LawyerBilPlanScreen({super.key});

  @override
  State<LawyerBilPlanScreen> createState() => _LawyerBilPlanScreenState();
}

class _LawyerBilPlanScreenState extends State<LawyerBilPlanScreen> {
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
              height: 100,
              text: "",
              imageSource: AppImages.appLogo,
              textColor: AppColors.commonTextColor,
            ),
        
            SizedBox(height: 34.h),
        
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 69),
                  child: CommonText(
                    text: 'Legal Categories',
                    color: AppColors.commonTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 83.h),
            

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.w),
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
                            "Civil",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            
                SizedBox(height: 26.h),
            
                CommonText(
                  textAlign: TextAlign.center,
                  text:
                      'The monthly cost adjusts based on the categories you select',
                  fontSize: 12,
                ),
            
                SizedBox(height: 80.h),
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonText(
                      text: '+ITBMS',
                      color: AppColors.nameTextColor,
                      fontSize: 18.sp,
                    ),
                    CommonText(
                      text: 'Total Monthly',
                      color: AppColors.black,
                      fontSize: 18.sp,
                    ),
                  ],
                ),
            
                SizedBox(height: 25.h),
            
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.w),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.buttonBorderColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$ 00.00",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            
                SizedBox(height: 41.h),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: CommonButton(
                    onTap: () => Get.toNamed(AppRoutes.lawyer_payment_method_screen),
                    titleText: AppString.selectPaymentMethod,
                    buttonHeight: 53,
                  ),
                ),

                SizedBox(height: 82.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
