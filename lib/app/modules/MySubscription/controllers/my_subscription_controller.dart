// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class MySubscriptionController extends GetxController {
  final count = 0.obs;
  RxBool isChecked = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
