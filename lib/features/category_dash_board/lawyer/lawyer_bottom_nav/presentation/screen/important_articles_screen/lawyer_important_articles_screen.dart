import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/features/category_dash_board/citizen/home/citizen_home_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';
import '../../../lawyer_bottom_nav_screen.dart';


class LawyerImportantArticlesScreen extends StatefulWidget {
  const LawyerImportantArticlesScreen({super.key});

  @override
  State<LawyerImportantArticlesScreen> createState() => _LawyerImportantArticlesScreenState();
}

class _LawyerImportantArticlesScreenState extends State<LawyerImportantArticlesScreen> {

  Future<void>onTapLeading()async{
    Get.to(LawyerHomeScreen());

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: onTapLeading,
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 2),
      body: Column(
        children: [



        ],
      ),
    );
  }
}
