import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/cases/citizen_cases_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/citizen_chat_bot_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/important_articles_screen/citizen_important_articles_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/profile_screen/citizen_profile_screen.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import '../../../../config/route/app_routes.dart';
import '../../../../utils/constants/app_colors.dart';

class CitizenBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const CitizenBottomNavBar({required this.currentIndex, super.key});

  @override
  State<CitizenBottomNavBar> createState() => _CitizenBottomNavBarState();
}

class _CitizenBottomNavBarState extends State<CitizenBottomNavBar> {
  var bottomNavIndex = 0;

  /// --- SVG ICON PATHS ---
  List<String> unselectedIcons = [
    AppImages.chatSvg,
    AppImages.bottomArticles,
    AppImages.cases,
    AppImages.bottomPerson,
  ];

  List<String> selectedIcons = [
    AppImages.chatSvg,
    AppImages.bottomArticles,
    AppImages.cases,
    AppImages.bottomPerson,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(12.sp),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(unselectedIcons.length, (index) {
            final bool isSelected = index == bottomNavIndex;

            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                margin: EdgeInsetsDirectional.all(12.sp),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// --- SVG ICON ---
                    SvgPicture.asset(
                      isSelected ? selectedIcons[index] : unselectedIcons[index],
                      width: 26.sp,
                      height: 26.sp,
                      colorFilter: ColorFilter.mode(
                        isSelected ? AppColors.bottomNavSelectedColor:Color(0xFF2E5089),
                        BlendMode.srcIn,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      getLabel(index),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: isSelected
                            ? AppColors.bottomNavSelectedColor
                            : Color(0xFF2E5089),
                        fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  String getLabel(int index) {
    switch (index) {
      case 0:
        return "Chatbot";
      case 1:
        return "Important Articles";
      case 2:
        return "Cases";
      case 3:
        return "Profile";
      default:
        return "";
    }
  }

  void onTap(int index) async {
    if (index == 0 && widget.currentIndex != 0) {
      Get.to(CitizenChatBotScreen());
    } else if (index == 1 && widget.currentIndex != 1) {
      Get.to(CitizenImportantArticlesScreen());
    } else if (index == 2 && widget.currentIndex != 2) {
      Get.to(CitizenCasesScreen());
    } else if (index == 3 && widget.currentIndex != 3) {
      Get.to(CitizenProfileScreen());
    }
  }
}
