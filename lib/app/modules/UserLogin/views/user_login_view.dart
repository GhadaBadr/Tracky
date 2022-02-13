import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/user_login_controller.dart';
import 'UserLoginWidgets/UserLoginContainer.dart';

class UserLoginView extends GetView<UserLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            color: AppTheme.yellow,
          ),
          Positioned(
            top: 0,
            left: -15,
            right: 10,
            child: Container(
              child: Image.asset(
                "lib/app/assets/Mask Group 1.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
          ),
          Container(
              child: ListView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset("lib/app/assets/Logo.png"),
                    ),
                    UserLoginContainer(),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      decoration: BoxDecoration(
                          color: AppTheme.yellow,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.USER_LOGIN_BUSINESS_OWNER);
                            },
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "lib/app/assets/Group 10158.svg"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'صاحب عمل'.tr,
                                      style: TextStyle(
                                          color: AppTheme.blackgrey,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .fontSize),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
