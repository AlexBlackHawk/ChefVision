import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/resources/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

ThemeData get theme {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.gray50,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      scrolledUnderElevation: 0,
    ),
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: AppColors.gray700,
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      displayLarge: TextStyle(
        color: AppColors.gray900,
        fontFamily: FontFamily.inter,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        color: AppColors.gray900,
        fontFamily: FontFamily.inter,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: TextStyle(
        color: AppColors.gray600,
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        color: AppColors.red700,
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        color: AppColors.orange800,
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: AppColors.gray900,
        fontFamily: FontFamily.inter,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: AppColors.white,
        fontFamily: FontFamily.inter,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        color: AppColors.gray950,
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        color: AppColors.blue800,
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.gray900,
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: AppColors.green700,
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: AppColors.white,
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: AppColors.white60,
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: AppColors.gray900,
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
