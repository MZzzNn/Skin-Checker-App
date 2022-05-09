import 'package:flutter/material.dart';

import 'color_manager.dart';

class ThemeManager {
  ThemeManager._();
  static ThemeData get lightTheme => _lightTheme;

  static final ThemeData _lightTheme = ThemeData(
    /// Setting the main colors of the app.
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity50,
    scaffoldBackgroundColor: ColorManager.white,

    /// Setting the default icon color and size for the app.
    iconTheme: const IconThemeData(
      color: ColorManager.textPrimColor,
      size: 22,
    ),

    /// Setting the default button theme for the app.
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: ColorManager.lightPrimary,
      // hint style
      hintStyle: TextStyle(
        fontSize: 17,
        fontFamily: "Tajawal",
        color: ColorManager.textPrimColor,
        fontWeight: FontWeight.w500,
      ),
      // label style
      labelStyle: TextStyle(
        fontSize: 17,
        fontFamily: "Tajawal",
        color: ColorManager.textPrimColor,
        fontWeight: FontWeight.w500,
      ),
      // error style
      errorStyle: TextStyle(
        fontSize: 17,
        fontFamily: "Tajawal",
        color: ColorManager.error,
        fontWeight: FontWeight.w500,
      ),

      //  border
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none),
    ),

    /// Setting the default font for the app.
    fontFamily: "Tajawal",
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),

  );


}
