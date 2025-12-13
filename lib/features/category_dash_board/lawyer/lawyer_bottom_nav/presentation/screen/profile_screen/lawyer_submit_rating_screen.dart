import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/lawyer_bottom_nav_screen.dart';

import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/lawyer_home_screen.dart';

class LawyerSubmitRatingScreen extends StatefulWidget {
  const LawyerSubmitRatingScreen({super.key});

  @override
  State<LawyerSubmitRatingScreen> createState() =>
      _LawyerSubmitRatingScreenState();
}

class _LawyerSubmitRatingScreenState extends State<LawyerSubmitRatingScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController ratingTEController = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: () => Get.to(LawyerHomeScreen()),
        onBackPressed: () => Get.back(),
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: const LawyerBottomNavBar(currentIndex: 4),
      body: Expanded(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 59.h),

                      CommonText(
                        text: 'Rate your experience',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2E5089),
                      ),

                      SizedBox(height: 11),
                      CommonText(
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        text: 'Your opinion helps improve the legal community.',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2E5089),
                        fontSize: 17,
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            itemSize: 24,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder:
                                (context, _) =>
                                    Icon(Icons.star, color: Colors.amber),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),

                      SizedBox(height: 79),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 51),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'Leave a comment',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2E5089),
                      ),

                      SizedBox(height: 15.h),

                      Container(
                        height: 187,
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(26.r),
                        ),

                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your comment';
                                }
                                return null;
                              },
                              controller: ratingTEController,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    "The client was respectful and clear about his case.",
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 39.h),
                      CommonButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Get.snackbar('Rating', "Thank You for rating ");
                          }
                        },

                        titleText: 'Submit Ratting',
                      ),
                      SizedBox(height: 24.h),
                      CommonButton(onTap: () => Get.back(), titleText: 'Skip'),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
