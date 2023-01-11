import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  late ThemeMode _SelectedTheme;
  ThemeMode get SelectedTheme => _SelectedTheme;

  ThemeMode light = ThemeMode.light;
  ThemeMode Dark = ThemeMode.dark;

  ThemeProvider() {
    bool isDarkMode = false;
    _SelectedTheme = isDarkMode ? Dark : light;
  }
  swaptheme() {
    _SelectedTheme = _SelectedTheme == Dark ? light : Dark;
    notifyListeners();
  }
}
