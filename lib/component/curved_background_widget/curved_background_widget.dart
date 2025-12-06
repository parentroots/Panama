import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_string.dart';
import '../text/common_text.dart';

class CommonCurvedWidget extends StatelessWidget {
  const CommonCurvedWidget({
    super.key, required this.height, required this.text, required this.imageSource, required this.textColor,
  });

  final double height;
  final String text;
  final String imageSource;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.commonButtonColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageSource,height: 40,width: 40,),

          SizedBox(height: 10,),

          CommonText(text: text,color: textColor,style: TextStyle(
            fontSize: 24,
            color: AppColors.commonTextColor
          ),)
        ],),
    );
  }
}
