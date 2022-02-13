// ignore_for_file: unnecessary_overrides

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyDataController extends GetxController {
  File? image1;

  File? image;
  Future pickImage1() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(MyDataController()).image1 = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(MyDataController()).image = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

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
