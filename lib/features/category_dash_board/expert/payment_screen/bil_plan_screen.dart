import 'package:flutter/material.dart';
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

class BilPlanScreen extends StatefulWidget {
  const BilPlanScreen({super.key});

  @override
  State<BilPlanScreen> createState() => _BilPlanScreenState();
}

class _BilPlanScreenState extends State<BilPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Column(
        children: [

        CommonCurvedWidget(height: 100, text: "", imageSource: AppImages.profile, textColor: AppColors.commonTextColor),

        SizedBox(height: 10,),
        
     SingleChildScrollView(
       child: Column(
         children: [
       
           CommonText(text: AppString.expertBillPlan,color: AppColors.commonTextColor,fontSize: 24,fontWeight: FontWeight.w700,),
           SizedBox(height: 40,),
       
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:30),
             child: Text(
               textAlign: TextAlign.center,
               AppString.accessevaluationrequestschatwithlawyersandtheprofessionaldirectory,style: TextStyle(
               fontSize: 17,
       
       
             ),),
           ),

           SizedBox(height: 40,),

           PricingCard(title: 'Profesional Expert', price: "\$5.00", subtitle: "+ ITBMS per month"),

           SizedBox(height: 40,),
           
           
           CommonButton(
             onTap: ()=>Get.toNamed(AppRoutes.payment_method_screen),
             titleText: AppString.selectPaymentMethod,buttonWidth: 336,buttonHeight: 53,)


         ],
       ),
     )

      ],),
    );
  }
}
