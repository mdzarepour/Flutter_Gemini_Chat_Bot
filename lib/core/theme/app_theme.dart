import 'package:chat_bot/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_widget_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  // Dark Theme -->
  static final ThemeData darkTheme = ThemeData(
    splashColor: Colors.transparent,
    textTheme: AppTextTheme.darkTextTheme,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: AppColors.materialFirstBlue,
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      surface: AppColors.materialFirstBlue,
      onSurface: AppColors.materialWhite,
      primary: AppColors.materialThirdBlue,
      onPrimary: AppColors.materialWhite,
      secondary: AppColors.materialFirstBlue,
      onSecondary: AppColors.materialWhite,
      primaryContainer: AppColors.materialGrey,
      onPrimaryContainer: AppColors.materialSecondBlue,
      secondaryContainer: AppColors.materialSoftGreyWO,
    ),
    appBarTheme: AppWidgetTheme.appBarThemeData,
    filledButtonTheme: AppWidgetTheme.filledButtonTheme,
    inputDecorationTheme: AppWidgetTheme.textFieldDarkTheme,
    bottomNavigationBarTheme: AppWidgetTheme.bottomNavigationBarTheme,
  );

  // Light Theme -->
  static final ThemeData lightTheme = ThemeData(
    splashColor: Colors.transparent,
    textTheme: AppTextTheme.lightTextTheme,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackground,
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      surface: AppColors.lightScaffoldBackground,
      onSurface: AppColors.darkTextColor,
      primary: AppColors.lightPrimaryColor,
      onPrimary: AppColors.materialWhite,
      secondary: AppColors.lightPrimaryColor,
      onSecondary: AppColors.darkTextColor,
      primaryContainer: AppColors.lightContainerColor,
      onPrimaryContainer: AppColors.lightContainerColor,
      secondaryContainer: AppColors.lightContainerColor,
    ),
    appBarTheme: AppWidgetTheme.lightAppBarThemeData,
    filledButtonTheme: AppWidgetTheme.lightFilledButtonTheme,
    inputDecorationTheme: AppWidgetTheme.textFieldLightTheme,
    bottomNavigationBarTheme: AppWidgetTheme.lightBottomNavigationBarTheme,
  );
}
