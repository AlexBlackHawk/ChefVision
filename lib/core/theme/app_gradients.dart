import 'package:chefvision/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppGradients {
  static const LinearGradient orangeRed = LinearGradient(
    colors: [
      AppColors.orange500,
      AppColors.red600,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient orangeWhiteRed = LinearGradient(
    colors: [
      AppColors.orange50,
      AppColors.white,
      AppColors.red50,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient orangeRed100 = LinearGradient(
    colors: [
      AppColors.orange100,
      AppColors.red100,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient black60Black0 = LinearGradient(
    colors: [
      AppColors.black60,
      AppColors.black0,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
