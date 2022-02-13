import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/routes/app_pages.dart';
import 'package:tracky/theme.dart';

import '../controllers/my_subscription_controller.dart';
import 'MySubscriptionWidgets/CenterText.dart';
import 'MySubscriptionWidgets/MySubscriptionContainer.dart';

class MySubscriptionView extends GetView<MySubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        title: Text('اشتراكي'.tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        toolbarHeight: 80,
        leading: GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.HOME);
            },
            child: Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.arrow_back,
                  color: AppTheme.blackgrey,
                ))),
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
                        child:
                            SvgPicture.asset("lib/app/assets/Group 10151.svg"),
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
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [CenterText(), MySubscriptionContainer()],
          ),
        ),
      ]),
      bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (c) => Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.PAYMENT_SUCCESS);
                },
                child: Container(
                  color: AppTheme.white,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppTheme.blackgrey,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(36),
                            topLeft: Radius.circular(36))),
                    height: 60,
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text('ادفع'.tr,
                            style: TextStyle(
                                color: AppTheme.yellow,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .fontSize,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ))),
    );
  }
}
