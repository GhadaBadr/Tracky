// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tracky/app/modules/home/controllers/home_controller.dart';
import 'dart:math' as math;
import '../../../../../local.dart';

class HomeAppBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
          child: Builder(
              builder: (context) => GestureDetector(
                    child: (LocalizationService.langs.last == 'English')
                        ? Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child:
                                SvgPicture.asset("lib/app/assets/Group 34.svg"))
                        : SvgPicture.asset("lib/app/assets/Group 34.svg"),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 0),
          child: Row(
            children: [
              GestureDetector(
                child: SvgPicture.asset("lib/app/assets/Group 10151.svg"),
                onTap: () {},
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                child: SvgPicture.asset("lib/app/assets/Group 2.svg"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
