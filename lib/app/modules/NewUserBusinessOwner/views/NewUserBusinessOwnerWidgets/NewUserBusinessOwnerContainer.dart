// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/NewUserBusinessOwner/controllers/new_user_business_owner_controller.dart';
import 'package:tracky/app/modules/Subscriptions/views/subscriptions_view.dart';

import '../../../../../theme.dart';

class NewUserBusinessOwnerContainer
    extends GetView<NewUserBusinessOwnerController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 140),
          decoration: BoxDecoration(
              color: AppTheme.white, borderRadius: BorderRadius.circular(8)),
          height: 515,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'حساب جديد'.tr,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Container(
                      height: 45,
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'اسم المستخدم'.tr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Container(
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'كلمة المرور'.tr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Container(
                      height: 45,
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'اسم صاحب المشروع'.tr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Container(
                      height: 45,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.borderGrey, width: 1.0),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'رقم الهاتف'.tr,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppTheme.blackgrey,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => SubscriptionsView());
                            },
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'استمر'.tr,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
