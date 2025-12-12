import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/lawyer_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/controller/cases_screen_controller.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_case_details_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/active_section_card.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/closed_section_card.dart' hide AppColors;
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/new_section_card.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';

class LawyerCasesScreen extends StatefulWidget {
  const LawyerCasesScreen({super.key});

  @override
  State<LawyerCasesScreen> createState() => _LawyerCasesScreenState();
}

class _LawyerCasesScreenState extends State<LawyerCasesScreen> {


  Future<void>onTapCaseItem()async{
    Get.to(CaseDetailsScreen());

  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<CasesScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: HomeBottomCurvedAppBar(
            onLeadingPressed: ()=>Get.to(LawyerHomeScreen()),
            onBackPressed: ()=>Get.back(),
            height: 140,
            backgroundColor: AppColors.backgroundColor,
            backImage: AppImages.back,
            leadingImage: AppImages.appBarHome,
            actionImage: AppImages.language,
            middleImage: AppImages.appLogo,
          ),
          bottomNavigationBar: LawyerBottomNavBar(currentIndex: 3),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Row(
                    children: [
                      Image.asset(AppImages.files, height: 26.w, width: 26.w),
                      SizedBox(width: 8.w),

                      CommonText(
                        text: "MY CASES",
                        fontSize: 24,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),

                Row(
                  children: [
                    InkWell(
                      onTap: () => controller.changeIndex(0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonText(
                            text: 'New',
                            fontSize: 16,
                            color:
                                controller.selectedIndex == 0
                                    ? Colors.green
                                    : AppColors.nameTextColor,
                          ),
                          SizedBox(height: 4), // text ও line-এর gap
                          Container(
                            height: 2, // line thickness
                            width: 35.w, // line width
                            color:
                                controller.selectedIndex == 0
                                    ? Colors.green
                                    : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () => controller.changeIndex(1),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonText(
                            text: 'Active',
                            fontSize: 16,
                            color:
                                controller.selectedIndex == 1
                                    ? Colors.blue
                                    : AppColors.nameTextColor,
                          ),
                          SizedBox(height: 4),
                          Container(
                            height: 2,
                            width: 35.w,
                            color:
                                controller.selectedIndex == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () => controller.changeIndex(2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonText(
                            text: 'Closed',
                            fontSize: 16,
                            color:
                                controller.selectedIndex == 2
                                    ? Colors.red
                                    : AppColors.nameTextColor,
                          ),
                          SizedBox(height: 4),
                          Container(
                            height: 2,
                            width: 35.w,
                            color:
                                controller.selectedIndex == 2
                                    ? Colors.red
                                    : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: PageView(
                    controller: controller.controller,
                    onPageChanged: (index) {
                      controller.changeIndex(index);
                    },
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 45.h),

                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    SizedBox(height: 20),
                                    NewSectionCard(
                                      title: 'Labour Consultation',
                                      description: 'i was fired for cause',
                                      time: '4:59', onTap: () {
                                        onTapCaseItem();
                                    },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          SizedBox(height: 45.h),

                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    SizedBox(height: 20),
                                    ActiveSectionCard(
                                      onTap: onTapCaseItem,
                                      name: 'Maria Perez',
                                      category: 'Labour statement',
                                      status: 'Active',
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 45.h),

                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    SizedBox(height: 20),
                                    CaseRatingCard(
                                      caseName: 'Case :Anna toress',
                                      adviceTitle: 'Completed advice',
                                      status: "Closed",
                                      rating: 4, onTap: () {
                                        onTapCaseItem();
                                    },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
