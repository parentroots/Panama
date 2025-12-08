import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.boxColor, required this.text, required this.image, required this.onTap});
  final Color boxColor;
  final String text;
  final String image;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 190.h,
        width: 185.h,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(26.h)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(height: 10.h,),
              CommonText(text: text,)
            ],
          ),
        ),
      ),
    );
  }
}
