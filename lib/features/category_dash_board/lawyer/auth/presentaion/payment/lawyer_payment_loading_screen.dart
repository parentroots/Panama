import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class LawyerPaymentLoadingScreen extends StatefulWidget {
  const LawyerPaymentLoadingScreen({super.key});

  @override
  State<LawyerPaymentLoadingScreen> createState() => _LawyerPaymentLoadingScreenState();
}

class _LawyerPaymentLoadingScreenState extends State<LawyerPaymentLoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.lawyerPendingValidationScreen);
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: AppColors.commonButtonBorderColor
            )
          ),
        )

      ),
    );
  }
}
