import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/UserLoginBusinessOwner/views/user_login_business_owner_view.dart';

import '../../../../theme.dart';
import '../controllers/user_login_controller.dart';
import 'UserLoginWidgets/UserLoginContainer.dart';

class UserLoginView extends GetView<UserLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/app/assets/bg.png"),
              fit: BoxFit.fill,
            ),
          ),
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
                              Get.to(() => UserLoginBusinessOwnerView());
                            },
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "lib/app/assets/Group 10158.png"),
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
    );
  }
}
