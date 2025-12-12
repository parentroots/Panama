import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../student_bottom_nav_screen.dart';

class StudentProfileEditScreen extends StatefulWidget {
  const StudentProfileEditScreen({super.key});

  @override
  State<StudentProfileEditScreen> createState() => _StudentProfileEditScreenState();
}

final TextEditingController userNameTEController = TextEditingController();
final TextEditingController nameTEController = TextEditingController();
final TextEditingController lastNameTEController = TextEditingController();
final TextEditingController specialityTEController = TextEditingController();
final TextEditingController workAreaTEController = TextEditingController();
final TextEditingController phoneTEController = TextEditingController();
final TextEditingController emailTEController = TextEditingController();

class _StudentProfileEditScreenState extends State<StudentProfileEditScreen> {
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
      bottomNavigationBar: const StudentBottomNavBar(currentIndex: 3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 27),
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.bottomPerson),

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CommonText(
                      text: "Edit profile",
                      color: AppColors.nameTextColor,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 46.w, right: 46.w, top: 31.h),
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
                        padding: EdgeInsets.only(left: 19.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, right: 15.w),
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),

                                  color: const Color(0xffE7EDF7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.image_outlined,
                                          color: Color(0xff577EBD),
                                        ),
                                        SizedBox(width: 8.w),
                                        CommonText(
                                          text: 'Select image',
                                          color: const Color(0xff577EBD),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 120.w,
                      right: 4.w,
                      top: 10.h,
                    ),
                    child: CommonButton(
                      titleText: 'Save changes',
                      titleColor: Colors.white,
                      titleSize: 14.sp,
                      buttonColor: Color(0xff395886),
                      buttonRadius: 26.r,
                    ),
                  ),
                ],
              ),
            ),

            buildAboutYouSection(),

            SizedBox(height: 15.h),

            Padding(
              padding: EdgeInsets.only(left: 33.w, right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleTextField(
                    title: 'User name',
                    textEditingController: userNameTEController,
                  ),

                  SizedBox(height: 20.h),

                  DoubleTextField(
                    title1: 'Name',
                    title2: 'Last name',
                    textEditingController1: nameTEController,
                    textEditingController2: lastNameTEController,
                  ),

                  SizedBox(height: 20.h),
                  SingleTextField(
                    title: 'Speciality',
                    textEditingController: specialityTEController,
                  ),
                  SizedBox(height: 20.h),

                  SingleTextField(
                    title: 'Work Area',
                    textEditingController: workAreaTEController,
                  ),
                  SizedBox(height: 20.h),

                  DoubleTextField(
                    hintText1: '+507',
                    title1: 'Phone',
                    title2: 'E-mail',
                    textEditingController1: phoneTEController,
                    textEditingController2: emailTEController,
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildAboutYouSection() {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, top: 27.h),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.bottomPerson,
            color: AppColors.nameTextColor,
            height: 20.h,
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: CommonText(
              text: "about you",
              color: AppColors.nameTextColor,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class DoubleTextField extends StatelessWidget {
  const DoubleTextField({
    super.key,
    required this.title1,
    required this.title2,
    required this.textEditingController1,
    required this.textEditingController2, this.hintText1, this.hintText2,
  });

  final String title1, title2;
  final TextEditingController textEditingController1, textEditingController2;
  final String? hintText1,hintText2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(text: title1, fontSize: 14.sp),
              SizedBox(height: 5.h),
              CommonTextField(
                hintText: hintText1,
                controller: textEditingController1,
                borderRadius: 20.r,
                fillColor: const Color(0xffE5E5E5),
              ),
            ],
          ),
        ),
        SizedBox(width: 15.w),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(text: title2, fontSize: 14.sp),
              SizedBox(height: 5.h),
              CommonTextField(
                hintText: hintText2,
                controller: textEditingController2,
                borderRadius: 20.r,
                fillColor: const Color(0xffE5E5E5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SingleTextField extends StatelessWidget {
  const SingleTextField({
    super.key,
    required this.title,
    required this.textEditingController, this.hintText,
  });

  final TextEditingController textEditingController;

  final String title;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(text: title, fontSize: 14.sp),
        SizedBox(height: 5.h),
        CommonTextField(
          hintText: hintText,
          controller: textEditingController,
          borderRadius: 20.r,
          fillColor: const Color(0xffE5E5E5),
        ),
      ],
    );
  }
}
