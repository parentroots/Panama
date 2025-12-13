import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../config/route/app_routes.dart';

class ExpertPendingValidationScreen extends StatefulWidget {
  const ExpertPendingValidationScreen({super.key});

  @override
  State<ExpertPendingValidationScreen> createState() => _ExpertPendingValidationScreenState();
}


class _ExpertPendingValidationScreenState extends State<ExpertPendingValidationScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.expertHomeScreen);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.book),
            CommonText(text: 'Pending ',fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.secondPrimaryTextColor,),
            CommonText(text: 'Validation',fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.blueColor,),

            
            
          ],
        )
      ),
    );
  }
}
