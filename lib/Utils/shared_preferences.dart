

import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences{
  static late SharedPreferences _preferences;
  static Future init()async => _preferences = await SharedPreferences.getInstance();
  static String primaryColorString = "primColor";

  static String darkMode = "darkMode";

  static Future setIsDarkMode(bool isDarkMode) => _preferences.setBool(darkMode, isDarkMode);
  static bool? getIsDarkMode() => _preferences.getBool(darkMode)??false;



  static  Future setPrimaryColor(String value) async => _preferences.setString(primaryColorString, value);
  static String getPrimaryColor() => _preferences.getString(primaryColorString)??"0xffFE7F00";
}