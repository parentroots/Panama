import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportantArticlesController extends GetxController {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void onInit() {
    pageController = PageController(initialPage: selectedIndex);
    super.onInit();
  }

  void changeIndex(int index) {
    if (index < 0 || index > 4) return; // 🔒 total 5 pages

    selectedIndex = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
