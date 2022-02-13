// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/Menu/controllers/menu_controller.dart';

import '../../../../../theme.dart';

class ItemList extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: MenuController().item.map<Widget>((e) {
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Image.network(
                                        e['logo'],
                                        height: 90,
                                      )),
                                  SizedBox(width: 15),
                                  Expanded(
                                    flex: 5,
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
                                            Expanded(
                                              child: Text(e['title'],
                                                  style: TextStyle(
                                                      fontSize:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .subtitle2!
                                                              .fontSize,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppTheme.dark)),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: SvgPicture.asset(
                                                    "lib/app/assets/more.svg"),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(e['des'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline3!
                                                              .fontSize,
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2!
                                                          .color)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(e['dis'],
                                                style: TextStyle(
                                                    fontSize: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2!
                                                        .fontSize,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppTheme.dark)),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text('دينار'.tr,
                                                style: TextStyle(
                                                    fontSize: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2!
                                                        .fontSize,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppTheme.dark)),
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
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
