// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/NewUser/controllers/new_user_controller.dart';

import 'package:tracky/app/modules/UserLogin/views/user_login_view.dart';

import '../../../../../theme.dart';

class NewUserContainer extends GetView<NewUserController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 130),
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
                  'حساب جديد'.tr,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
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
                                  'تسجيل'.tr,
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
                            'لديك حساب؟'.tr,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
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
                              Get.to(() => UserLoginView());
                            },
                            child: Text(
                              'سجل دخول'.tr,
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
