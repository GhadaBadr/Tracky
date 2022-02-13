import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';

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
              Get.offAllNamed(Routes.MENU);
            },
            child: Container(
                width: 40,
                height: 40,
                child: Icon(Icons.arrow_back, color: AppTheme.blackgrey))),
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
