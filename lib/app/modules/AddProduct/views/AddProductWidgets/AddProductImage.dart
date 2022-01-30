// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/AddProduct/controllers/add_product_controller.dart';

import '../../../../../theme.dart';

class AddProductImage extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 188,
        child: GetBuilder(
            init: AddProductController(),
            builder: ((c) => Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      controller.image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: Image.file(
                                controller.image!,
                                width: 177,
                                height: 132,
                                fit: BoxFit.fill,
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                controller.pickImage();
                              },
                              child: Container(
                                width: 177,
                                height: 132,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: AppTheme.blackgrey),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "lib/app/assets/Group 10454.svg",
                                      height: 40.89,
                                      width: 46.17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'صورة المنتج'.tr,
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
                ))));
  }
}
