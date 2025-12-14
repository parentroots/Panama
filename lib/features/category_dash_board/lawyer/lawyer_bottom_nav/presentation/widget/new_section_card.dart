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
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 125.h,
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
              CommonText(text: title,fontSize: 22,color: AppColors.nameTextColor),
              CommonText(text: description,fontSize: 18,),

              SizedBox(height: 25.h,),

              Row(children: [
                Icon(Icons.watch_later_outlined,color: Color(0xff458AFF),),

                SizedBox(width: 12.w,),
                CommonText(text: 'Remaining: ${time}',fontSize: 14,)
              ],)

            ],
          ),
        ),

      ),
    );
  }
}
