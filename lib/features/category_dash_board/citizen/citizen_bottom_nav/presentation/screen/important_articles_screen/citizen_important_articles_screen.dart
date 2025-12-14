import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/citizen_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_case_details_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';

import '../../../../../expert/expert_bottom_nav/presentation/widget/advertising_card.dart';
import '../../../../../expert/expert_bottom_nav/presentation/widget/criminal_card.dart';
import '../../../../home/citizen_home_screen.dart';

class CitizenImportantArticlesScreen extends StatefulWidget {
  const CitizenImportantArticlesScreen({super.key});

  @override
  State<CitizenImportantArticlesScreen> createState() =>
      _CitizenImportantArticlesScreenState();
}

class _CitizenImportantArticlesScreenState
    extends State<CitizenImportantArticlesScreen> {

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

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: () => Get.to(() => CitizenHomeScreen()),
        onBackPressed: () => Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 1),
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
                    text: "Important Articles",
                    fontSize: 24,
                    color: const Color(0xff2E5089),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.h),

            /// TABS
            Column(
              children: [
                Row(
                  children: [
                    buildTab(
                        text: "Criminal",
                        index: 0,
                        color: const Color(0xffD5FFED)),
                    SizedBox(width: 20.w),
                    buildTab(
                        text: "Civil",
                        index: 1,
                        color: const Color(0xffC2DCFF)),
                    SizedBox(width: 20.w),
                    buildTab(
                        text: "Labour",
                        index: 2,
                        color: const Color(0xffFAD9CD)),
                  ],
                ),

                SizedBox(height: 12),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildTab(
                          text: "Family",
                          index: 3,
                          color: const Color(0xffF9E8A3)),
                      SizedBox(width: 20.w),
                      buildTab(
                          text: "Immigration",
                          index: 4,
                          width: 120,
                          color: const Color(0xffC2DCFF)),
                      SizedBox(width: 20.w),
                      InkWell(
                        onTap: () => changeIndex(5),
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xffD9D9D9),
                          ),
                          child: const Center(
                            child: Icon(Icons.add_circle_outline_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
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

                  /// Criminal
                  buildListPage(
                    children: List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Civil
                  buildListPage(
                    children: List.generate(
                      10,
                          (_) => Column(
                        children: [
                          AdvertisingCardArticles(),
                          CriminalCard(),
                        ],
                      ),
                    ),
                  ),

                  /// Labour
                  buildListPage(
                    children: List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Family
                  buildListPage(
                    children: List.generate(
                      10,
                          (_) => Column(
                        children: [
                          CriminalCard(),
                          AdvertisingCardArticles(),
                        ],
                      ),
                    ),
                  ),

                  /// Immigration
                  buildListPage(
                    children: List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Add Page
                  const Center(
                    child: Text("More Content Page"),
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
  Widget buildTab({
    required String text,
    required int index,
    required Color color,
    double width = 80,
  }) {
    return InkWell(
      onTap: () => changeIndex(index),
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: color,
        ),
        child: Center(
          child: CommonText(
            text: text,
            fontSize: 16,
            color: selectedIndex == index
                ? Colors.green
                : AppColors.nameTextColor,
          ),
        ),
      ),
    );
  }

  /// LIST PAGE BUILDER
  Widget buildListPage({required List<Widget> children}) {
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
