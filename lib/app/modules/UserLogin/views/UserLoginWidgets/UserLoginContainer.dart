// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/NewUser/views/new_user_view.dart';
import 'package:tracky/app/modules/UserLogin/controllers/user_login_controller.dart';
import 'package:tracky/app/modules/home/views/home_view.dart';

import '../../../../../theme.dart';

class UserLoginContainer extends GetView<UserLoginController> {
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
                        controller: controller.myController,
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
                        controller: controller.myController1,
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
                            onTap: () {
                              if ((controller.myController.text ==
                                      controller.name.toString()) ||
                                  (controller.myController.text ==
                                          controller.name1.toString()) &&
                                      controller.myController1.text ==
                                          controller.pass) {
                                Get.to(() => HomeView());
                              } else if (controller.myController.text.isEmpty &&
                                  controller.myController1.text.isEmpty) {
                                Get.to(() => HomeView());
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('خطأ'.tr),
                                      actions: [],
                                      content: Text(
                                        'لقد أدخلت اسم مستخدم أو كلمة مرور غير صالحة'
                                            .tr,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                    );
                                  },
                                );
                              }
                            },
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
                            'ليس لديك حساب؟'.tr,
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
