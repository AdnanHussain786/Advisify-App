import 'package:flutter/material.dart';

import '../Utils/shared_preferences.dart';

class CustomAppColors{
  static Color scaffoldBackground = CustomAppColors.blackColor;

  static const Color blackColor = Colors.black;

  static Color primaryColor =
  Color(int.parse(AppSharedPreferences.getPrimaryColor()));


}

class CustomTextStyles{
  TextStyle title12PrimaryColor = TextStyle(
    color: CustomAppColors.primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}