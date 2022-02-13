import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/drawer.dart';
import 'package:tracky/theme.dart';

import '../../../../local.dart';
import '../controllers/my_data_controller.dart';
import 'MyDataWidgets/TextFeildsList.dart';
import 'MyDataWidgets/TopPageCover.dart';

class MyDataView extends GetView<MyDataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.bg1,
          centerTitle: false,
          leading: Container(
            width: 40,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 19.0, right: 19, top: 0),
              child: Builder(
                  builder: (context) => GestureDetector(
                        child: (LocalizationService.langs.last == 'English')
                            ? Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: SvgPicture.asset(
                                    "lib/app/assets/Group 34.svg"))
                            : SvgPicture.asset("lib/app/assets/Group 34.svg"),
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                      )),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Text('بياناتى'.tr,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.dark)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                              "lib/app/assets/Group 10151.svg"),
                        )),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("lib/app/assets/Group 2.svg"),
                        )),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppTheme.bg,
        drawer: myDrawer(context),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                TopPageCover(),
                TextFeildsList(),
                Expanded(
                  child: Container(
                      child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 49.95,
                                        child: Center(
                                            child: Text('حفظ'.tr,
                                                style: TextStyle(
                                                  color: AppTheme.yellow,
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .subtitle1!
                                                      .fontSize,
                                                ))),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: AppTheme.dark),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))),
                )
              ],
            ),
          ),
        ]));
  }
}
