 import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/home/citizen_home_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../../config/route/app_routes.dart';

class CitizenPendingValidationScreen extends StatefulWidget {
  const CitizenPendingValidationScreen({super.key});

  @override
  State<CitizenPendingValidationScreen> createState() => _CitizenPendingValidationScreenState();
}


class _CitizenPendingValidationScreenState extends State<CitizenPendingValidationScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Get.to(CitizenHomeScreen());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Container(
              height: 86,
              width: 86,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff5DCE5D)
              ),
              child: Icon(Icons.check,color: Colors.white,),
            ),
            
            CommonText(text: 'Successful',fontSize: 30,fontWeight: FontWeight.bold,color:Color(0xff16253E),),
            CommonText(text: 'Payment',fontSize: 45,fontWeight: FontWeight.w700,color: Color(0xff2E5089),),

            
            
          ],
        )
      ),
    );
  }
}
