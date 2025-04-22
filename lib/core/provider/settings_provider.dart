import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider  extends ChangeNotifier{
  var currentTheme = ThemeMode.light;
  var currentLanguage = Locale('en');

  void changeLanguage(String languageCode) {
    currentLanguage =Locale(languageCode) ;
    notifyListeners();
  }


  void changeTheme(ThemeMode themeMode) {
    currentTheme = themeMode;
    notifyListeners();
  }
  void toggleTheme() {
    if (currentTheme == ThemeMode.light) {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.light;
    }
    notifyListeners();
  }

}