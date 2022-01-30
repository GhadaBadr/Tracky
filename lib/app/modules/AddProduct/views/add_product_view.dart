import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import '../../../../local.dart';
import '../../../../theme.dart';
import '../controllers/add_product_controller.dart';
import 'AddProductWidgets/AddProductImage.dart';
import 'AddProductWidgets/AddProductInputList.dart';
import 'AddProductWidgets/BottomButton.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        title: Text(
          'إضافة منتج'.tr,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 80,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: (LocalizationService.langs.last == 'English')
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: SvgPicture.asset(
                      "lib/app/assets/arrow2.svg",
                      width: 16.21,
                      height: 14.64,
                      fit: BoxFit.contain,
                    ),
                  )
                : SvgPicture.asset(
                    "lib/app/assets/arrow2.svg",
                    width: 16.21,
                    height: 14.64,
                    fit: BoxFit.contain,
                  ),
          ),
        ),
        // actions: [
        //   GestureDetector(
        //     child: SvgPicture.asset("lib/app/assets/Group 10151.svg"),
        //     onTap: () {},
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 30),
        //     child: GestureDetector(
        //       child: SvgPicture.asset("lib/app/assets/Group 2.svg"),
        //       onTap: () {},
        //     ),
        //   ),
        // ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                AddProductImage(),
                AddProductInputList(),
                SizedBox(
                  height: 80,
                )
              ],
            )),
      ]),
      bottomSheet: BottomSheet(
        builder: (c) => AddProductBottomButton(),
        onClosing: () {},
      ),
    );
  }
}
