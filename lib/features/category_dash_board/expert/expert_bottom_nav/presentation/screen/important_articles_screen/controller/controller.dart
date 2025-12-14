import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpertImportantArticlesController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update();  // trigger rebuild
  }
}
