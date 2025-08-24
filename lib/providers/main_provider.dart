import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  int _selectedScreenIndex = 0;
  int get selectedScreenIndex => _selectedScreenIndex;

  void changeSelectedScreen(int index) {
    _selectedScreenIndex = index;
    notifyListeners();
  }
}
