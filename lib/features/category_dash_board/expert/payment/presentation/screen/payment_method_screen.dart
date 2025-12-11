import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';
import '../../../../../../component/app_bar/common_app_bar.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String? selectedMethod = "yappy"; // default selected

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
        children: [
          CommonCurvedWidget(
            height: 100,
            text: 'Payment Method',
            imageSource: AppImages.appLogo,
            textColor: AppColors.commonTextColor,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 60.h),

                  // Yappy
                  ListTile(
                    title: Row(
                      children: [
                        const Text("Yappy"),
                        const SizedBox(width: 8),
                        Image.asset(AppImages.whatsApp, height: 22),
                      ],
                    ),
                    leading: Radio<String>(
                      value: "yappy",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value);
                      },
                    ),
                  ),

                  // Debit / Credit
                  ListTile(
                    title: const Text("Debit / Credit"),
                    subtitle: Row(
                      children: [
                        Container(
                          color: const Color(0xff0E4595),
                          padding: const EdgeInsets.all(4),
                          child: Image.asset(AppImages.visaCard, height: 20),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          color: const Color(0xff0E4595),
                          padding: const EdgeInsets.all(4),
                          child:
                          Image.asset(AppImages.masterCard, height: 20),
                        ),
                      ],
                    ),
                    leading: Radio<String>(
                      value: "debit",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value);
                      },
                    ),
                  ),

                  // PayPal
                  ListTile(
                    title:  Text("PayPal"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(AppImages.payPal, height: 22),
                      ],
                    ),
                    leading: Radio<String>(
                      value: "paypal",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value);
                      },
                    ),
                  ),

                  // Bank Transfer
                  ListTile(
                    title: const Text("Bank Transfer / Deposit"),
                    subtitle: Text("A una cuenta bancaria"),
                    leading: Radio<String>(
                      value: "bank",
                      groupValue: selectedMethod,
                      onChanged: (value) {
                        setState(() => selectedMethod = value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            child: CommonButton(
              onTap: () => Get.toNamed(AppRoutes.pay_confirmation_screen),
              titleText: AppString.continuePayment,
            ),
          ),

          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
