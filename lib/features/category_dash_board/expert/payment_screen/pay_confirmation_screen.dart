import 'package:flutter/material.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/component/payment_card/payment_card.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

import '../../../../utils/constants/app_colors.dart';

class PayConfirmationScreen extends StatefulWidget {
  const PayConfirmationScreen({super.key});

  @override
  State<PayConfirmationScreen> createState() => _PayConfirmationScreenState();
}

class _PayConfirmationScreenState extends State<PayConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Column(
        children: [

          CommonCurvedWidget(height: 100, text: "Payment Method", imageSource: AppImages.appLogo, textColor: AppColors.commonTextColor),

          Column(
            children: [

              SizedBox(height: 40,),

              PaymentCard(image: AppImages.whatsApp, text: 'Card Number'),
              SizedBox(height: 20,),
              PaymentCard(image: AppImages.whatsApp, text: 'expiration date'),
              SizedBox(height: 20,),
              PaymentCard(image: AppImages.whatsApp, text: 'CCV'),
              SizedBox(height: 20,),
              PaymentCard(image: AppImages.whatsApp, text: 'Card holder name'),


              SizedBox(height: 150,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset(AppImages.whatsApp),
                Image.asset(AppImages.whatsApp),
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
              CommonButton(titleText: 'Pay')

            ],
          )

        ],
      ),
    );
  }
}
