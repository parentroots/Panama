import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LawyerCasesScreenController extends GetxController {
  var selectedIndex = 0.obs;

  // PageController টা দরকার না যদি IndexedStack ব্যবহার করেন

  void changeIndex(int index) {
    selectedIndex.value = index;
    // update() call করার দরকার নেই যখন .obs ব্যবহার করছেন
  }
}