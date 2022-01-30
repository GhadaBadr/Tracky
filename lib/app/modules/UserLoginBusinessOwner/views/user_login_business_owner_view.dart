import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/local.dart';
import 'dart:math' as math;
import '../controllers/user_login_business_owner_controller.dart';
import 'UserLoginBusinessOwnerWidget/UserLoginBusinessOwnerContainer.dart';

class UserLoginBusinessOwnerView
    extends GetView<UserLoginBusinessOwnerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/app/assets/bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: ListView(
              children: [
                Stack(children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("lib/app/assets/Logo.png"),
                        ),
                        UserLoginBusinessOwnerContainer(),
                        SizedBox(
                          height: 70,
                        )
                      ],
                    ),
                  ),
                ])
              ],
            )),
        Positioned(
            top: 60,
            right: 25,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: (LocalizationService.langs.last == 'English')
                      ? Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: SvgPicture.asset("lib/app/assets/arrow.svg"))
                      : SvgPicture.asset("lib/app/assets/arrow.svg"),
                ),
              ],
            )),
      ]),
    );
  }
}
