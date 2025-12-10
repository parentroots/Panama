import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/presentation/screen/profile_screen/profile_edit_screen.dart';
import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../citizen_bottom_nav_screen.dart';

class CitizenProfileScreen extends StatefulWidget {
  const CitizenProfileScreen({super.key});

  @override
  State<CitizenProfileScreen> createState() => _CitizenProfileScreenState();
}

class _CitizenProfileScreenState extends State<CitizenProfileScreen> {


  Future<void>onTapEditProfileButton()async{
    await Get.to(ProfileEditScreen());
  }


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
      bottomNavigationBar: const CitizenBottomNavBar(currentIndex: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 27),
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.bottomPerson),
        
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CommonText(
                      text: "My professional profile",
                      color: AppColors.nameTextColor,
                    ),
                  ),
                ],
              ),
            ),
        
            Padding(
              padding: EdgeInsets.only(left: 46.w, right: 46, top: 31),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 101.w,
                        height: 101.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(AppImages.carlos),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
        
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: "Carlos Torres",
                              color: AppColors.nameTextColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
        
                            CommonText(
                              text: "Speciality",
                              fontSize: 13,
                              color: AppColors.nameTextColor,
                            ),
                            CommonText(
                              text: "Forensic Accounting Expert",
                              fontSize: 13,
                              color: AppColors.nameTextColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
        
                  _buildEmailAndNumberSection(),
        
                  SizedBox(height: 55.h),
        
                  Row(
                    children: [
                      CommonText(
                        text: 'Your subscription',
                        fontSize: 24,
                        color: AppColors.nameTextColor,
                      ),
        
                      SizedBox(width: 17.w),
                      Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff14FF6E),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      CommonText(text: 'Active', color: AppColors.nameTextColor),
                    ],
                  ),
        
                  SizedBox(height: 8),
        
                  CommonText(
                    text: 'Expert Plan \$5 month',
                    color: Color(0xff009FE3),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
        
                  SizedBox(height: 34.h,),
        
        
                  FeatureItem(text: "Unlimited consultations"),
                  SizedBox(height: 12),
                  FeatureItem(text: "Priority in assignment"),
                  SizedBox(height: 12),
                  FeatureItem(text: "Saved case history"),
        
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildEmailAndNumberSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.mail, color: AppColors.nameTextColor),
              SizedBox(width: 18.w),
              CommonText(text: "carlostorres84@gmail.com"),
            ],
          ),

          Row(
            children: [
              Icon(Icons.call, color: AppColors.nameTextColor),
              SizedBox(width: 18.w),
              CommonText(text: "+507 6543-1122"),
            ],
          ),

          Padding(
            padding: EdgeInsetsGeometry.only(left: 12.w, right: 108.w, top: 37),
            child: CommonButton(
              onTap: onTapEditProfileButton,
              buttonHeight: 53,
              titleText: "EditProfile",
              titleSize: 17,
            ),
          ),

          SizedBox(height: 35.h),

          _buildRatingBar(),
        ],
      ),
    );
  }

  Column _buildRatingBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // ADD THIS
      children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating: 4,
              itemSize: 22,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder:
                  (context, _) => Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: CommonText(
                text: '4.7',
                fontSize: 22,
                color: AppColors.nameTextColor,
              ),
            ),
          ],
        ),

        CommonText(
          text: 'Based on 32 lawyer ratings',
          color: AppColors.nameTextColor,
        ),
      ],
    );
  }
}


class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ✔ Green circle icon
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 16,
          ),
        ),
        const SizedBox(width: 12),

        // Text
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF2E5089),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
