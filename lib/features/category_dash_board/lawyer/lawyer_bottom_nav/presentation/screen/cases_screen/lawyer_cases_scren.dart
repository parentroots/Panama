import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/lawyer_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_case_details_screen.dart';
import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';
import '../../../../../expert/expert_bottom_nav/presentation/widget/criminal_card.dart';
import '../../../../../expert/expert_bottom_nav/presentation/widget/advertising_card.dart';
import '../../widget/active_section_card.dart';
import '../../widget/closed_section_card.dart' hide AppColors;
import '../../widget/new_section_card.dart';

class LawyerCasesScreen extends StatefulWidget {
  const LawyerCasesScreen({super.key});

  @override
  State<LawyerCasesScreen> createState() => _LawyerCasesScreenState();
}

class _LawyerCasesScreenState extends State<LawyerCasesScreen> {

  int selectedIndex = 0;
  final PageController pageController = PageController();

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> onTapCaseItem() async {
    Get.to(() => CaseDetailsScreen());
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: () => Get.to(() => LawyerHomeScreen()),
        onBackPressed: () => Get.back(),
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

            /// TITLE
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

            /// TABS
            Row(
              children: [
                buildTab('New', 0, Colors.green),
                SizedBox(width: 20.w),
                buildTab('Active', 1, Colors.blue),
                SizedBox(width: 20.w),
                buildTab('Closed', 2, Colors.red),
              ],
            ),

            /// PAGE VIEW
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                children: [

                  /// New
                  buildListPage(
                    List.generate(
                      10,
                          (_) => NewSectionCard(
                        title: 'Labour Consultation',
                        description: 'i was fired for cause',
                        time: '4:59',
                        onTap: onTapCaseItem,
                      ),
                    ),
                  ),

                  /// Active
                  buildListPage(
                    List.generate(
                      10,
                          (_) => ActiveSectionCard(
                        onTap: onTapCaseItem,
                        name: 'Maria Perez',
                        category: 'Labour statement',
                        status: 'Active',
                      ),
                    ),
                  ),

                  /// Closed
                  buildListPage(
                    List.generate(
                      10,
                          (_) => CaseRatingCard(
                        caseName: 'Case :Anna toress',
                        adviceTitle: 'Completed advice',
                        status: "Closed",
                        rating: 4,
                        onTap: onTapCaseItem,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// TAB WIDGET
  Widget buildTab(String text, int index, Color activeColor) {
    return InkWell(
      onTap: () => changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonText(
            text: text,
            fontSize: 16,
            color: selectedIndex == index ? activeColor : AppColors.nameTextColor,
          ),
          SizedBox(height: 4),
          Container(
            height: 2,
            width: 35.w,
            color: selectedIndex == index ? activeColor : Colors.transparent,
          ),
        ],
      ),
    );
  }

  /// LIST PAGE BUILDER
  Widget buildListPage(List<Widget> children) {
    return Column(
      children: [
        SizedBox(height: 45.h),
        Expanded(
          child: ListView.separated(
            itemCount: children.length,
            separatorBuilder: (_, __) => const SizedBox(height: 20),
            itemBuilder: (_, index) => children[index],
          ),
        ),
      ],
    );
  }
}
