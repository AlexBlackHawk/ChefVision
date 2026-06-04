import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';

class InstructionIndex extends StatelessWidget {
  const InstructionIndex({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: DesignScaler.w(24),
      height: DesignScaler.w(24),
      decoration: BoxDecoration(
        color: AppColors.orange500,
        shape: BoxShape.circle,
      ),
      child: Text(
        index.toString(),
        style: context.styles.bodySmall?.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
