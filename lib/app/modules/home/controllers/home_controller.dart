// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt id = 0.obs;
  RxString press = ''.obs;
  RxString all = ''.obs;
  List imges = [
    {
      'title': 'دكتور باستا'.tr,
      'img': "https://i.ibb.co/Kq56tP7/Group-10146.png"
    },
    {
      'title': 'دكتور باستا'.tr,
      'img': "https://i.ibb.co/LCvZq0J/Group-10496.png"
    },
    {
      'title': 'دكتور باستا'.tr,
      'img': "https://i.ibb.co/Kq56tP7/Group-10146.png"
    },
    {
      'title': 'دكتور باستا'.tr,
      'img': "https://i.ibb.co/LCvZq0J/Group-10496.png"
    },
  ].obs;
  List buttons = [
    {'id': 0, 'title': 'الكل'.tr},
    {'id': 1, 'title': 'بيـتزا'.tr},
    {'id': 2, 'title': 'برجر'.tr},
    {'id': 3, 'title': 'اطباق عربية'.tr},
    {'id': 4, 'title': 'اطباق غربية'.tr}
  ].obs;
  List item = [
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'برجر'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'بيـتزا'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'title': 'بيـتزا'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'اطباق عربية'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
    {
      'all': 'الكل'.tr,
      'title': 'اطباق غربية'.tr,
      'logo': 'https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png',
      'des': 'بمعنى أن الغاية هي الشكل وليس المحتوى'.tr,
      'dis': '2.0KM'.tr,
    },
  ].obs;
  final count = 0.obs;

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
