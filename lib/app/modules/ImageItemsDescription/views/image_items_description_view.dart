import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/theme.dart';

import '../controllers/image_items_description_controller.dart';
import 'ImageItemsDesWidgets/ButtonList.dart';
import 'ImageItemsDesWidgets/ItemCover.dart';
import 'ImageItemsDesWidgets/ItemList.dart';

class ImageItemsDescriptionView
    extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: Column(
        children: [
          ItemsCover(),
          ItemListButtons(),
          Expanded(child: ImageItemList())
        ],
      ),
      bottomSheet: BottomSheet(
        elevation: 0,
        enableDrag: false,
        builder: (c) => Container(
          color: AppTheme.bg,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: AppTheme.white,
              child: Container(
                decoration: BoxDecoration(
                    color: AppTheme.blackgrey,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(36),
                        topLeft: Radius.circular(36))),
                height: 63,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppTheme.yellow),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.call_rounded,
                                    size: 20,
                                    color: AppTheme.blackgrey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('اتصال'.tr,
                                style: TextStyle(
                                    color: AppTheme.yellow,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .fontSize,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: VerticalDivider(
                          color: AppTheme.yellow,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppTheme.yellow),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        "lib/app/assets/Group 2 copy.svg"),
                                  ),
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'الموقع'.tr,
                              style: TextStyle(
                                  color: AppTheme.yellow,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .fontSize,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
