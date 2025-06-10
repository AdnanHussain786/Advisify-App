

import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences{
  static late SharedPreferences _preferences;

  static String primaryColorString = "primColor";

  static Future init()async => _preferences = await SharedPreferences.getInstance();

  static  Future setPrimaryColor(String value) async => _preferences.setString(primaryColorString, value);
  static String getPrimaryColor() => _preferences.getString(primaryColorString)??"0xffFE7F00";
}