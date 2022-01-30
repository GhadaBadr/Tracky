// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/Sections/controllers/sections_controller.dart';

import '../../../../../theme.dart';

class SectionItemList extends GetView<SectionsController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              children: SectionsController().item.map<Widget>((e) {
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              // height: 63,
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              padding: EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 15),
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(e,
                                                style: TextStyle(
                                                    fontSize: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2!
                                                        .fontSize,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppTheme.dark)),
                                            GestureDetector(
                                              onTap: () {},
                                              child: SvgPicture.asset(
                                                  "lib/app/assets/more.svg"),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ));
              }).toList(),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
