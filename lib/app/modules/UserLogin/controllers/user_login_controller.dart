import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';

class UserLoginController extends GetxController {
  final count = 0.obs;
  String name = 'عبد الرحمن علي'.tr;
  String name1 = 'برجر'.tr;

  void login(BuildContext context) {
    if ((nameCtr.text == name.toString()) ||
        (nameCtr.text == name1.toString()) && passCtr.text == pass) {
      Get.toNamed(Routes.HOME);
    } else if (nameCtr.text.isEmpty && passCtr.text.isEmpty) {
      Get.toNamed(Routes.HOME);
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('خطأ'.tr),
            actions: [],
            content: Text(
              'لقد أدخلت اسم مستخدم أو كلمة مرور غير صالحة'.tr,
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        },
      );
    }
  }

  String pass = '123';
  final nameCtr = TextEditingController();
  final passCtr = TextEditingController();

  @override
  void onClose() {}
  void increment() => count.value++;
}
