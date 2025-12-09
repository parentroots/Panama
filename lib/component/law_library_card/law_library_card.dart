import 'package:flutter/material.dart';

import '../../utils/constants/app_images.dart';
import '../text/common_text.dart';

class LawLibraryCard extends StatelessWidget {
  const LawLibraryCard({
    super.key,
    required this.backgroundImage,
    required this.titleText,
    required this.subTitleText, required this.onTap,
  });

  final String backgroundImage;
  final String titleText;
  final String subTitleText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.maxFinite,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 23),
                child: CommonText(
                  text: titleText,
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8, left: 23),
                child: CommonText(
                  text: subTitleText,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
