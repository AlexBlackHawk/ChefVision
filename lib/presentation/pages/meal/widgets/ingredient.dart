import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  const Ingredient({super.key, required this.name, required this.quantity});

  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: context.styles.headlineLarge?.copyWith(
            color: AppColors.gray700,
          ),
        ),
        Text(
          quantity,
          style: context.styles.displaySmall?.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
