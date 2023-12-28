import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/themes/font.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: primaryBetterColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: primaryBetterColor,
      textStyle: p3Medium.copyWith(
        color: secondaryWhiteColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: grey300Color,
      ),
    ),
    outlineBorder: BorderSide(
      width: 0.5,
      color: grey300Color,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: grey300Color,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryBetterColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: otherCodmiumRedColor),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: otherCodmiumRedColor,
      ),
    ),
  ),
  scaffoldBackgroundColor: secondaryWhiteColor,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      side: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: primaryEbonyClayColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryBetterColor,
  ),
);
