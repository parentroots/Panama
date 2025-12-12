import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CitizenController extends GetxController{

  PageController controller = PageController();

  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    controller.jumpToPage(index);
    update();
  }
}