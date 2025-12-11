import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/expert_details_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class ExpertDirectoryScreen extends StatelessWidget {
  const ExpertDirectoryScreen({super.key});

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
      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 4),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 37.h,),
            CommonText(text: 'Directory of expert',color: Color(0xff2E5089),),

            SizedBox(height: 15.h,),

            TextField(
              decoration: InputDecoration(
                hintText: "Search by name or specialty",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  expertTile("Ricardo Paredes", "Forensic", 4.8,(){
                    Get.to(ExpertDetailsScreen());
                  }),
                  expertTile("Rodrigo Goes", "Contable", 4.2,(){
                    Get.to(ExpertDetailsScreen());
                  }),
                  expertTile("Juliano Gomez", "Informatics", 3.0,(){
                    Get.to(ExpertDetailsScreen());
                  }),
                  expertTile("Jennifer Lopez", "Forensic", 3.8,(){
                    Get.to(ExpertDetailsScreen());
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget expertTile(String name, String category, double rating,VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(

       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfff1f1f1)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Lic. $name – ",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500,color: Color(0xff2E5089)),
                        ),
                        Text(
                          category,
                          style:
                          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text("$rating ⭐"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),

                ],
              ),
            ),
          ),

          CommonText(text: 'View profile',color: Color(0xffA99956),),

        ],
      ),
    );
  }
}
