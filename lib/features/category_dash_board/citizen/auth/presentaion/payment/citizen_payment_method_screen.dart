import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/citizen/auth/presentaion/payment/citizen_pay_confirmation_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import '../../../../../../component/app_bar/common_app_bar.dart';

class CitizenPaymentMethodScreen extends StatefulWidget {
  const CitizenPaymentMethodScreen({super.key});

  @override
  State<CitizenPaymentMethodScreen> createState() =>
      _CitizenPaymentMethodScreenState();
}

class _CitizenPaymentMethodScreenState
    extends State<CitizenPaymentMethodScreen> {

  String selectedMethod = "yappy"; // <-- enum ছাড়া এখানেই value রাখবো

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () => Get.back(),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonCurvedWidget(
            height: 100,
            text: 'Payment Method',
            imageSource: AppImages.appLogo,
            textColor: AppColors.commonTextColor,
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 10),

                  // 🔵 Yappy
                  ListTile(
                    title: Row(
                      children: [
                        Text('Yappy'),
                        SizedBox(width: 10),
                        Image.asset(AppImages.whatsApp, height: 25),
                      ],
                    ),
                    leading: Radio(
                      value: "yappy",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value.toString());
                      },
                    ),
                  ),

                  // 🔵 Debit/Credit
                  ListTile(
                    title: Text('Debit/Credit'),
                    subtitle: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration:
                          BoxDecoration(color: Color(0xff0E4595)),
                          child: Image.asset(
                            AppImages.visaCard,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration:
                          BoxDecoration(color: Color(0xff0E4595)),
                          child: Image.asset(
                            AppImages.masterCard,
                            height: 20,
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                    leading: Radio(
                      value: "card",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value.toString());
                      },
                    ),
                  ),

                  // 🔵 PayPal
                  ListTile(
                    title: Text('PayPal'),
                    subtitle: Row(
                      children: [
                        Image.asset(AppImages.payPal, height: 25),
                      ],
                    ),
                    leading: Radio(
                      value: "paypal",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value.toString());
                      },
                    ),
                  ),

                  // 🔵 Bank Transfer
                  ListTile(
                    title: Text('Bank Transfer/Deposit'),
                    subtitle: Text("A una cuenta bancaria"),
                    leading: Radio(
                      value: "bank",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value.toString());
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CommonButton(
              onTap: () => Get.to(CitizenPayConfirmationScreen()),
              titleText: AppString.continuePayment,
            ),
          ),

          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
