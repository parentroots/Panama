import 'package:flutter/material.dart';
import '../../../../../../../config/route/app_routes.dart';
import '../../../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_images.dart';
import '../controller/sign_in_controller.dart';

import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_string.dart';
import '../../../../../../../utils/helpers/other_helper.dart';
import '../widgets/do_not_account.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      /// App Bar Sections Starts here
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),

      /// Body Sections Starts here
      body: GetBuilder<SignInController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  180.height,
                  const Center(
                    child: CommonImage(imageSrc: AppImages.profile, size: 70),
                  ),

                  20.height,

                  CommonText(text: 'SignIn',style: TextStyle(
                    fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.commonButtonBorderColor
                  ),),

                  14.height,

                 CommonTextField(
                   borderRadius: 26,
                   borderColor: AppColors.commonButtonBorderColor,
                   hintText: AppString.email,
                 ),

                  24.height,

                  CommonTextField(
                    borderRadius: 26,
                    fillColor: Color(0xff2E5089),
                    borderColor: AppColors.commonButtonBorderColor,
                    hintText: AppString.email,
                  ),

                  SizedBox(height: 10,),
                  CommonText(text: AppString.forgotPassword,
                    color: AppColors.commonTextColor,fontSize: 11,),

                  SizedBox(height: 80,),
                  
                  CommonButton(
                    onTap: () => Get.toNamed(AppRoutes.signInWithCategoryScreen),
                    titleText: 'Enter',
                  titleColor: AppColors.secondPrimaryTextColor,
                  buttonColor: AppColors.white,
                  borderColor: AppColors.commonButtonBorderColor,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }


}
