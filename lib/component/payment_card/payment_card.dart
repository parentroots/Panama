import 'package:flutter/material.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 336,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.paymentCardColor
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Image.asset(image),
            CommonText(text: text,style: TextStyle(
              color: AppColors.secondary
            ),)

          ],
          ),
      ),
    );
  }
}
