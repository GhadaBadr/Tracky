import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/app/modules/NewUserBusinessOwner/views/new_user_business_owner_view.dart';

import '../../../../local.dart';
import '../../../../theme.dart';
import '../controllers/new_user_controller.dart';
import 'NewUserWidgets/NewUserContainer.dart';

class NewUserView extends GetView<NewUserController> {
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
                        NewUserContainer(),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          decoration: BoxDecoration(
                              color: AppTheme.yellow,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => NewUserBusinessOwnerView());
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
