import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../../config/route/app_routes.dart';

class ExpertSignUpScreen extends StatefulWidget {
  const ExpertSignUpScreen({super.key});

  @override
  State<ExpertSignUpScreen> createState() => _ExpertSignUpScreenState();
}

class _ExpertSignUpScreenState extends State<ExpertSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.commonButtonColor),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 120,
            text: AppString.register,
            imageSource: AppImages.profile,
            textColor: AppColors.commonTextColor,
          ),
          SizedBox(height: 30,),

          SingleChildScrollView(
            child: Column(
              children: [
                
                
                  
            
            SizedBox(
              height: 53,
              width: 336,
              child: CommonTextField(
                hintText:AppString.fullName,
                borderColor: AppColors.textFieldBorderColor,
                borderRadius: 26,
                fillColor: AppColors.white,
              ),
            ),
            
            SizedBox(height: 20,),
            
            SizedBox(
              height: 53,
              width: 336,
              child: CommonTextField(
                hintText:AppString.email,
                borderColor: AppColors.textFieldBorderColor,
                borderRadius: 26,
                fillColor: AppColors.white,
              ),
            ),
            
            
            
            SizedBox(height: 20,),
            
            SizedBox(
              height: 53,
              width: 336,
              child: CommonTextField(
                hintText:AppString.phoneNumber,
                borderColor: AppColors.textFieldBorderColor,
                borderRadius: 26,
                fillColor: AppColors.white,
              ),
            ),
            
            SizedBox(height: 20,),
            
            SizedBox(
              height: 53,
              width: 336,
              child: CommonTextField(
                hintText:AppString.password,
                borderColor: AppColors.textFieldBorderColor,
                borderRadius: 26,
                fillColor: AppColors.white,
              ),
            ),
            
            
            
            SizedBox(height: 20,),
            
            SizedBox(
              height: 53,
              width: 336,
              child: CommonTextField(
                hintText:AppString.confirmPassword,
                borderColor: AppColors.textFieldBorderColor,
                borderRadius: 26,
                fillColor: AppColors.white,
              ),
            ),
            
            SizedBox(height: 40,),
            
            CommonButton(
              onTap:  () => Get.toNamed(AppRoutes.expertInformationUploadScreen),
              titleText: AppString.continues,buttonHeight: 53,buttonWidth: 336,
            borderColor: AppColors.commonButtonBorderColor,
            buttonRadius: 24,)
            
            
              ],
            ),
          )



        ],
      ),
    );
  }
}
