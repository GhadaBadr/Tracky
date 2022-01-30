// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class SectionsController extends GetxController {
  final count = 0.obs;
  List item =
      ['بيـتزا'.tr, 'بيـتزا'.tr, 'بيـتزا'.tr, 'بيـتزا'.tr, 'بيـتزا'.tr].obs;
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
