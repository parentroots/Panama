import 'package:flutter/material.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
    this.height = 100,
    required this.actionImage,
    required this.titleImage,
    required this.homeImage,
  });

  final double height;
  final String actionImage;
  final String titleImage;
  final String homeImage;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Image.asset(
                height: 25,
                  width: 25,
                  AppImages.back),
              Image.asset(
                  height: 25,
                  width: 25,
                  homeImage)],
          ),
        ),

        title: Image.asset(
            height: 35,
            width: 35,
            titleImage),
        centerTitle: true,
        actions: [Image.asset(
            height: 25,
            width: 25,
            actionImage)],
      ),
    );
  }
}
