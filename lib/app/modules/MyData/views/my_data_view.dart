import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/drawer.dart';
import 'package:tracky/theme.dart';

import '../controllers/my_data_controller.dart';
import 'MyDataWidgets/TextFeildsList.dart';
import 'MyDataWidgets/TopPageCover.dart';

class MyDataView extends GetView<MyDataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
