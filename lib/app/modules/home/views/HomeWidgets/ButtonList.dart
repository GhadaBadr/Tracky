// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/home/controllers/home_controller.dart';

import '../../../../../theme.dart';

class HomeListButtons extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: HomeController().buttons.map<Widget>((e) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.id.value = e['id'];
                          controller.press.value = e['title'];
                          controller.all.value = e['all'];
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: (Get.put(HomeController()).id.value ==
                                        e['id'])
                                    ? AppTheme.blackgrey
                                    : AppTheme.yellow2),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 26),
                              child: Text(
                                e['title'],
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: (controller.id.value == e['id'])
                                        ? AppTheme.white
                                        : AppTheme.blackgrey),
                              ),
                            ))),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
