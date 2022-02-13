import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../drawer.dart';

import '../controllers/home_controller.dart';

import 'HomeWidgets/Appbar.dart';
import 'HomeWidgets/ButtonList.dart';
import 'HomeWidgets/ItemList.dart';
import 'HomeWidgets/ListImages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(),
        drawer: myDrawer(context),
        body: Column(
          children: [
            HomeListImages(),
            HomeListButtons(),
            Expanded(child: HomeItemList())
          ],
        ),
        bottomSheet: BottomSheet(
          enableDrag: false,
          elevation: 0,
          builder: (c) => Image.network(
            'https://i.ibb.co/tcSfTbb/Image-1.png',
            height: 95,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          onClosing: () {},
        ));
  }
}
