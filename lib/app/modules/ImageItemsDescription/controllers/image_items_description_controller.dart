// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ImageItemsDescriptionController extends GetxController {
  final count = 0.obs;
  RxInt id = 0.obs;
  RxString press = ''.obs;
  List buttons = [
    {'id': 0, 'title': 'الكل'.tr},
    {'id': 1, 'title': 'بيـتزا'.tr},
    {'id': 2, 'title': 'برجر'.tr},
    {'id': 3, 'title': 'اطباق عربية'.tr},
    {'id': 4, 'title': 'اطباق غربية'.tr}
  ].obs;
  List item = [
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز برجر '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'تشيز بيـتزا '.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'اطباق عربية'.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
    {
      'title': 'اطباق غربية'.tr,
      'logo': 'https://i.ibb.co/TTgZzCc/ff-copy.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '52',
    },
  ].obs;

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
