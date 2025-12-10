import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeBottomCurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeBottomCurvedAppBar({
    super.key,
    required this.height,
    required this.backgroundColor,
    required this.backImage,
    required this.leadingImage,
    required this.actionImage,
    required this.middleImage,
    this.onBackPressed,
    this.onLeadingPressed,
    this.onActionPressed,
  });

  final double height;
  final String backImage;
  final Color backgroundColor;
  final String leadingImage;
  final String actionImage;
  final String middleImage;
  final VoidCallback? onBackPressed;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Container(
        height: height,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.only(bottom: 15.h, top: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side icons
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    children: [
                      // Back button
                      GestureDetector(
                        onTap: onBackPressed ?? () => Get.back,
                        child: Image.asset(
                          backImage,
                          color: Colors.white,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      // Leading icon
                      GestureDetector(
                        onTap: onLeadingPressed,
                        child: Image.asset(
                          leadingImage,
                          color: Colors.white,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ],
                  ),
                ),



                Image.asset(
                  middleImage,
                  height: 50.h,
                  width: 50.w,
                ),



                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: GestureDetector(
                    onTap: onActionPressed,
                    child: Image.asset(
                      actionImage,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
