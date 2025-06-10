import 'package:advisify/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var primaryColor = CustomAppColors.primaryColor;

const AppBarTheme appbarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
  centerTitle: true,
  scrolledUnderElevation: 0,
);

void updateStatusBar(Brightness brightness) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Keep it transparent
    statusBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
    systemNavigationBarColor: brightness == Brightness.dark ? Colors.black : Colors.white,
    systemNavigationBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
  ));
}

ThemeData lightTheme = ThemeData(
  fontFamily: 'manrope',
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: primaryColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  ),
  textTheme: TextTheme(
    // displayLarge:TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: CustomAppColors.blackColor),
    // displayMedium: CustomTextStyles.blackText14Bold,
    // displaySmall:CustomTextStyles.blackText14Bold ,
    // titleSmall: CustomTextStyles.blackText14Bold,
    // titleMedium: CustomTextStyles.blackText14Bold,
    // titleLarge: CustomTextStyles.blackText14Bold,
    bodyLarge: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: CustomAppColors.blackColor),
    bodyMedium:TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: CustomAppColors.blackColor) ,
    bodySmall:TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: CustomAppColors.blackColor),
    // headlineLarge:CustomTextStyles.blackText14Bold ,
    // headlineMedium:CustomTextStyles.blackText14Bold ,
    // headlineSmall:CustomTextStyles.blackText14Bold ,
    // labelLarge: CustomTextStyles.blackText14Bold,
    // labelMedium:CustomTextStyles.blackText14Bold ,
    // labelSmall:CustomTextStyles.blackText14Bold ,


  ),
  appBarTheme: appbarTheme,
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'manrope',
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: CustomAppColors.whiteColor),
    bodyMedium:TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: CustomAppColors.whiteColor) ,
    bodySmall:TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: CustomAppColors.whiteColor),
  ),
  appBarTheme: appbarTheme,
);
