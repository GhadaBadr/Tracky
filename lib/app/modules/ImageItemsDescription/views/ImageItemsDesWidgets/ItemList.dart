// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/ImageItemsDescription/controllers/image_items_description_controller.dart';

import '../../../../../theme.dart';

class ImageItemListAll extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: ImageItemsDescriptionController().item.map<Widget>((e) {
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              padding: EdgeInsets.symmetric(vertical: 2),
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
                                  SizedBox(width: 20),
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
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
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
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0),
                                                child: Wrap(
                                                  runAlignment:
                                                      WrapAlignment.end,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.end,
                                                  children: [
                                                    Text(e['dis'],
                                                        style: TextStyle(
                                                            fontSize: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .subtitle2!
                                                                .fontSize,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                AppTheme.dark)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text('دينار'.tr,
                                                        style: TextStyle(
                                                            fontSize: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2!
                                                                .fontSize,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                AppTheme.dark)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
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
              height: 220,
            )
          ],
        ),
      ),
    );
  }
}

class ImageItemList extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: ImageItemsDescriptionController()
                  .item
                  .map<Widget>((e) => (e
                          .toString()
                          .contains(controller.press.value))
                      ? Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    padding: EdgeInsets.symmetric(vertical: 2),
                                    decoration: BoxDecoration(
                                        color: AppTheme.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Image.network(
                                              e['logo'],
                                              height: 90,
                                            )),
                                        SizedBox(width: 20),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 15),
                                                      child: Text(e['title'],
                                                          style: TextStyle(
                                                              fontSize: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .subtitle2!
                                                                  .fontSize,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: AppTheme
                                                                  .dark)),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10.0),
                                                      child: Wrap(
                                                        runAlignment:
                                                            WrapAlignment.end,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .end,
                                                        children: [
                                                          Text(e['dis'],
                                                              style: TextStyle(
                                                                  fontSize: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .subtitle2!
                                                                      .fontSize,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: AppTheme
                                                                      .dark)),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text('دينار'.tr,
                                                              style: TextStyle(
                                                                  fontSize: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2!
                                                                      .fontSize,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: AppTheme
                                                                      .dark)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
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
    );
  }
}
