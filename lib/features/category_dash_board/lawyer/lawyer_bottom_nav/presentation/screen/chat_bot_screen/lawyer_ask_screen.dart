import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class LawyerAskScreen extends StatelessWidget {
  const LawyerAskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(LawyerHomeScreen()),
        onBackPressed: ()=>Get.back(),
        height: 140.h,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            
            SizedBox(height: 56,),
            Align(
              alignment: Alignment.center,
                child: CommonText(
                  fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    text: 'Write your question here?')),
        
        
            SizedBox(height: 22.h,),
        
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 51),
              child: Container(
                height: 310.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.r),
                  border: Border.all(
                    color: Color(0xffD9D9D9)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                  child: Expanded(
                    child: SizedBox(
                      height: 350.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Write your question here...',
                          hintStyle: TextStyle(
                            fontSize: 17.sp
                          ),
                          border: InputBorder.none
                          )
                        ),
                    ),
                  ),
                ),
        
                ),
              ),

            SizedBox(height: 29.h,),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 53.w),
              child: CommonButton(
                titleSize: 17,
                  titleWeight: FontWeight.w400,
                  buttonColor: Color(0xff2E5089),
                  titleText: 'Send'),
            ),

            SizedBox(height: 29.h,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 60.w),
              child: CommonText(
                textAlign: TextAlign.center,
                text:
                'We offer a pre-programmed response based on your query. We suggest you contact a specialist lawyer.',
                fontSize: 12,
                maxLines: 2,         // important
                overflow: TextOverflow.visible, // important
              ),
            ),



            SizedBox(height: 17.h,),


            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 53.w),
              child: CommonButton(
                titleSize: 17,
                  titleWeight: FontWeight.w400,
                  titleText: 'Contact a Lawyer'),
            ),


          ],
        ),
      ),
    );
  }
}
