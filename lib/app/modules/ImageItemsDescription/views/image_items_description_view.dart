import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/theme.dart';

import '../controllers/image_items_description_controller.dart';
import 'ImageItemsDesWidgets/ButtonList.dart';
import 'ImageItemsDesWidgets/ItemCover.dart';

class ImageItemsDescriptionView
    extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [ItemsCover(), ItemListButtons()],
        ),
      ),
      bottomSheet: BottomSheet(
        elevation: 0,
        builder: (c) => Row(
          children: [
            Expanded(
                child: Container(
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
                                SvgPicture.asset(
                                    'lib/app/assets/Group 10153.svg'),
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
                                SvgPicture.asset(
                                    "lib/app/assets/Group 10144.svg"),
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
            )),
          ],
        ),
        onClosing: () {},
      ),
    );
  }
}
