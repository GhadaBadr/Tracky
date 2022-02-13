import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';
// import 'dart:math' as math;
// import '../../../../local.dart';
import '../../../../theme.dart';
import '../controllers/new_user_business_owner_controller.dart';
import 'NewUserBusinessOwnerWidgets/NewUserBusinessOwnerContainer.dart';

class NewUserBusinessOwnerView extends GetView<NewUserBusinessOwnerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            top: 50,
            right: 12,
            left: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.USER_LOGIN);
                      },
                      child: Icon(Icons.arrow_back)

                      // (LocalizationService.langs.last == 'English')
                      //     ? Transform(
                      //         alignment: Alignment.center,
                      //         transform: Matrix4.rotationY(math.pi),
                      //         child:
                      //             SvgPicture.asset("lib/app/assets/arrow.svg"))
                      //     : SvgPicture.asset("lib/app/assets/arrow.svg"),
                      ),
                ),
              ],
            )),
      ]),
    );
  }
}
