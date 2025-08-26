import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_text_theme.dart';

class AppWidgetTheme {
  AppWidgetTheme._();
  static AppBarThemeData appBarThemeData = AppBarThemeData(
    backgroundColor: AppColors.materialSecondBlue,
    centerTitle: true,
  );
  static BottomNavigationBarThemeData bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 28),
        unselectedIconTheme: IconThemeData(size: 28),
        selectedItemColor: AppColors.materialWhite,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.materialSecondBlue,
        elevation: 0,
      );

  static FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.materialWhite),
      ),
    ),
  );

  static InputDecorationTheme textFieldDarkTheme = InputDecorationTheme(
    labelStyle: AppTextTheme.darkTextTheme.titleLarge,
    prefixIconColor: AppColors.materialWhite,
    hintStyle: AppTextTheme.darkTextTheme.titleMedium,
    filled: true,
    fillColor: AppColors.materialThirdBlue,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.materialWhite),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.materialWhite),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.materialWhite),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
