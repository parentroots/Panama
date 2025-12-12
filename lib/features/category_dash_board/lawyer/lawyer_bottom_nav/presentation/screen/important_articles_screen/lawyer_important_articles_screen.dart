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
import '../../../../../expert/expert_bottom_nav/presentation/widget/advertising_card.dart';
import '../../../../../expert/expert_bottom_nav/presentation/widget/criminal_card.dart';

class LawyerImportantArticlesScreen extends StatefulWidget {
  const LawyerImportantArticlesScreen({super.key});

  @override
  State<LawyerImportantArticlesScreen> createState() => _LawyerImportantArticlesScreenState();
}

class _LawyerImportantArticlesScreenState extends State<LawyerImportantArticlesScreen> {


  Future<void>onTapCaseItem()async{
    Get.to(CaseDetailsScreen());

  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<CasesScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: HomeBottomCurvedAppBar(
            height: 140,
            backgroundColor: AppColors.backgroundColor,
            backImage: AppImages.back,
            leadingImage: AppImages.appBarHome,
            actionImage: AppImages.language,
            middleImage: AppImages.appLogo,
          ),
          bottomNavigationBar: LawyerBottomNavBar(currentIndex: 1),
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
                        text: "Important Articles",
                        fontSize: 24,
                        color: Color(0xff2E5089),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),

                Column(
                  children: [


                    Row(
                      children: [
                        InkWell(
                          onTap: () => controller.changeIndex(0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [


                              Container(
                                height:40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26),
                                    color: Color(0xffD5FFED)

                                ),
                                child: Center(
                                  child: CommonText(

                                    text: 'Criminal',
                                    fontSize: 16,
                                    color:
                                    controller.selectedIndex == 0
                                        ? Colors.green
                                        : AppColors.nameTextColor,
                                  ),
                                ),
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


                              Container(
                                height:40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26),
                                    color: Color(0xffC2DCFF)

                                ),
                                child: Center(
                                  child: CommonText(

                                    text: 'Civil',
                                    fontSize: 16,
                                    color:
                                    controller.selectedIndex == 1
                                        ? Colors.green
                                        : AppColors.nameTextColor,
                                  ),
                                ),
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


                              Container(
                                height:40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26),
                                    color: Color(0xffFAD9CD)

                                ),
                                child: Center(
                                  child: CommonText(

                                    text: 'Labour',
                                    fontSize: 16,
                                    color:
                                    controller.selectedIndex == 2
                                        ? Colors.green
                                        : AppColors.nameTextColor,
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: 12,),


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => controller.changeIndex(3),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [


                                Container(
                                  height:40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Color(0xffF9E8A3)

                                  ),
                                  child: Center(
                                    child: CommonText(

                                      text: 'Family',
                                      fontSize: 16,
                                      color:
                                      controller.selectedIndex == 3
                                          ? Colors.green
                                          : AppColors.nameTextColor,
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                          SizedBox(width: 20.w),
                          InkWell(
                            onTap: () => controller.changeIndex(4),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [


                                Container(
                                  height:40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Color(0xffC2DCFF)

                                  ),
                                  child: Center(
                                    child: CommonText(

                                      text: 'Immigration',
                                      fontSize: 16,
                                      color:
                                      controller.selectedIndex == 4
                                          ? Colors.green
                                          : AppColors.nameTextColor,
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                          SizedBox(width: 20.w),

                          InkWell(
                            onTap: () => controller.changeIndex(5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [


                                Container(
                                  height:40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Color(0xffD9D9D9)

                                  ),
                                  child: Center(
                                    child:Icon(Icons.add_circle_outline_rounded),
                                  ),
                                ),



                              ],
                            ),
                          ),
                        ],
                      ),
                    )


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
                                    CriminalCard(),
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
                                    CriminalCard(),
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
                                    CriminalCard(),
                                    AdvertisingCardArticles()

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
                                    CriminalCard(),
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
                                    CriminalCard(),
                                    AdvertisingCardArticles()
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
