// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/ImageItemsDescription/controllers/image_items_description_controller.dart';

import '../../../../../theme.dart';
import 'ItemList.dart';

class ItemListButtons extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: ImageItemsDescriptionController()
                      .buttons
                      .map<Widget>((e) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.id.value = e['id'];
                          controller.press.value = e['title'];
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: (controller.id.value == e['id'])
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
          if (controller.id.value == 0)
            ImageItemListAll()
          else if (controller.id.value == 1)
            ImageItemList()
          else if (controller.id.value == 2)
            ImageItemList()
          else if (controller.id.value == 3)
            ImageItemList()
          else if (controller.id.value == 4)
            ImageItemList()
        ],
      ),
    );
  }
}
