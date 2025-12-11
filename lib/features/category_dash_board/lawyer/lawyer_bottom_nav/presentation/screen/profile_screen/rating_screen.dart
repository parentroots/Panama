import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/profile_screen/my_profile_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 59.h,),
            
            CommonText(text: 'Rate your experience',fontSize: 24,color: Color(0xff2E5089),),

            const Text(
              "Your opinion helps improve the legal community.",
              style: TextStyle(fontSize: 17, color: Color(0xff2E5089)),
            ),

            const SizedBox(height: 20),

            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) =>
              const Icon(Icons.star, size: 30, color: Colors.amber),
              onRatingUpdate: (rating) {},
            ),

           SizedBox(height: 78.h),

            
            CommonText(text: 'Leave a comment',color: Color(0xff2E5089),),
            
             SizedBox(height: 10),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 51),
              height: 178.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child:  Padding(
                padding:  EdgeInsets.only(top: 15.h),
                child: Text(
                  "The client was respectful and clear about his case.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),

            SizedBox(height: 39.h,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2E5089),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
                child: CommonText(text: 'Submit rating',color: Colors.white,),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2E5089),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {

                  Get.to(MyProfileScreen());
                },
                child: CommonText(text: 'Skip',color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
