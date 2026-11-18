import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.creme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.laranja,
        primary: AppColors.laranja,
        onPrimary: Colors.white,
        surface: Colors.white,
        onSurface: AppColors.espresso,
        outline: AppColors.borda,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.creme,
        foregroundColor: AppColors.espresso,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, letterSpacing: -0.3, color: AppColors.espresso),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.espresso),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.espresso),
        bodyMedium: TextStyle(fontSize: 13, color: AppColors.espressoSuave),
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.3),
      ),
    );
  }
}
