import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text/common_text.dart';

class NotAttendedCard extends StatelessWidget {
final String topic;
final String status;


  const NotAttendedCard({
    Key? key, required this.topic, required this.status,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          
          CommonText(text: "Topic : $topic",color: Color(0xFF3D5A80),fontWeight:FontWeight.w700,fontSize: 17,),
          SizedBox(height: 10.h,),
          CommonText(text: " status : $status",color: Colors.blue,fontSize: 17,),
          SizedBox(height: 10.h,),
          CommonText(text: "Retry Assignment",fontSize: 14,)
        
       



        ],
      ),
    );
  }
}