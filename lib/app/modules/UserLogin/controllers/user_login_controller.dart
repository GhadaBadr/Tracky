import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserLoginController extends GetxController {
  final count = 0.obs;
  String name = 'عبد الرحمن علي'.tr;
  String name1 = 'برجر'.tr;

  String pass = '123';
  final myController = TextEditingController();
  final myController1 = TextEditingController();

  @override
  void onClose() {}
  void increment() => count.value++;
}
