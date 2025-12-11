import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_cases_scren.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/lawyer_profile_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/my_profile_screen.dart';
import 'package:new_untitled/utils/constants/app_images.dart';
import '../../../../config/route/app_routes.dart';
import '../../../../utils/constants/app_colors.dart';

class LawyerBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const LawyerBottomNavBar({required this.currentIndex, super.key});

  @override
  State<LawyerBottomNavBar> createState() => _LawyerBottomNavBarState();
}

class _LawyerBottomNavBarState extends State<LawyerBottomNavBar> {
  var bottomNavIndex = 0;

  /// --- SVG ICON PATHS ---
  List<String> unselectedIcons = [
    AppImages.chatSvg,
    AppImages.bottomLibrary,
    AppImages.bottomArticles,
    AppImages.cases,
    AppImages.bottomPerson,
  ];

  List<String> selectedIcons = [
    AppImages.chatSvg,
    AppImages.bottomLibrary,
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
        return "Library";
      case 2:
        return "Articles";
      case 3:
        return "Cases";
      case 4:
        return "Profile";
      default:
        return "";
    }
  }

  void onTap(int index) async {
    if (index == 0 && widget.currentIndex != 0) {
      Get.toNamed(AppRoutes.lawyerChatBotScreen);
    } else if (index == 1 && widget.currentIndex != 1) {
      Get.toNamed(AppRoutes.lawyerLibraryScreen);
    } else if (index == 2 && widget.currentIndex != 2) {
      Get.toNamed(AppRoutes.lawyerImportantArticlesScreen);
    } else if (index == 3 && widget.currentIndex != 3) {
      Get.to(LawyerCasesScreen());
    }
    else if (index == 4 && widget.currentIndex != 4) {
      Get.to(MyProfileScreen());
    }
  }
}
