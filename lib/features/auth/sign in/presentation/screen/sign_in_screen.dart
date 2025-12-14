import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import 'package:new_untitled/features/auth/sign%20in/presentation/screen/login_with_category_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../config/route/app_routes.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../../../../../utils/extensions/extension.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onBoardingImage),
            fit: BoxFit.cover,   // Full screen fill
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              60.height,
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap:Get.back,
                        child: Image.asset(AppImages.back)),
                  ],
                ),
              ),
              106.height,
              const Center(
                child: CommonImage(imageSrc: AppImages.appLogo, size: 70),
              ),

              60.height,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 69),
                child: Column(
                  children: [


                    CommonText(
                      text: 'Sign In',
                      fontSize: 24,
                      color: AppColors.commonButtonBorderColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),

              80.height,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonTextField(
                  hintText: 'E-mail',
                               hintTextColor: Color(0xffE1D49F),
                               fillColor: Color(0xff16253E),
                  borderRadius: 26.h,
                ),
              ),

              40.height,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonTextField(
                  hintText: 'Password',
                  hintTextColor: Color(0xffE1D49F),
                  fillColor: Color(0xff16253E),
                  borderRadius: 26.h,
                ),
              ),


              14.height,

              CommonText(text: 'You forgot your password',fontSize: 11,fontWeight: FontWeight.w400,color: Color(0xffE1D49F),),


              SizedBox(height: 70,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: CommonButton(
                  onTap: ()=>Get.to(LoginWithCategoryScreen()),
                  titleText: 'Enter',buttonRadius: 26,buttonColor: Color(0xFFFFFFFF),titleColor: Color(0xff104B5B),titleSize: 17,),
              ),


              SizedBox(height: 223.h,)


            ],
          ),
        ),
      ),
    );
  }
}
