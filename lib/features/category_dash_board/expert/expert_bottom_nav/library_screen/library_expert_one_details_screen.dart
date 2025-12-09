import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:new_untitled/features/category_dash_board/expert/home/expert_home_screen.dart';

import '../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../expert_bottom_nav_screen.dart';

class LibraryExpertOneDetailsScreen extends StatefulWidget {
  const LibraryExpertOneDetailsScreen({super.key});

  @override
  State<LibraryExpertOneDetailsScreen> createState() => _LibraryExpertOneDetailsScreenState();
}

class _LibraryExpertOneDetailsScreenState extends State<LibraryExpertOneDetailsScreen> {

  Future<void>onTapLeading()async{
    Get.to(ExpertHomeScreen());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: onTapLeading,
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),

      bottomNavigationBar: ExpertBottomNavBar( currentIndex: 1,),
      backgroundColor: const Color(0xffF1F4F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            /// ---------- Header Card ----------
            Container(
              margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xffE5D59B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.gavel, color: Color(0xff001F3F)),
                  SizedBox(width: 8),
                  Text(
                    "Penal code",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff001F3F),
                    ),
                  ),
                ],
              ),
            ),

            /// ---------- Banner Image ----------
            Container(
              height: 180,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(AppImages.imageCard4),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /// ---------- Description ----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "The Ministry of Government announced this week a proposal to modernize several articles of the Penal Code, with the aim of strengthening sanctions related to cybercrimes and digital scams.",
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                  SizedBox(height: 12),

                  /// ---------- Bold Title ----------
                  Text(
                    "The proposal includes:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),

                  /// ---------- Bullet Points ----------
                  Text("• New penalties for digital identity theft"),
                  SizedBox(height: 4),
                  Text("• Increased sanctions for electronic fraud"),
                  SizedBox(height: 4),
                  Text("• Measures to strengthen the protection of personal data"),

                  SizedBox(height: 16),
                  Text(
                    "The bill will be presented to the Assembly during the next legislative session.",
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// ---------- Buttons Row ----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xffD6DCE8),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Return",
                        style: TextStyle(
                          color: Color(0xff2C3E50),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xff003366),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Download pdf",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            /// ---------- Favorite Button ----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xffD6DCE8),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "⭐ Favoriteshot",
                  style: TextStyle(
                    color: Color(0xff2C3E50),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
