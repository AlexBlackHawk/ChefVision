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
}
