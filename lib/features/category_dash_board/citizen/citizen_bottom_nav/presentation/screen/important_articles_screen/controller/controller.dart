import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CitizenImportantArticlesController extends GetxController {
  // Initialize it here!
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void onInit() {
    super.onInit();
    // Initialize PageController here
    pageController = PageController(initialPage: selectedIndex);
  }

  void changeIndex(int index) {
    // Note: Your check is for 0 to 4, but you have 6 tabs (0-5).
    // I'll adjust the check if you actually have 6 pages.
    if (index < 0 || index > 5) return; // Adjusted to check up to 5 for 6 tabs

    selectedIndex = index;
    // Check if pageController is initialized before animating
    if (pageController.hasClients) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    update();
  }

  @override
  void onClose() {
    // Use onClose for GetxController instead of dispose
    pageController.dispose();
    super.onClose();
  }
}