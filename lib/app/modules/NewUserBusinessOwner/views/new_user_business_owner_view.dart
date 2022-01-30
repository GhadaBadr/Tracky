import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'dart:math' as math;
import '../../../../local.dart';
import '../controllers/new_user_business_owner_controller.dart';
import 'NewUserBusinessOwnerWidgets/NewUserBusinessOwnerContainer.dart';

class NewUserBusinessOwnerView extends GetView<NewUserBusinessOwnerController> {
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
                        NewUserBusinessOwnerContainer(),
                        SizedBox(
                          height: 15,
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
