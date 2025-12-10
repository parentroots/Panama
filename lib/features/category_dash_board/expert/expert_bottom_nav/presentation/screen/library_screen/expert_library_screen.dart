import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../component/law_library_card/law_library_card.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../expert_bottom_nav_screen.dart';
import 'library_expert_one_screen.dart';

class ExpertLibraryScreen extends StatefulWidget {
  const ExpertLibraryScreen({super.key});

  @override
  State<ExpertLibraryScreen> createState() => _ExpertLibraryScreenState();
}

class _ExpertLibraryScreenState extends State<ExpertLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),


      bottomNavigationBar: const ExpertBottomNavBar(currentIndex: 1),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Image.asset(AppImages.libraryIcon),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CommonText(
                      text: 'LAW',
                      color: AppColors.secondary,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  CommonText(
                    text: '  LIBRARY',
                    color: AppColors.blueColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: Container(
                height: 43,
                width: 358,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: Color(0xffBDD3F8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Color(0xffB1B1B1)),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search by keyword or article…',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 30),
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(AppImages.category),
                ),
                CommonText(
                  text: 'Categories',
                  fontSize: 16.h,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
        
            SizedBox(height: 33.h,),
        
            LawLibraryCard(
              backgroundImage: AppImages.imageCard1,
              titleText: 'Civil Code',
              subTitleText: 'See related articles', onTap: () {
                Get.to(LibraryExpertOneScreen());
            },
            ),
        
            SizedBox(height: 17.h,),
        
            LawLibraryCard(
              backgroundImage: AppImages.imageCard2,
              titleText: 'Civil Code',
              subTitleText: 'See related articles',
              onTap: () {
                Get.to(LibraryExpertOneScreen());
              },
            ),
        
        
            SizedBox(height: 17.h,),
        
            LawLibraryCard(
              backgroundImage: AppImages.imageCard3,
              titleText: 'Penal Code',
              subTitleText: 'See related articles',
              onTap: () {
                Get.to(LibraryExpertOneScreen());
              },
            ),
        
        
            SizedBox(height: 17.h,),
        
            LawLibraryCard(
              backgroundImage: AppImages.imageCard4,
              titleText: 'Special Laws',
              subTitleText: 'See related articles',
              onTap: () {
                Get.to(LibraryExpertOneScreen());
              },
            ),
            
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52,vertical: 39),
              child: CommonButton(titleText: 'See the most recent Official Gazette'),
            )
        
        
          ],
        ),
      ),
    );
  }
}

