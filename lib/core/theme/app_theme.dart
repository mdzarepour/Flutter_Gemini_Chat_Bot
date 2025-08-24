import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_widget_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    splashColor: Colors.transparent,
    textTheme: AppTextTheme.darkTextTheme,
    splashFactory: NoSplash.splashFactory,
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      surface: AppColors.materialFirstBlue,
      onSurface: AppColors.materialWhite,
      primary: AppColors.materialThirdBlue,
      onPrimary: AppColors.materialWhite,
      secondary: AppColors.materialFirstBlue,
      onSecondary: AppColors.materialWhite,
      primaryContainer: AppColors.materialGrey,
      onPrimaryContainer: AppColors.materialWhite,
      secondaryContainer: AppColors.materialSoftGreyWO,
    ),
    appBarTheme: AppWidgetTheme.appBarThemeData,
    filledButtonTheme: AppWidgetTheme.filledButtonTheme,
    inputDecorationTheme: AppWidgetTheme.textFieldDarkTheme,
    bottomNavigationBarTheme: AppWidgetTheme.bottomNavigationBarTheme,
  );
}
