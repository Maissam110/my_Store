import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //  Variables

  final pageControler = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageControler.jumpToPage(index);
  }

  //

  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Go to Login Page
    } else {
      //
      int page = currentPageIndex.value + 1;
      pageControler.jumpToPage(page);
    }
  }

  //

  void skipPage() {
    currentPageIndex.value = 2;
    pageControler.jumpToPage(2);
  }
}
