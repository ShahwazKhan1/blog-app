import 'package:blog_app/core/theme/app_colors.';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([
    Color color = AppColors.borderColor,
  ]) =>
      OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 3),
          borderRadius: BorderRadius.circular(10));
  static final darkThemeMode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundColor,
      ),
      chipTheme: const ChipThemeData(
          color: WidgetStatePropertyAll(AppColors.backgroundColor),
          side: BorderSide(
            color: AppColors.borderColor,
          )),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: _border(),
          focusedBorder: _border(AppColors.gradient2)));
}
