// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/app/modules/MyData/controllers/my_data_controller.dart';

import 'package:tracky/theme.dart';

import '../../../../../local.dart';

class TopPageCover extends GetView<MyDataController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 289,
          child: Stack(
            children: [
              Container(
                height: 253,
                width: double.infinity,
                color: AppTheme.bg1,
              ),
              Positioned(
                  top: 43,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 30),
                        child: Row(
                          children: [
                            Builder(
                                builder: (context) => GestureDetector(
                                      child: (LocalizationService.langs.last ==
                                              'English')
                                          ? Transform(
                                              alignment: Alignment.center,
                                              transform:
                                                  Matrix4.rotationY(math.pi),
                                              child: SvgPicture.asset(
                                                  "lib/app/assets/Group 34.svg"))
                                          : SvgPicture.asset(
                                              "lib/app/assets/Group 34.svg"),
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                    )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Text('بياناتى'.tr,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .fontSize,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.dark)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, top: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "lib/app/assets/Group 10151.svg"),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "lib/app/assets/Group 2.svg"),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GetBuilder(
                              init: MyDataController(),
                              builder: ((c) => Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        controller.image1 != null
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.file(
                                                  controller.image1!,
                                                  width: 30,
                                                  height: 30,
                                                  fit: BoxFit.fill,
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  controller.pickImage1();
                                                },
                                                child: SvgPicture.asset(
                                                  "lib/app/assets/Group 34860.svg",
                                                  width: 30,
                                                  height: 30,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                      ],
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 179),
                                child: Text('صورة الخلفية'.tr,
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .fontSize,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.dark)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 25,
            right: 25,
            child: GetBuilder(
                init: MyDataController(),
                builder: ((c) => Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          controller.image != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(21),
                                  child: Image.file(
                                    controller.image!,
                                    width: 162.34,
                                    height: 135.86,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    controller.pickImage();
                                  },
                                  child: Container(
                                    width: 162.34,
                                    height: 135.86,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        color: AppTheme.blackgrey),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            "lib/app/assets/Group 10454.svg"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20.0),
                                          child: Text(
                                            'لوجو المشروع'.tr,
                                            style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .headline3!
                                                    .fontSize,
                                                color: AppTheme.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ))))
      ],
    );
  }
}
