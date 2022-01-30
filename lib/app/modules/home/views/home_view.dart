import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../drawer.dart';
import '../controllers/home_controller.dart';
import 'HomeWidgets/Appbar.dart';
import 'HomeWidgets/ButtonList.dart';
import 'HomeWidgets/ListImages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     actions: [
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //         child: Row(
        //           children: [
        //             GestureDetector(
        //               child: Image.asset("lib/app/assets/Group 10151.png"),
        //               onTap: () {},
        //             ),
        //             SizedBox(
        //               width: 25,
        //             ),
        //             GestureDetector(
        //               child: Image.asset("lib/app/assets/Group 2.png"),
        //               onTap: () {},
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //     centerTitle: true,
        //     backgroundColor: AppTheme.yellow,
        //     elevation: 0,
        //     leading: Builder(
        //       builder: (context) => GestureDetector(
        //         child: Image.asset("lib/app/assets/Group 34.png"),
        //         onTap: () {
        //           Scaffold.of(context).openDrawer();
        //         },
        //       ),
        //     )),
        drawer: myDrawer(context),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("lib/app/assets/bg2.png"),
            fit: BoxFit.fill,
          )),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              SizedBox(
                height: 43,
              ),
              HomeAppBar(),
              HomeListImages(),
              HomeListButtons(),
            ]),
          ),
        ),
        bottomSheet: BottomSheet(
          elevation: 0,
          builder: (c) => Row(
            children: [
              Expanded(
                  child: Image.network(
                'https://i.ibb.co/tcSfTbb/Image-1.png',
                height: 95,
                width: 394,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
            ],
          ),
          onClosing: () {},
        ));
  }
}
