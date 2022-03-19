import 'package:flutter/material.dart';

import '../../constants/text/text_constants.dart';

// https://material.io/design/typography/the-type-system.html#type-scale

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5

class AppThemeLight {
  static AppThemeLight? _instance;
  static AppThemeLight get instance => _instance ??= AppThemeLight._init();

  AppThemeLight._init();

  static const bgColor = Color(0xfff5f5f5);
  static const outerSpace = Color(0xff263238);
  static const flamingo = Color(0xfff05a22);
  static const shaft = Color(0xff2d2d2d); //  text find your stay
  static const scorpion = Color(0xff595959); // search

  static const deco = Color.fromARGB(240, 90, 34, 12);
  static const white = Color(0xffffffff);

  static const shark = Color(0xff292931); // card name text, 14 techno
  static const gray = Color(0xff898989); // card location text, 12 gordita

  static const givry = Color(0xffF9DDCF); //bottomNavigationBarTheme// unselectedItemColor

  static const emperor = Color(0xff545454);

  // static const filt = Color.fromARGB(240, 90, 34, 35);

  ThemeData get themeDataLight => ThemeData(
        scaffoldBackgroundColor: bgColor,
        brightness: Brightness.light,
        //fontFamily: fontFamily,
        textTheme: const TextTheme(
            subtitle2: TextStyle(fontWeight: FontWeight.w400),
            headline6: TextStyle(
                fontFamily: TextConstant.fontFamilyTechna, color: shaft), //  text find your stay

            caption: TextStyle(
                fontFamily: TextConstant.fontFamilyTahoma,
                color: scorpion), // search and text cities

            button: TextStyle(
                fontSize: 12,
                fontFamily: TextConstant.fontFamilyGordita,
                fontWeight: FontWeight.w400,
                color: flamingo)), // view all

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: flamingo, unselectedItemColor: givry),

        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: flamingo,
              onPrimary: outerSpace,
              secondary: gray, // card location text,
              onSecondary: shark, // card name text, 52 review text
              error: outerSpace,
              onError: outerSpace,
              surface: flamingo,
              background: white, // searchicon fillcolor, 49+,
              onSurface: deco, // BoxShadowCustom
              onBackground: outerSpace, // SearchInputField
            ),
      );
}
