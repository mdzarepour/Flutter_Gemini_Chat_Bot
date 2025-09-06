import 'package:chat_bot/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_text_theme.dart';

class AppWidgetTheme {
  AppWidgetTheme._();

  // Dark Theme Widget Themes -->
  static AppBarTheme appBarThemeData = const AppBarTheme(
    backgroundColor: AppColors.materialSecondBlue,
    centerTitle: true,
  );
  static BottomNavigationBarThemeData bottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
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
        side: const BorderSide(color: AppColors.materialWhite),
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

  // Light Theme Widget Themes -->
  static AppBarTheme lightAppBarThemeData = const AppBarTheme(
    backgroundColor: AppColors.lightAppBarBackground,
    centerTitle: true,
  );
  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 28),
        unselectedIconTheme: IconThemeData(size: 28),
        selectedItemColor: AppColors.lightPrimaryColor,
        unselectedItemColor: AppColors.darkGreyTextColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.lightAppBarBackground,
        elevation: 0,
      );
  static FilledButtonThemeData lightFilledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.lightPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.lightBorderColor),
      ),
    ),
  );
  static InputDecorationTheme textFieldLightTheme = InputDecorationTheme(
    labelStyle: AppTextTheme.lightTextTheme.titleLarge,
    prefixIconColor: AppColors.darkTextColor,
    hintStyle: AppTextTheme.lightTextTheme.titleMedium,
    filled: true,
    fillColor: AppColors.lightContainerColor,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.lightBorderColor),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.lightBorderColor),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.lightPrimaryColor),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
