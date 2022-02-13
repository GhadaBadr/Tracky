// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracky/theme.dart';
import 'app/routes/app_pages.dart';
import 'local.dart';

void main() {
  runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => // Wrap your app

      GetMaterialApp(
    title: "Application",
    initialRoute: AppPages.INITIAL,
    theme: myTheme(),
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    translations: LocalizationService(),
    // )
  ));
}
