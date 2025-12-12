import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/student_home_screen.dart';
import '../../../student_bottom_nav_screen.dart';
import 'library_student_one_details_screen.dart';


class LibraryStudentOneScreen extends StatefulWidget {
  const LibraryStudentOneScreen({super.key});

  @override
  State<LibraryStudentOneScreen> createState() => _LibraryStudentOneScreenState();
}

class _LibraryStudentOneScreenState extends State<LibraryStudentOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(StudentHomeScreen()),
        onBackPressed: ()=>Get.back(),
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      bottomNavigationBar: const StudentBottomNavBar(currentIndex: 1),

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

            _buildCardWidget(
              text: 'Penal Code',
              textColor: AppColors.primaryColor,
              bgColor: Color(0xffE1D49F),
              onTap: () {

                Get.to(LibraryStudentOneDetailsScreen());
              },
            ),
            SizedBox(height: 25.h),
            _buildCardWidget(
              onTap: () {

                Get.to(LibraryStudentOneDetailsScreen());
              },
              text: 'Commercial Code',
              textColor: AppColors.white,
              bgColor: Color(0xff97A8C4),
            ),
            SizedBox(height: 25.h),
            _buildCardWidget(
              onTap: () {

                Get.to(LibraryStudentOneDetailsScreen());
              },
              text: 'Civil Code',
              textColor: AppColors.primaryColor,
              bgColor: Color(0xffE1D49F),
            ),
            SizedBox(height: 25.h),
            _buildCardWidget(
              onTap: () {

                Get.to(LibraryStudentOneDetailsScreen());
              },
              text: 'Specials Laws',
              textColor: AppColors.white,
              bgColor: Color(0xff97A8C4),
            ),
          ],
        ),
      ),
    );
  }
}

class _buildCardWidget extends StatelessWidget {
  const _buildCardWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.onTap,
  });

  final String text;
  final Color textColor;
  final Color bgColor;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: bgColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 43),
                child: SvgPicture.asset(
                  AppImages.directionIcon,
                  width: 24,
                  height: 24,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SizedBox(width: 10),

              CommonText(text: text, color: (textColor)),
            ],
          ),
        ),
      ),
    );
  }
}
