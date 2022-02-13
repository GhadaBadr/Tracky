// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/AddProduct/controllers/add_product_controller.dart';

import '../../../../../theme.dart';

class AddProductBottomButton extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppTheme.bg,
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: AppTheme.blackgrey,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(36),
                      topLeft: Radius.circular(36))),
              height: 60,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text('حفظ '.tr,
                      style: TextStyle(
                          color: AppTheme.yellow,
                          fontSize:
                              Theme.of(context).textTheme.headline5!.fontSize,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ));
  }
}
