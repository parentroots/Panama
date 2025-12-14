import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/expert_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_case_details_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/expert_home_screen.dart';

import '../../widget/advertising_card.dart';
import '../../widget/criminal_card.dart';

class ExpertImportantArticlesScreen extends StatefulWidget {
  const ExpertImportantArticlesScreen({super.key});

  @override
  State<ExpertImportantArticlesScreen> createState() =>
      _ExpertImportantArticlesScreenState();
}

class _ExpertImportantArticlesScreenState
    extends State<ExpertImportantArticlesScreen> {

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
        onLeadingPressed: () => Get.to(() => ExpertHomeScreen()),
        onBackPressed: () => Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: ExpertBottomNavBar(currentIndex: 2),
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
                    buildTab("Criminal", 0, const Color(0xffD5FFED)),
                    SizedBox(width: 20.w),
                    buildTab("Civil", 1, const Color(0xffC2DCFF)),
                    SizedBox(width: 20.w),
                    buildTab("Labour", 2, const Color(0xffFAD9CD)),
                  ],
                ),

                SizedBox(height: 12),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildTab("Family", 3, const Color(0xffF9E8A3)),
                      SizedBox(width: 20.w),
                      buildTab(
                        "Immigration",
                        4,
                        const Color(0xffC2DCFF),
                        width: 120,
                      ),
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
                ),
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
                    List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Civil
                  buildListPage(
                    List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Labour
                  buildListPage(
                    List.generate(
                      10,
                          (_) => Column(
                        children: [
                          CriminalCard(),
                          AdvertisingCardArticles(),
                        ],
                      ),
                    ),
                  ),

                  /// Family
                  buildListPage(
                    List.generate(10, (_) => CriminalCard()),
                  ),

                  /// Immigration
                  buildListPage(
                    List.generate(
                      10,
                          (_) => Column(
                        children: [
                          CriminalCard(),
                          AdvertisingCardArticles(),
                        ],
                      ),
                    ),
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
  Widget buildTab(
      String text,
      int index,
      Color color, {
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
