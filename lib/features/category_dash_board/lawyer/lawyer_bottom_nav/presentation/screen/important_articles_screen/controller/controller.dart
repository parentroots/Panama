import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LawyerImportantArticlesScreenController extends GetxController {
  var selectedIndex = 0.obs; // Reactive variable
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}