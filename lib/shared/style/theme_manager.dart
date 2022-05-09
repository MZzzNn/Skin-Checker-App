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
    // inputDecorationTheme: InputDecorationTheme(
    //   isDense: true,
    //   filled: true,
    //   fillColor:  ColorManager.white,
    //   contentPadding: const EdgeInsets.all(8.0),
    //   // hint style
    //   hintStyle: TextStyle(
    //     fontSize: 12.sp,
    //     fontFamily: FontConstants.fontFamily,
    //     color: ColorManager.grey,
    //     fontWeight: FontWeight.w400,
    //   ),
    //   // label style
    //   labelStyle: TextStyle(
    //     fontSize: 12.sp,
    //     fontFamily: FontConstants.fontFamily,
    //     color: ColorManager.darkGrey,
    //     fontWeight: FontWeight.w500,
    //   ),
    //   // error style
    //   errorStyle:TextStyle(
    //     fontSize: 12.sp,
    //     fontFamily: FontConstants.fontFamily,
    //     color: ColorManager.error,
    //     fontWeight: FontWeight.w400,
    //   ),
    //
    //   //  border
    //   border: const UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.textGrey,
    //     ),
    //   ),
    //
    //   // enabled border
    //   enabledBorder: const UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.textGrey,
    //     ),
    //   ),
    //
    //   // focused border
    //   focusedBorder: const UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.primary,
    //     ),
    //   ),
    //
    //   // error border
    //   errorBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.error,
    //     ),
    //   ),
    //
    //   // focused error border
    //   focusedErrorBorder: const UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.primary,
    //     ),
    //   ),
    // ),

    /// Setting the default font for the app.
    fontFamily: "Tajawal",
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),

  );


}
