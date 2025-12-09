import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../home/expert_home_screen.dart';
import '../expert_bottom_nav_screen.dart';

class ExpertImportantArticlesScreen extends StatefulWidget {
  const ExpertImportantArticlesScreen({super.key});

  @override
  State<ExpertImportantArticlesScreen> createState() => _ExpertImportantArticlesScreenState();
}

class _ExpertImportantArticlesScreenState extends State<ExpertImportantArticlesScreen> {

  Future<void>onTapLeading()async{
    Get.to(ExpertHomeScreen());

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

      bottomNavigationBar: const ExpertBottomNavBar(currentIndex: 2),
      body: Column(
        children: [



        ],
      ),
    );
  }
}
