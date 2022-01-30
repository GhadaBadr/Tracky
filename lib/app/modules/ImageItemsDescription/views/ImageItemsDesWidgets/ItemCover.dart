// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/app/modules/ImageItemsDescription/controllers/image_items_description_controller.dart';

import '../../../../../local.dart';
import '../../../../../theme.dart';

class ItemsCover extends GetView<ImageItemsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    return Stack(
      children: [
        Container(
          height: 234,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://i.ibb.co/xDJtXns/Image-2.png',
                    ),
                  ),
                ),
                height: 201,
                width: double.infinity,
              ),
              Container(
                height: 33,
              )
            ],
          ),
        ),
        Container(
          height: 201,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.8),
            ],
          )),
        ),
        Container(
          child: Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.white.withOpacity(.7)),
                      child: (LocalizationService.langs.last == 'English')
                          ? Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: SvgPicture.asset(
                                'lib/app/assets/arrow1.svg',
                              ),
                            )
                          : SvgPicture.asset(
                              'lib/app/assets/arrow1.svg',
                            ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppTheme.white.withOpacity(.7)),
                        child: SvgPicture.asset('lib/app/assets/like (1).svg')),
                  )
                ],
              )),
        ),
        Container(
          child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Image.network(
                  "https://i.ibb.co/KDSPQMF/burger-logo-1366-144.png",
                  width: 78.02,
                  height: 95.06,
                  fit: BoxFit.fill,
                ),
              )),
        ),
        Container(
          child: Positioned(
              bottom: 45,
              left: 20,
              right: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.subtitle2!.fontSize,
                            color: AppTheme.white,
                            fontWeight: FontWeight.bold),
                      )),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        child:
                            SvgPicture.asset('lib/app/assets/Group 10498.svg')),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
