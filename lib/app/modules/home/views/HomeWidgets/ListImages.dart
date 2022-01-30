// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tracky/app/modules/home/controllers/home_controller.dart';
import 'package:tracky/app/routes/app_pages.dart';
import '../../../../../theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeListImages extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 0, bottom: 5),
        child: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              disableCenter: true,
              //enableInfiniteScroll: false,
              autoPlay: true,
              viewportFraction: .75,
            ),
            items: HomeController().imges.map<Widget>((e) {
              return FittedBox(
                child: Container(
                    margin: EdgeInsets.all(2),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.IMAGE_ITEMS_DESCRIPTION,
                                arguments: {'title': e['title']});
                          },
                          child: Image.network(
                            e['img'],
                            fit: BoxFit.fill,
                            width: 285,
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 30),
                                    child: Text(
                                      e['title'],
                                      style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .fontSize,
                                          color: AppTheme.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: SvgPicture.asset(
                                              "lib/app/assets/Group 10153.svg"),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: SvgPicture.asset(
                                              "lib/app/assets/Group 10144.svg"),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )),
              );
            }).toList(),
          ),
        ));

    //     // GFCarousel(
    //     //   height: 178,
    //     //   pagerSize: 285,
    //     //   enlargeMainPage: false,
    //     //   autoPlay: true,
    //     //   viewportFraction: .7,
    //     //   initialPage: 0,
    //     //   items: HomeController().imges.map<Widget>(
    //     //     (e) {
    //     //       return Container(
    //     //           margin: EdgeInsets.all(1),
    //     //           child: ClipRRect(
    //     //               child: Stack(
    //     //             children: [
    //     //               GestureDetector(
    //     //                 onTap: () {
    //     //                   Navigator.pushNamed(
    //     //                       context, Routes.IMAGE_ITEMS_DESCRIPTION,
    //     //                       arguments: {'title': e['title']});
    //     //                 },
    //     //                 child: Image.network(
    //     //                   e['img'],
    //     //                   fit: BoxFit.cover,
    //     //                 ),
    //     //               ),
    //     //               Positioned(
    //     //                   bottom: 5,
    //     //                   left: 0,
    //     //                   right: 0,
    //     //                   child: Container(
    //     //                     child: Row(
    //     //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     //                       children: [
    //     //                         Padding(
    //     //                           padding: const EdgeInsets.symmetric(
    //     //                               vertical: 10.0, horizontal: 30),
    //     //                           child: Text(
    //     //                             e['title'],
    //     //                             style: TextStyle(
    //     //                                 fontSize: Theme.of(context)
    //     //                                     .textTheme
    //     //                                     .headline4!
    //     //                                     .fontSize,
    //     //                                 color: AppTheme.white),
    //     //                           ),
    //     //                         ),
    //     //                         Padding(
    //     //                           padding:
    //     //                               const EdgeInsets.symmetric(horizontal: 20),
    //     //                           child: Row(
    //     //                             children: [
    //     //                               GestureDetector(
    //     //                                 onTap: () {},
    //     //                                 child: SvgPicture.asset(
    //     //                                     "lib/app/assets/Group 10153.svg"),
    //     //                               ),
    //     //                               SizedBox(
    //     //                                 width: 20,
    //     //                               ),
    //     //                               GestureDetector(
    //     //                                 onTap: () {},
    //     //                                 child: SvgPicture.asset(
    //     //                                     "lib/app/assets/Group 10144.svg"),
    //     //                               ),
    //     //                             ],
    //     //                           ),
    //     //                         )
    //     //                       ],
    //     //                     ),
    //     //                   ))
    //     //             ],
    //     //           )));
    //     //     },
    //     //   ).toList(),
    //     // ),

    //     );

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Container(
    //     padding: EdgeInsets.only(left: 15, right: 15, top: 24, bottom: 0),
    //     child: Row(
    //       children: HomeController().imges.map<Widget>((e) {
    //         return GestureDetector(
    //           onTap: () {
    //             Navigator.pushNamed(context, Routes.IMAGE_ITEMS_DESCRIPTION,
    //                 arguments: {'title': e['title']});
    //           },
    //           child: Stack(
    //             children: [
    //               Stack(
    //                 children: [
    //                   Container(
    //                     height: 205,
    //                     color: AppTheme.yellow,
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 3.0),
    //                     child: Image.network(
    //                       e['img'],
    //                       width: 285,
    //                       height: 178,
    //                       fit: BoxFit.fill,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               Positioned(
    //                   bottom: 30,
    //                   left: 0,
    //                   right: 0,
    //                   child: Container(
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(
    //                               vertical: 10.0, horizontal: 30),
    //                           child: Text(
    //                             e['title'],
    //                             style: TextStyle(
    //                                 fontSize: Theme.of(context)
    //                                     .textTheme
    //                                     .headline4!
    //                                     .fontSize,
    //                                 color: AppTheme.white),
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding:
    //                               const EdgeInsets.symmetric(horizontal: 20),
    //                           child: Row(
    //                             children: [
    //                               GestureDetector(
    //                                 onTap: () {},
    //                                 child: SvgPicture.asset(
    //                                     "lib/app/assets/Group 10153.svg"),
    //                               ),
    //                               SizedBox(
    //                                 width: 20,
    //                               ),
    //                               GestureDetector(
    //                                 onTap: () {},
    //                                 child: SvgPicture.asset(
    //                                     "lib/app/assets/Group 10144.svg"),
    //                               ),
    //                             ],
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ))
    //             ],
    //           ),
    //         );
    //       }).toList(),
    //     ),
    //   ),
    // );
  }
}
