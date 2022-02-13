// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/MyData/controllers/my_data_controller.dart';

import 'package:tracky/theme.dart';

class TextFeildsList extends GetView<MyDataController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Form(
        child: Column(
          children: [
            text('اسم المشروع'.tr, context),
            text('وصف المشروع'.tr, context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Container(
                color: AppTheme.white,
                height: 51,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: Theme.of(context).textTheme.bodyText2,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppTheme.borderGrey, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppTheme.borderGrey, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    hintStyle: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline4!.fontSize,
                        color: Theme.of(context).textTheme.bodyText2!.color),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppTheme.borderGrey, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'رقم الهاتف'.tr,
                  ),
                ),
              ),
            ),
            text('رابط الانستقرام'.tr, context),
            text('رابط سناب شات'.tr, context),
            text('رابط الويب سايت'.tr, context),
          ],
        ),
      ),
    );
  }

  Widget text(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Container(
        color: AppTheme.white,
        height: 51,
        child: TextFormField(
          style: Theme.of(context).textTheme.bodyText2,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.borderGrey, width: 1.0),
                borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.borderGrey, width: 1.0),
                borderRadius: BorderRadius.circular(8)),
            hintStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                color: Theme.of(context).textTheme.bodyText2!.color),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.borderGrey, width: 1.0),
                borderRadius: BorderRadius.circular(8)),
            hintText: title,
          ),
        ),
      ),
    );
  }
}
