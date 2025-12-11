import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';

import '../../../../../../utils/constants/app_colors.dart';

class NewSectionCard extends StatelessWidget {
  const NewSectionCard({super.key, required this.title, required this.description, required this.time, required this.onTap});

  final String title;
  final String description;
  final String time;

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
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
              CommonText(text: title,fontSize: 16,color: AppColors.nameTextColor),
              CommonText(text: description),

              SizedBox(height: 30.h,),

              Row(children: [
                Icon(Icons.watch_later_outlined,color: Color(0xff458AFF),),

                SizedBox(width: 12.w,),
                CommonText(text: 'Remaining: ${time}',fontSize: 12,)
              ],)

            ],
          ),
        ),

      ),
    );
  }
}
