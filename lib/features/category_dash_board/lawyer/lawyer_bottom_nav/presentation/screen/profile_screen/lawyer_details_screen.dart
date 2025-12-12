import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/chat_bot_screen/user_chat_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';
import '../../../lawyer_bottom_nav_screen.dart';

class LawyerDetailsScreen extends StatelessWidget {
  const LawyerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(LawyerHomeScreen()),
        onBackPressed: ()=>Get.back(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonText(text: 'Expert Profile',color:Color(0xff2E5089),fontWeight: FontWeight.w500,),
              ]
            ),

            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/expert.jpg"),
            ),

            const SizedBox(height: 15),

           CommonText(text: 'RICARDO PAREDES',color: Color(0xff2E5089),fontSize: 30,fontWeight: FontWeight.w700,),

            SizedBox(height: 12,),
            SizedBox(
              height: 22,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) =>
                Icon(Icons.star, size: 22, color: Colors.amber),
                onRatingUpdate: (rating) {},
              ),
            ),


             SizedBox(height: 34.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email_outlined,color: Color(0xff2E5089),),
                SizedBox(width: 8),

                CommonText(text: 'carlosmendoza48@gmail.com',color: Color(0xff2E5089))
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.call,color: Color(0xff2E5089),),
                SizedBox(width: 8),

                CommonText(text: '+507 6543-1020',color: Color(0xff2E5089))
              ],
            ),

            const SizedBox(height: 20),



            SizedBox(
              width: 333.w,
              child: Divider(
                color:Color(0xffCADAE6),
                thickness: 2,
              ),
            ),

            SizedBox(height: 46.h),
            
            const SizedBox(height: 10),

            bullet("Speciality Forensic Accounting"),
            bullet("Certified CPA"),
            bullet("Forensic Auditing Course, 2023"),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2E5089),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                  ),
                  onPressed: () {
                    Get.to(UserChatBotScreen());
                  },
                  child: const Text(
                    "Contact by chat",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bullet(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 46.h),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 9,color: Color(0xffD9D9D9),),
          const SizedBox(width: 8),
          CommonText(text: text,color: Color(0xff2E5089),fontSize: 17,),
        ],
      ),
    );
  }
}
