// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tracky/app/modules/AddProduct/controllers/add_product_controller.dart';

import '../../../../../theme.dart';

class AddProductInputList extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 51,
            child: TextField(
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Theme.of(context).textTheme.bodyText2!.color),
              decoration: InputDecoration(
                fillColor: AppTheme.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    color: Theme.of(context).textTheme.bodyText2!.color),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'اسم المنتج'.tr,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 51,
            child: TextField(
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Theme.of(context).textTheme.bodyText2!.color),
              decoration: InputDecoration(
                fillColor: AppTheme.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    color: Theme.of(context).textTheme.bodyText2!.color),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'اسم المنتج بالعربية'.tr,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 88,
            child: TextField(
              maxLines: 3,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Theme.of(context).textTheme.bodyText2!.color),
              decoration: InputDecoration(
                fillColor: AppTheme.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    color: Theme.of(context).textTheme.bodyText2!.color),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'وصف المنتج'.tr,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 88,
            child: TextField(
              maxLines: 3,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Theme.of(context).textTheme.bodyText2!.color),
              decoration: InputDecoration(
                fillColor: AppTheme.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    color: Theme.of(context).textTheme.bodyText2!.color),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'وصف المنتج بالإنجليزية'.tr,
              ),
            ),
          ),
        ),
        Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: Container(
              height: 51,
              width: double.infinity,
              child: DropdownButtonHideUnderline(
                child: GFDropdown(
                  icon: SvgPicture.asset("lib/app/assets/right-arrow (1).svg"),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  borderRadius: BorderRadius.circular(8),
                  dropdownButtonColor: AppTheme.yellow2,
                  value: controller.dropdown.value,
                  hint: Center(
                    child: Text(
                      'القسم'.tr,
                    ),
                  ),
                  style: TextStyle(
                      fontFamily: 'Almarai-Regular',
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      color: Theme.of(context).textTheme.bodyText2!.color),
                  onChanged: (newValue) {
                    controller.dropdown.value = newValue.toString();
                  },
                  items: [
                    'القسم'.tr,
                    'حلويات'.tr,
                    'مشروبات'.tr,
                  ]
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 51,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Theme.of(context).textTheme.bodyText2!.color),
              decoration: InputDecoration(
                fillColor: AppTheme.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    color: Theme.of(context).textTheme.bodyText2!.color),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.borderGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                hintText: 'السعر'.tr,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
