import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/sections_controller.dart';
import 'SectionWidgets/BottomButton.dart';
import 'SectionWidgets/ItemList.dart';

class SectionsView extends GetView<SectionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        title: Text(
          'الأقسام'.tr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 80,
        leading: GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.HOME);
            },
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.arrow_back,
                      color: AppTheme.blackgrey,
                    )))),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            SvgPicture.asset("lib/app/assets/Group 10151.svg"),
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
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [SectionItemList()],
            )),
      ]),
      bottomSheet: BottomSheet(
        builder: (c) => SectionBottomButton(),
        onClosing: () {},
      ),
    );
  }
}
