import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final courasolCourrentIndex = 0.obs;

  void updatePageIndicator(index) {
    courasolCourrentIndex.value = index;
  }
}
