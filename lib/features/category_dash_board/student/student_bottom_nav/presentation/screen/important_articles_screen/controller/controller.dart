import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentImportantArticlesScreenController extends GetxController {
  int selectedIndex = 0; // Track selected index for tabs
  PageController controller = PageController();

  void changeIndex(int index) {
    selectedIndex = index;
    controller.jumpToPage(index); // Jump to the selected page
    update(); // Trigger UI update
  }
}
