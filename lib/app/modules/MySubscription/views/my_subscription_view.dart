import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:tracky/app/modules/PaymentSuccess/views/payment_success_view.dart';
import 'package:tracky/theme.dart';

import '../../../../local.dart';
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
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: (LocalizationService.langs.last == 'English')
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: SvgPicture.asset(
                      "lib/app/assets/arrow2.svg",
                      width: 16.21,
                      height: 14.64,
                      fit: BoxFit.contain,
                    ),
                  )
                : SvgPicture.asset(
                    "lib/app/assets/arrow2.svg",
                    width: 16.21,
                    height: 14.64,
                    fit: BoxFit.contain,
                  ),
          ),
        ),
        actions: [
          GestureDetector(
            child: SvgPicture.asset("lib/app/assets/Group 10151.svg"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              child: SvgPicture.asset("lib/app/assets/Group 2.svg"),
              onTap: () {},
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
                  Get.to(() => PaymentSuccessView());
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ادفع'.tr,
                              style: TextStyle(
                                  color: AppTheme.yellow,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ))),
    );
  }
}
