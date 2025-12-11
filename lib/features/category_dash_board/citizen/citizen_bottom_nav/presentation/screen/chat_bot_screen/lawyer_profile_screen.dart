import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/change_new_lawyer_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../../student/student_bottom_nav/student_bottom_nav_screen.dart';

class LawyerProfileScreen extends StatefulWidget {
  const LawyerProfileScreen({super.key});

  @override
  State<LawyerProfileScreen> createState() => _LawyerProfileScreenState();
}

class _LawyerProfileScreenState extends State<LawyerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 0),
      appBar: HomeBottomCurvedAppBar(
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      body: Column(
        children: [


          Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xffCADAE6),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(75),bottomLeft: Radius.circular(75))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height:110.h,
                  width: 110.w,
                  child: CircleAvatar(
                    child: Image.asset(
                      fit: BoxFit.cover,
                        AppImages.jonson),

                  ),
                ),
                
                CommonText(text: 'JHOAN TORRES',fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xff2E5089),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      initialRating: 4.8,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    
                    CommonText(text: '4.8',fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff2E5089),)
                  ],
                ),

                CommonText(text: "Labour Lawyer",fontWeight: FontWeight.w700,fontSize: 17,color: Color(0xff2E5089),),
                CommonText(text: "Panama city",fontWeight: FontWeight.w700,fontSize: 17,color: Color(0xff2E5089),),



              ],
            ),
          ),

          SizedBox(height: 32.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Specialist in issues of dismissals and labor settlements. ",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: "More than 8 years of experience.",
                    style: TextStyle(
                      color: Color(0xff2E5089),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          SizedBox(height: 19.h,),
          
          CommonText(text: "120 Cases handled",fontWeight: FontWeight.w700,color: Color(0xff2E5089),),
          
          
          SizedBox(height: 48,),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            child: CommonButton(
                buttonHeight: 53,
                titleText: 'Accept and start chat'),
          ),

          SizedBox(height: 39,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            child: CommonButton(
              onTap: ()=>Get.to(ChangeNewLawyerScreen()),
                buttonHeight: 53,
                buttonColor: Color(0xff16253E),
                titleText: 'Request New Lawyer'),
          ),






        ],
      ),


    );
  }
}
