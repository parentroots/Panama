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

enum SingingCharacter { yappy, debitCredit, paypal, bankTransfer }

class LawyerPaymentMethodScreen extends StatefulWidget {
  const LawyerPaymentMethodScreen({super.key});

  @override
  State<LawyerPaymentMethodScreen> createState() =>
      _LawyerPaymentMethodScreenState();
}

class _LawyerPaymentMethodScreenState
    extends State<LawyerPaymentMethodScreen> {
  SingingCharacter? _character = SingingCharacter.yappy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CommonCurvedWidget(
              height: 100,
              text: 'Payment Method',
              imageSource: AppImages.appLogo,
              textColor: AppColors.commonTextColor,
            ),




            SizedBox(height: 40.h),

            // ----------- Radio Buttons -----------
            Padding(
              padding:EdgeInsets.only(left: 97.w),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.yappy,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    title: Row(
                      children: [
                        Text('Yappy'),
                        SizedBox(width: 8.w),
                        Image.asset(AppImages.whatsApp, height: 24.h, width: 24.w),
                      ],
                    ),
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.debitCredit,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    title: Text('Debit/Credit'),
                    subtitle: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Color(0xff0E4595),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            AppImages.visaCard,
                            color: Colors.white,
                            height: 24.h,
                            width: 40.w,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Color(0xff0E4595),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            AppImages.masterCard,
                            height: 24.h,
                            width: 40.w,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.paypal,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    title: Text('PayPal'),
                    subtitle: Row(
                      children: [
                        Image.asset(AppImages.payPal, height: 24.h, width: 40.w),
                      ],
                    ),
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.bankTransfer,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    title: Text('Bank Transfer/Deposit'),
                    subtitle: Row(
                      children: [
                        Text("A una cuenta bancaria"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50.h),

            // ----------- Continue Button -----------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: CommonButton(
                onTap: () =>
                    Get.toNamed(AppRoutes.lawyer_pay_confirmation_screen),
                titleText: AppString.continuePayment,
              ),
            ),

            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
