import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:tracky/app/modules/UserLogin/controllers/user_login_controller.dart';

import 'package:tracky/app/routes/app_pages.dart';
import 'package:tracky/theme.dart';

import 'local.dart';

Drawer myDrawer(BuildContext context) {
  return Drawer(
      child: CustomScrollView(slivers: [
    SliverFillRemaining(
      hasScrollBody: false,
      child: GetBuilder(
        init: (UserLoginController()),
        builder: (c) => Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              children: [
                Container(
                  height: 205,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/app/assets/Group 34867.png',
                            ),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, right: 8),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Get.put(UserLoginController()).nameCtr.text.isEmpty
                                ? Expanded(
                                    child: Text(
                                      'دخول  |  تسجيل'.tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.white,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .fontSize),
                                    ),
                                  )
                                : Expanded(
                                    child: Text(
                                      Get.put(UserLoginController())
                                          .nameCtr
                                          .text
                                          .tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.white,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .fontSize),
                                    ),
                                  ),
                            SizedBox(),
                            Get.put(UserLoginController()).nameCtr.text.tr ==
                                    UserLoginController().name.tr
                                ? Image.asset(
                                    'lib/app/assets/Logo.png',
                                    width: 104,
                                    height: 83,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'lib/app/assets/burger-logo_1366-144.png',
                                    width: 78.02,
                                    height: 95.06,
                                    fit: BoxFit.cover,
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Row(
                    children: [
                      SvgPicture.asset('lib/app/assets/home (3).svg'),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('الصفحة الرئيسية'.tr,
                            style: TextStyle(
                              color: AppTheme.blackgrey,
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .fontSize,
                            )),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.HOME);
                  },
                ),
                Get.put(UserLoginController()).nameCtr.text.tr ==
                        UserLoginController().name
                    ? Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset('lib/app/assets/padlock.svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('تغير كلمة المرور'.tr,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.blackgrey,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset('lib/app/assets/Path 327.svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('المفضلة'.tr,
                                      style: TextStyle(
                                        color: AppTheme.blackgrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/app/assets/folder (2).svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('بياناتي'.tr,
                                      style: TextStyle(
                                        color: AppTheme.blackgrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, Routes.MY_DATA);
                            },
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset('lib/app/assets/dinner.svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('الأقسام'.tr,
                                      style: TextStyle(
                                        color: AppTheme.blackgrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, Routes.SECTIONS);
                            },
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/app/assets/wedding-dinner.svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('المنيو'.tr,
                                      style: TextStyle(
                                        color: AppTheme.blackgrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, Routes.MENU);
                            },
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/app/assets/Group 34855.svg'),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text('اشتراكي'.tr,
                                      style: TextStyle(
                                        color: AppTheme.blackgrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .fontSize,
                                      )),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.MY_SUBSCRIPTION);
                            },
                          ),
                        ],
                      ),
                ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset('lib/app/assets/Group 10501.svg'),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text('Language'.tr,
                              style: TextStyle(
                                color: AppTheme.blackgrey,
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .fontSize,
                              )),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (LocalizationService.langs.last == 'English') {
                        LocalizationService.langs.last = ('اللغة العربيه');
                        print(LocalizationService.langs.last);

                        LocalizationService().changeLocale(
                            LocalizationService.langs.last.toString());
                      } else if (LocalizationService.langs.last ==
                          'اللغة العربيه') {
                        LocalizationService.langs.last = ('English');
                        print(LocalizationService.langs.last);

                        LocalizationService().changeLocale(
                            LocalizationService.langs.last.toString());
                      }
                    }),
                ListTile(
                  title: Row(
                    children: [
                      SvgPicture.asset('lib/app/assets/Path 1297.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('الخروج'.tr,
                            style: TextStyle(
                              color: AppTheme.blackgrey,
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .fontSize,
                            )),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.USER_LOGIN);
                  },
                ),
              ],
            ),
            Expanded(
              child: Container(
                  child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          child: SvgPicture.asset(
                            'lib/app/assets/Group 34865.svg',
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          child: SvgPicture.asset(
                            'lib/app/assets/Group 34863.svg',
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    ),
  ]));
}
