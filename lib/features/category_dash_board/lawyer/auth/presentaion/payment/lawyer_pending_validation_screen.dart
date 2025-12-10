import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../config/route/app_routes.dart';

class LawyerPendingValidationScreen extends StatefulWidget {
  const LawyerPendingValidationScreen({super.key});

  @override
  State<LawyerPendingValidationScreen> createState() =>
      _LawyerPendingValidationScreenState();
}

class _LawyerPendingValidationScreenState
    extends State<LawyerPendingValidationScreen> {

  Future<void>onTapHomeButon()async{

    Get.toNamed(AppRoutes.lawyerHomeScreen);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.writeBook),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 55.w),
              child: CommonText(
                textAlign: TextAlign.center,
                text: 'Your documents are being validated by',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.secondPrimaryTextColor,
              ),
            ),
            CommonText(
              text: 'the legal team',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.blueColor,
            ),


            SizedBox(height: 70.h,),

            CommonText(text: 'We will notify you by email when it is approved.'),

            SizedBox(height: 80.h,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: CommonButton(
                 onTap: onTapHomeButon,

                  titleText: 'Go T Home'),
            ),

            SizedBox(height: 13.h,),
            CommonText(text: 'We are not responsible for forged documents.',fontSize: 9,)




          ],
        ),
      ),
    );
  }
}
