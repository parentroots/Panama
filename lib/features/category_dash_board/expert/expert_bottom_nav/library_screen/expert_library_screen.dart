import 'package:flutter/material.dart';
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
                Image.asset(AppImages.libraryIcon),
                CommonText(
                  text: 'LAW',
                  color: AppColors.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
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
          Container(
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

          SizedBox(height: 30),

          Row(children: [Image.asset(AppImages.appLogo)]),
        ],
      ),
    );
  }
}
