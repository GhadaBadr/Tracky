// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/home/controllers/home_controller.dart';

import '../../../../../theme.dart';

class HomeItemList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: HomeController()
                    .item
                    .map<Widget>((e) => (e
                            .toString()
                            .contains(controller.press.value))
                        ? Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 3),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                          color: AppTheme.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Image.network(
                                                e['logo'],
                                                height: 84,
                                              )),
                                          SizedBox(width: 10),
                                          Expanded(
                                            flex: 5,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(e['title'],
                                                    style: TextStyle(
                                                        fontSize:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .subtitle1!
                                                                .fontSize,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: AppTheme.dark)),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(e['des'],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                              fontSize: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline3!
                                                                  .fontSize,
                                                              color: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText2!
                                                                  .color)),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              "lib/app/assets/distance (1).svg"),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(e['dis'],
                                                              style: TextStyle(
                                                                  fontSize: 9,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2!
                                                                      .color))
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 30,
                                                              height: 30,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: AppTheme
                                                                      .blackgrey),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {},
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          5.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .call_rounded,
                                                                    size: 20,
                                                                    color: AppTheme
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15,
                                                            ),
                                                            Container(
                                                              width: 30,
                                                              height: 30,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: AppTheme
                                                                      .yellow),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {},
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          5.0),
                                                                  child: SvgPicture
                                                                      .asset(
                                                                          "lib/app/assets/Group 1.svg"),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                        : Container())
                    .toList(),
              ),
              SizedBox(
                height: 220,
              )
            ],
          ),
        ),
      ),
    );
  }
}
