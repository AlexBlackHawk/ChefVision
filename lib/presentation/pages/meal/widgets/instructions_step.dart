import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/meal/widgets/instruction_index.dart';
import 'package:flutter/material.dart';

class InstructionsStep extends StatelessWidget {
  const InstructionsStep({super.key, required this.stepNumber, required this.instruction});

  final int stepNumber;
  final String instruction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: DesignScaler.w(12),
      children: [
        InstructionIndex(index: stepNumber),
        Flexible(
          child: Text(
            instruction,
            style: context.styles.headlineLarge?.copyWith(
              color: AppColors.gray700,
            ),
          ),
        ),
      ],
    );
  }
}
