import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/student/home/student_home_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../config/route/app_routes.dart';

class StudentPendingValidationScreen extends StatefulWidget {
  const StudentPendingValidationScreen({super.key});

  @override
  State<StudentPendingValidationScreen> createState() =>
      _StudentPendingValidationScreenState();
}

class _StudentPendingValidationScreenState
    extends State<StudentPendingValidationScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Future.delayed(Duration(seconds: 2), () {
  //     Get.toNamed(AppRoutes.expertHomeScreen);
  //   });
  // }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 72.h,
              width: 72.w,
              child: Image.asset(AppImages.hammer),
            ),

            SizedBox(height: 42.h),
            CommonText(
              text: 'Your account is',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff2E5089),
            ),
            CommonText(
              text: 'under review',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff3D95FB),
            ),

            SizedBox(height: 35.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 71),
              child: CommonText(
                fontSize: 17,
                text:
                    'You will receive an email once your student registration is confirmed.',

                overflow: TextOverflow.visible,
                color: Color(0xff000000),
                maxLines: 2,
              ),
            ),

            SizedBox(height: 119.h),

            CommonButton(

              onTap:()=> Get.to(StudentHomeScreen()),
                titleText: 'Go To Home'),
          ],
        ),
      ),
    );
  }
}
