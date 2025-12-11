import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class PricingCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final Color borderColor;
  final Color backgroundColor;
  final Color titleColor;
  final Color priceColor;
  final Color subtitleColor;
  final double borderRadius;
  final double borderWidth;
  final VoidCallback? onTap;

  const PricingCard({
    Key? key,
    required this.title,
    required this.price,
    required this.subtitle,
    this.borderColor = const Color(0xFF6B7280),
    this.backgroundColor = Colors.white,
    this.titleColor = const Color(0xFF1F2937),
    this.priceColor = const Color(0xFF2563EB),
    this.subtitleColor = const Color(0xFF4B5563),
    this.borderRadius = 24.0,
    this.borderWidth = 2.5,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 301,
        padding:  EdgeInsets.symmetric(horizontal: 70.w),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: titleColor,
                height: 1.2,
              ),
            ),

            const SizedBox(height: 20),

            // Price
            Text(
              price,
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: AppColors.secondPrimaryTextColor,
                height: 1.0,
                letterSpacing: -2,
              ),
            ),

            const SizedBox(height: 8),

            // Subtitle
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.secondPrimaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}