import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/lawyer_profile_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/home/citizen_home_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../student/student_bottom_nav/student_bottom_nav_screen.dart';

class LawyerFoundConfirmationScreen extends StatefulWidget {
  const LawyerFoundConfirmationScreen({super.key});

  @override
  State<LawyerFoundConfirmationScreen> createState() =>
      _LawyerFoundConfirmationScreenState();
}

class _LawyerFoundConfirmationScreenState
    extends State<LawyerFoundConfirmationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Get.to(LawyerProfileScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCADAE6),
      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 85,
              width: 75,
              child: SvgPicture.asset(AppImages.bag),
            ),

            CommonText(
              text: 'Lawyer Founded',
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Color(0xff2E5089),
            ),
          ],
        ),
      ),
    );
  }
}
