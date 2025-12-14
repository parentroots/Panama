import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeBottomCurvedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
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
  final Color backgroundColor;
  final String backImage;
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
        width: double.infinity,
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              children: [
                /// ---------- LEFT (FIXED WIDTH) ----------
                SizedBox(
                  width: 70.w, // same as right
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: onBackPressed ?? () => Get.back(),
                        child: Image.asset(
                          backImage,
                          color: Colors.white,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      SizedBox(width: 10.w),
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

                /// ---------- MIDDLE (PERFECT CENTER) ----------
                Expanded(
                  child: Center(
                    child: Image.asset(
                      middleImage,
                      height: 45.h,
                      width: 45.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                /// ---------- RIGHT (FIXED WIDTH) ----------
                SizedBox(
                  width: 70.w, // same as left
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: onActionPressed,
                      child: Image.asset(
                        actionImage,
                        width: 24.w,
                        height: 24.h,
                      ),
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
