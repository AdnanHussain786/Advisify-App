import 'package:flutter/material.dart';

import '../Utils/shared_preferences.dart';
import '../theme/theme_manager.dart';

class CustomAppColors{
  static Color scaffoldBackground = CustomAppColors.blackColor;

  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color greyColorForButton = Color(0XFFE0E0E0);
  static const Color darkGreyColorForButton = Color(0XFF4F4F4F);

  static Color primaryColor =
  Color(int.parse(AppSharedPreferences.getPrimaryColor()));


}

class CustomTextStyles{
  TextStyle title12PrimaryColor = TextStyle(
    color: CustomAppColors.primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  TextStyle primaryText14Bold = TextStyle(
    color: CustomAppColors.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle whiteText12Normal = TextStyle(
    color: CustomAppColors.whiteColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );
  static TextStyle blackText14Bold = TextStyle(
    color: CustomAppColors.blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle greyText12Normal = TextStyle(
    color: CustomAppColors.greyColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static TextStyle greyText16Normal = TextStyle(
    color: CustomAppColors.greyColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle whiteText28Bold = TextStyle(
    color: CustomAppColors.whiteColor,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle whiteText14Bold = TextStyle(
    color: CustomAppColors.whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );



}

class ConstValues{
  static final ThemeManager themeManager=ThemeManager();
}