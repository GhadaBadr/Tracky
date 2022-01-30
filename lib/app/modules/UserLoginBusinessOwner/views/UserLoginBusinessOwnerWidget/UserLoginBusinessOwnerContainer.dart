// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/NewUser/views/new_user_view.dart';
import 'package:tracky/app/modules/UserLoginBusinessOwner/controllers/user_login_business_owner_controller.dart';

import '../../../../../theme.dart';

class UserLoginBusinessOwnerContainer
    extends GetView<UserLoginBusinessOwnerController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 140),
          decoration: BoxDecoration(
              color: AppTheme.white, borderRadius: BorderRadius.circular(8)),
          height: 430,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'تسجيل دخول'.tr,
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
                            onTap: () {},
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'دخــول'.tr,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Wrap(
                        children: [
                          Text(
                            'ليس لديك حساب'.tr,
                            style: TextStyle(
                              fontFamily: 'Tajawal-Regular',
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .fontSize,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => NewUserView());
                            },
                            child: Text(
                              'سجل معنا'.tr,
                              style: TextStyle(
                                  fontFamily: 'Tajawal-Regular',
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .fontSize,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
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
