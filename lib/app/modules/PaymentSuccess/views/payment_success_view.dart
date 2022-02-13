import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tracky/theme.dart';

import '../controllers/payment_success_controller.dart';

class PaymentSuccessView extends GetView<PaymentSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.yellow,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SvgPicture.asset('lib/app/assets/Group 34859.svg'),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      'تم الدفع بنجاح'.tr,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 73,
              ),
              Wrap(
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
                        fontSize:
                            Theme.of(context).textTheme.headline5!.fontSize,
                        color: Theme.of(context).textTheme.bodyText1!.color),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '2021-11-1',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.headline5!.fontSize,
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
