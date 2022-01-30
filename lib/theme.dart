import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
      fontFamily: 'Almarai-Regular',
      appBarTheme: AppBarTheme(
          color: AppTheme.yellow,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: AppTheme.dark,
            fontSize: 20,
            fontFamily: 'Almarai-Regular',
          )),
      // dividerColor: Colors.transparent,
      // canvasColor: Color(0xff4852c1),
      // primaryColor: Color(0xfff3f3f3),

      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 32,
          color: Color(0xff343434),
        ),
        bodyText2: TextStyle(
          fontSize: 13,
          color: Color(0xff797985),
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          color: Color(0xffFFFFFF),
        ),
        subtitle2: TextStyle(
          fontSize: 18,
        ),
        headline6: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
        headline5: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xff4B4B4B)),
        headline4: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          fontSize: 28,
          color: Color(0xff343434),
        ),
        headline1: TextStyle(
          fontSize: 14,
        ),
      ));
}

class AppTheme {
  static Color white = Color(0xffFFFFFF);
  static Color borderGrey = Color(0xffEFEFF4);
  static Color grey = Color(0xff707070);
  static Color yellow = Color(0xffFBE773);
  static Color blackgrey = Color(0xff474746);
  static Color lightYellow = Color(0xffFFF6C3);
  static Color yellow2 = Color(0xffFAF2C3);
  static Color dark = Color(0xff3C3C4B);
  static Color bg = Color(0xffFAF8FF);
  static Color bg1 = Color(0xffE7E6E6);
}
