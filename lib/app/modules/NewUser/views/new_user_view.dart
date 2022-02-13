import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';

// import '../../../../local.dart';
import '../../../../theme.dart';
import '../controllers/new_user_controller.dart';
import 'NewUserWidgets/NewUserContainer.dart';

class NewUserView extends GetView<NewUserController> {
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
                    NewUserContainer(),
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
                              Get.toNamed(Routes.NEW_USER_BUSINESS_OWNER);
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
