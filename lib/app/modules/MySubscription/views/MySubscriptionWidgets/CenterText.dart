// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/MySubscription/controllers/my_subscription_controller.dart';

class CenterText extends GetView<MySubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SvgPicture.asset("lib/app/assets/Group 34857.svg"),
          ),
          Text(
            'ينتهي اشتراكك في:'.tr,
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                color: Theme.of(context).textTheme.bodyText1!.color),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '2021-10-2',
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                  color: Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
        ],
      ),
    );
  }
}
