import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';

import '../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';

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

      body: Column(
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

          Row(children: [

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Image.asset(AppImages.category),
            ),
            CommonText(text: 'Categories',fontSize: 16.h,fontWeight: FontWeight.w700,)

          ]),
        ],
      ),
    );
  }
}
