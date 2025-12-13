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

class ExpertBilPlanScreen extends StatefulWidget {
  const ExpertBilPlanScreen({super.key});

  @override
  State<ExpertBilPlanScreen> createState() => _ExpertBilPlanScreenState();
}

class _ExpertBilPlanScreenState extends State<ExpertBilPlanScreen> {
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
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 100,
            text: "",
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
                      text: AppString.expertBillPlan,
                      color: AppColors.commonTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 67.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      textAlign: TextAlign.center,
                      AppString
                          .accessevaluationrequestschatwithlawyersandtheprofessionaldirectory,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),

                  SizedBox(height: 40),

                  PricingCard(
                    title: 'Profesional Expert',
                    price: "\$5.00",
                    subtitle: "+ ITBMS per month",
                  ),

                  SizedBox(height: 80.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52),
                    child: CommonButton(
                      onTap: () => Get.toNamed(AppRoutes.payment_method_screen),
                      titleText: AppString.selectPaymentMethod,
                      buttonHeight: 53,
                    ),
                  ),

                  SizedBox(height: 82.h,)


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
