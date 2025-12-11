import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';

import '../../../../../../utils/constants/app_colors.dart';

class ActiveSectionCard extends StatelessWidget {
  const ActiveSectionCard({super.key, required this.name, required this.category, required this.status, required this.onTap});

  final String name;
  final String category;
  final String status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 117.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(31.r)
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w,top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    CommonText(text: "Case : ",fontSize: 16,color: AppColors.nameTextColor),
                    CommonText(text: name,fontSize: 16,color: AppColors.black),

                  ],
                ),
                CommonText(text: category,fontSize: 18,color: AppColors.nameTextColor,),

                SizedBox(height: 30.h,),

                Row(children: [


                  CommonText(text: 'Status : ',fontSize: 18,color: Colors.blue,),
                  CommonText(text: status,fontSize: 18,color: Colors.blue,),
                ],)

              ],
            ),
          ),

        ),
      ),
    );
  }
}
