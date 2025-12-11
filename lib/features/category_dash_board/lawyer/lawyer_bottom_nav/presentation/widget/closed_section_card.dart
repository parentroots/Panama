import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF395886);
  static const Color titleColor = Color(0xFF395886);
  static const Color adviceColor = Color(0xFF577EBD);
  static const Color statusColor = Color(0xFF8D8D8D);
  static const Color starColor = Colors.amber;
  static const Color subTextColor = Color(0xFF8D8D8D);
}


class CaseRatingCard extends StatelessWidget {
  final String caseName;
  final String adviceTitle;
  final String status;
  final double rating;
  final VoidCallback onTap;


  const CaseRatingCard({
    super.key,
    required this.caseName,
    required this.adviceTitle,
    required this.status,
    required this.rating, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    Widget CommonText({
      required String text,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      TextAlign? textAlign,
    }) {
      return Text(
        text,
        style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
        textAlign: textAlign,
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.access_time, size: 16.sp, color: AppColors.subTextColor),
                  SizedBox(width: 4.w),
                  CommonText(
                    text: 'Rate experience',
                    color: AppColors.subTextColor,
                    fontSize: 14.sp,
                  ),
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Case: Ana Torres
                  CommonText(
                    text: 'Case: $caseName',
                    color: AppColors.titleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),



                ],
              ),

              SizedBox(height: 5.h),

              // Complete advice
              CommonText(
                text: adviceTitle,
                color: AppColors.adviceColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),

              SizedBox(height: 15.h),

              // Status: Closed
              CommonText(
                text: 'Status: $status',
                color: AppColors.statusColor,
                fontSize: 16.sp,
              ),

              SizedBox(height: 8.h),

              // Qualification (Stars and Value)
              Row(
                children: [
                  CommonText(
                    text: 'Qualification',
                    color: AppColors.statusColor,
                    fontSize: 16.sp,
                  ),
                  SizedBox(width: 8.w),

                  // Stars (Rating Bar simulation)
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating.floor() ? Icons.star :
                        index < rating && rating % 1 != 0 ? Icons.star_half :
                        Icons.star_border,
                        color: AppColors.starColor,
                        size: 20.sp,
                      );
                    }),
                  ),

                  SizedBox(width: 8.w),

                  // Rating Value
                  CommonText(
                    text: rating.toStringAsFixed(1), // এক দশমিক স্থান পর্যন্ত
                    color: AppColors.titleColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}