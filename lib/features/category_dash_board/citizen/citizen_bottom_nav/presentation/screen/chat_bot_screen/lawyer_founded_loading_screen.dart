import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_untitled/config/route/app_routes.dart';
import 'package:new_untitled/features/category_dash_board/citizen/auth/presentaion/payment/citizen_pending_validation_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/citizen_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/lawyerFoundConfirmationScreen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../../student/student_bottom_nav/student_bottom_nav_screen.dart';
import '../../../../home/citizen_home_screen.dart';

class LawyerFoundedLoadinScreen extends StatefulWidget {
  const LawyerFoundedLoadinScreen({super.key});

  @override
  State<LawyerFoundedLoadinScreen> createState() => _LawyerFoundedLoadinScreenState();
}

class _LawyerFoundedLoadinScreenState extends State<LawyerFoundedLoadinScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.to(LawyerFoundConfirmationScreen());
    });




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffCADAE6),
      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(CitizenHomeScreen()),
        onBackPressed: ()=>Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
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
