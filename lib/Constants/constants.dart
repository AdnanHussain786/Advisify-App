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
  static const Color greyColorForIcons = Color(0XFF776F69);
  static const Color redColor = Color(0xFFDC3545);



  static Color fieldShadowColor = darkGreyColorForButton.withValues(alpha: 0.07);

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
  static const double heightOfTextField = 56;
  static const double heightOfSearchField = 47;
  static const EdgeInsetsGeometry textFieldsMargins = EdgeInsets.fromLTRB(0, 0, 0, 15);
}

class CustomBoxDecoration {
  static BoxDecoration textFormFieldDecoration({Color? indicatorColor}) {
    return BoxDecoration(
      // color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      boxShadow: [
        BoxShadow(
          color: CustomAppColors.fieldShadowColor,
          offset: const Offset(0, 0),
          blurRadius: 2,
          spreadRadius: 0,
        )
      ],
    );
  }

  static BoxDecoration customListDecoration({Color? backgroundColor}) {
    return BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: CustomAppColors.blackColor.withValues(alpha: 0.1),
          // color: CustomAppColors.blackColor,
          offset: Offset(0, 2),
          blurRadius: 3,
          spreadRadius: 0,
        ),
      ],
    );
  }

  static BoxDecoration customBoxDecorationPackages({Color? backgroundColor}) {
    return BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: CustomAppColors.blackColor.withValues(alpha: 0.1),
          // color: CustomAppColors.blackColor,
          offset: const Offset(0, 0),
          blurRadius: 3,
          spreadRadius: 3,
        ),
      ],
    );
  }

  static BoxDecoration customBoxDecorationWithBorder({Color? backgroundColor}) {
    return BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: CustomAppColors.primaryColor),
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: CustomAppColors.fieldShadowColor,
          offset: const Offset(0, 0),
          blurRadius: 2,
          spreadRadius: 0,
        ),
      ],
    );
  }

  static BoxShadow customListBoxShadow() {
    return BoxShadow(
      color: CustomAppColors.blackColor.withValues(alpha: 0.1),
      offset: Offset(0, 2),
      blurRadius: 3,
      spreadRadius: 1,
    );
  }
}