import 'package:flutter/material.dart';

import '../Utils/shared_preferences.dart';

class ThemeManager with ChangeNotifier{
  ThemeMode _themeMode=ThemeMode.light;

  get themeData=>_themeMode;



  toggleTheme(bool isDark){
    _themeMode=isDark?ThemeMode.dark:ThemeMode.light;
    AppSharedPreferences.setIsDarkMode(isDark);

    notifyListeners();

  }
}