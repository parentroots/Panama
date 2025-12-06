import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/curved_background_widget/curved_background_widget.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import 'package:new_untitled/utils/constants/app_string.dart';

enum SingingCharacter { lafayette, jefferson }

class PaymentMethodScreen extends StatefulWidget {
  PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Column(
        children: [
          CommonCurvedWidget(
            height: 100,
            text: 'Payment Method',
            imageSource: AppImages.profile,
            textColor: AppColors.commonTextColor,
          ),

          Column(
            children: [
              SizedBox(height: 40),

              RadioGroup<SingingCharacter>(
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        children: [
                          Text('Yappy'),

                          Image.asset(AppImages.whatsApp),
                        ],
                      ),

                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                      ),
                    ),
                    ListTile(
                      title: Text('Debit/Credit'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppImages.whatsApp),
                              Image.asset(AppImages.whatsApp),
                            ],
                          ),
                        ],
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                      ),
                    ),
                    ListTile(
                      title: Text('PayPal'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [Image.asset(AppImages.whatsApp)]),
                        ],
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                      ),
                    ),

                    ListTile(
                      title: Text('Bank Transfer/Deposite'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [Text("A una cuenta bancaria")]),
                        ],
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Spacer(),

          CommonButton(
            onTap: ()=>Get.toNamed(AppRoutes.pay_confirmation_screen),
              titleText: AppString.continuePayment),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
