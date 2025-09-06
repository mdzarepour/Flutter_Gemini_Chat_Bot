import 'package:chat_bot/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MainController extends ChangeNotifier {
  int _selectedScreenIndex = 0;
  int get selectedScreenIndex => _selectedScreenIndex;

  ThemeData theme = AppTheme.darkTheme;
  bool isDarkThem = true;

  void changeSelectedScreen(int index) {
    _selectedScreenIndex = index;
    notifyListeners();
  }

  void changeTheme() {
    theme = theme == AppTheme.lightTheme
        ? AppTheme.darkTheme
        : AppTheme.lightTheme;
    isDarkThem = isDarkThem ? false : true;
    notifyListeners();
  }
}
