import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/payment_card/payment_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/citizen/auth/presentaion/payment/citizen_payment_loading_screen.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../../../component/app_bar/common_app_bar.dart';
import '../../../../../../utils/constants/app_colors.dart';

class CitizenPayConfirmationScreen extends StatefulWidget {
  const CitizenPayConfirmationScreen({super.key});

  @override
  State<CitizenPayConfirmationScreen> createState() => _CitizenPayConfirmationScreenState();
}

class _CitizenPayConfirmationScreenState extends State<CitizenPayConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: CommonAppBar(
        leadingIcon: AppImages.back, onTap: () {
          Get.back();
      },
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            CommonCurvedWidget(height: 100, text: "Payment Method", imageSource: AppImages.appLogo, textColor: AppColors.commonTextColor),
        
            Column(
              children: [
                  
                SizedBox(height: 70,),
                  
                PaymentCard( text: 'Card Number', icon: Icons.card_membership,),
                SizedBox(height: 33.h,),
                PaymentCard( text: 'expiration date', icon: Icons.payment,),
                SizedBox(height: 33.h,),
                PaymentCard(text: 'CCV', icon: Icons.lock,),
                SizedBox(height: 33.h,),
                PaymentCard( text: 'Card holder name', icon:Icons.person),
                  
                  
                SizedBox(height: 76.h,),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff0E4595),
                      ),
                      child: Image.asset(
                        AppImages.visaCard,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(width: 6.w,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff0E4595),
                      ),
                      child: Image.asset(
                        AppImages.masterCard,
                        color: Colors.white,
                      ),
                    ),
                ],),
            SizedBox(height: 20,),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock),
                   SizedBox(width: 10,),
                   CommonText(text: 'SSL-secured transaction')
                  ],),
                  
                SizedBox(height: 40,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 52.w),
                  child: CommonButton(
                      onTap: () => Get.to(CitizenPaymentLoadingScreen()),
                      titleText: 'Pay'),
                ),

                SizedBox(height: 82,)



              ],
            )
        
          ],
        ),
      ),
    );
  }
}
