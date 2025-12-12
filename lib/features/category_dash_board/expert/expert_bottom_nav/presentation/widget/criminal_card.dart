import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

class CriminalCard extends StatelessWidget {
  const CriminalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Container(
        height: 170.h,
        decoration: BoxDecoration(
          color: const Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [

              /// LEFT SIDE IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  AppImages.lawyer1,
                  height: 120.h,
                  width: 125.w,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: 12.w),

              /// RIGHT SIDE TEXT
              Expanded(
                child: Column(

                  children: [

                    SizedBox(height: 20.h,),

                    // RichText(
                    //   maxLines: 4,
                    //   overflow: TextOverflow.ellipsis,
                    //   text: TextSpan(
                    //     children: [
                    //       TextSpan(
                    //         text: "New reforms to the Civil Code ",
                    //         style: TextStyle(
                    //           fontSize: 16.sp,
                    //           color: Colors.black87,
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       ),
                    //       TextSpan(
                    //         text: "explained for students.",
                    //         style: TextStyle(
                    //           fontSize: 16.sp,
                    //           color: Colors.blue,
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    Text('New reforms to the civil code',style: TextStyle(
                      color: Color(0xff2E5089)
                    ),),
                    Text('explained for students',style: TextStyle(
                      color: Color(0xff009FE3)
                    ),),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
