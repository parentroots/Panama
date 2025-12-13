import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/student_information_upload_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../../../config/route/app_routes.dart';

class StudentSignUpScreen extends StatefulWidget {
  const StudentSignUpScreen({super.key});

  @override
  State<StudentSignUpScreen> createState() => _StudentSignUpScreenState();
}

class _StudentSignUpScreenState extends State<StudentSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60.0.h),
      child: CommonAppBar(
        leadingIcon: AppImages.back, onTap: () {
          Get.back();
      },
      )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonCurvedWidget(
              height: 120,
              text: AppString.register,
              imageSource: AppImages.appLogo,
              textColor: AppColors.commonTextColor,
            ),
            SizedBox(height: 30.h,),
        
            SingleChildScrollView(
              child: Column(
                children: [
                  
                  
                    
              
              SizedBox(
                height: 53,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 50.w),
                  child: CommonTextField(
                    hintText:AppString.fullName,
                    borderColor: AppColors.textFieldBorderColor,
                    borderRadius: 26,
                    fillColor: AppColors.white,
                  ),
                ),
              ),
              
              SizedBox(height: 33,),
              
              SizedBox(
                height: 53,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: CommonTextField(
                    hintText:AppString.email,
                    borderColor: AppColors.textFieldBorderColor,
                    borderRadius: 26,
                    fillColor: AppColors.white,
                  ),
                ),
              ),



                  SizedBox(height: 33,),
              
              SizedBox(
                height: 53,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: CommonTextField(
                    hintText:AppString.phoneNumber,
                    borderColor: AppColors.textFieldBorderColor,
                    borderRadius: 26,
                    fillColor: AppColors.white,
                  ),
                ),
              ),

                  SizedBox(height: 33,),
              
              SizedBox(
                height: 53,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: CommonTextField(
                    hintText:AppString.password,
                    borderColor: AppColors.textFieldBorderColor,
                    borderRadius: 26,
                    fillColor: AppColors.white,
                  ),
                ),
              ),


                  SizedBox(height: 33,),
              
              SizedBox(
                height: 53,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: CommonTextField(
                    hintText:AppString.confirmPassword,
                    borderColor: AppColors.textFieldBorderColor,
                    borderRadius: 26,
                    fillColor: AppColors.white,
                  ),
                ),
              ),

                  SizedBox(height: 49.h),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 52.w),
                child: CommonButton(
                onTap:  () => Get.to(StudentInformationUploadScreen()),
                 titleText: AppString.continues,buttonHeight: 53,buttonWidth: 336,
                borderColor: AppColors.commonButtonBorderColor,
                buttonRadius: 24,),
              ),

                  SizedBox(height: 90.h,)
              
              
                ],
              ),
            )
        
        
        
          ],
        ),
      ),
    );
  }
}
