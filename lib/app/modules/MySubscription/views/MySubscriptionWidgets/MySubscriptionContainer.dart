// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/MySubscription/controllers/my_subscription_controller.dart';
import 'package:tracky/theme.dart';

class MySubscriptionContainer extends GetView<MySubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          decoration: BoxDecoration(
              color: AppTheme.white, borderRadius: BorderRadius.circular(8)),
          width: double.infinity,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'جدد الاشتراك'.tr,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            constraints: BoxConstraints(minHeight: 95),
                            width: 93,
                            decoration: BoxDecoration(
                                color: AppTheme.lightYellow,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: .5, color: AppTheme.blackgrey)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('3 شهور'.tr,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                Text('20 د.ك'.tr,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                              ],
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(minHeight: 95),
                            width: 93,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: .5, color: AppTheme.blackgrey)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('شهر'.tr,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                Text('10 د.ك'.tr,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 33.0, vertical: 10),
                          child: Text('وسيلة الدفع'.tr,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .fontSize,
                                color: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .color,
                                fontFamily: 'Tajawal-Regular',
                              )),
                        ),
                        Obx(
                          () => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: GestureDetector(
                              onTap: () {
                                controller.isChecked.value =
                                    !controller.isChecked.value;
                              },
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              width: 1,
                                              color: AppTheme.borderGrey)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Container(
                                                width: 17,
                                                height: 17,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: AppTheme.lightYellow,
                                                ),
                                                child: Checkbox(
                                                  checkColor: AppTheme.grey,
                                                  shape: CircleBorder(),
                                                  side: MaterialStateBorderSide
                                                      .resolveWith(
                                                    (states) => BorderSide(
                                                        width: 1.0,
                                                        color: AppTheme.grey),
                                                  ),
                                                  activeColor:
                                                      AppTheme.lightYellow,
                                                  value: controller
                                                      .isChecked.value,
                                                  onChanged: (bool? newValue) {
                                                    controller.isChecked.value =
                                                        newValue!;
                                                  },
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Image.asset(
                                              "lib/app/assets/booksultan_knetIcon.png",
                                              fit: BoxFit.cover,
                                              height: 30,
                                              width: 35,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 1),
                                              child: Text(
                                                'كى نت'.tr,
                                                style: TextStyle(
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .fontSize,
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .color,
                                                  fontFamily: 'Tajawal-Regular',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
