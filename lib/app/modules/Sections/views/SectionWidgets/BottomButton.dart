// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/Sections/controllers/sections_controller.dart';

import '../../../../../theme.dart';

class SectionBottomButton extends GetView<SectionsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppTheme.bg,
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: AppTheme.blackgrey,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(36),
                      topLeft: Radius.circular(36))),
              height: 60,
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SvgPicture.asset("lib/app/assets/add (1).svg"),
                    ),
                    Text('إضافة قسم'.tr,
                        style: TextStyle(
                            color: AppTheme.yellow,
                            fontSize:
                                Theme.of(context).textTheme.headline5!.fontSize,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
