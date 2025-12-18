import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/pricing_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/citizen/auth/presentaion/payment/citizen_payment_method_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../../../component/app_bar/common_app_bar.dart';

class CitizenBilPlanScreen extends StatefulWidget {
  const CitizenBilPlanScreen({super.key});

  @override
  State<CitizenBilPlanScreen> createState() => _CitizenBilPlanScreenState();
}

class _CitizenBilPlanScreenState extends State<CitizenBilPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 100,
            text: "Citizen Subscription",
            imageSource: AppImages.appLogo,
            textColor: AppColors.commonTextColor,
          ),

          SizedBox(height: 34.h),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 69),
                    child: CommonText(
                      text: "Citizen bill plan",
                      color:Color(0xff16253E),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 67.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Access basic legal advice and chat with lawyers starting at',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),

                  SizedBox(height: 40),

                  PricingCard(
                    title: 'Profesional Expert',
                    price: "\$5.00",
                    subtitle: "+ ITBMS per month",
                  ),

                  SizedBox(height: 58.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52),
                    child: CommonButton(
                      onTap: () => Get.to(CitizenPaymentMethodScreen()),
                      titleText: AppString.selectPaymentMethod,
                      buttonHeight: 53,
                      titleSize: 14,
                      titleWeight: FontWeight.w400,
                    ),
                  ),


                  SizedBox(height: 14.h,),
                  
                  CommonText(
                    
                    color: Color(0xff16253E),
                    text: 'View plan benefits',fontSize: 12,fontWeight: FontWeight.w400,)
     


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
