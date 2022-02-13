// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:math' as math;
import '../../../../../local.dart';
import '../../../../../theme.dart';

// ignore: non_constant_identifier_names
AppBar HomeAppBar() {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            GestureDetector(
              child: Container(
                  width: 40,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("lib/app/assets/Group 10151.svg"),
                  )),
              onTap: () {},
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              child: Container(
                  width: 40,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("lib/app/assets/Group 2.svg"),
                  )),
              onTap: () {},
            ),
          ],
        ),
      ),
    ],
    centerTitle: true,
    backgroundColor: AppTheme.yellow,
    elevation: 0,
    leading: Container(
      width: 40,
      height: 40,
      child: Padding(
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
    ),
  );
}
