import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/meal/widgets/instructions_step.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class InstructionsSection extends StatelessWidget {
  InstructionsSection({super.key});

  final List<String> steps = <String>[
    "Season chicken breast with salt, pepper, and oregano.",
    "Heat olive oil in a large skillet over medium-high heat.",
    "Cook chicken for 6-7 minutes on each side until golden brown and cooked through.",
    "Remove chicken and set aside. In the same pan, sauté chopped onion and garlic until fragrant.",
    "Add diced tomatoes and cook for 5 minutes until they start to break down.",
    "Slice the chicken and return it to the pan with the vegetables.",
    "Squeeze fresh lemon juice over everything and toss to combine.",
    "Serve hot with your favorite grain or enjoy as is!",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: DesignScaler.h(16),
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            LocaleKeys.instructions.tr(),
            style: context.styles.titleMedium?.copyWith(
              color: AppColors.gray900,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: DesignScaler.h(16),
            horizontal: DesignScaler.w(16),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black10,
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: -1,
              ),
              BoxShadow(
                color: AppColors.black10,
                offset: Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(DesignScaler.w(14)),
            color: AppColors.white,
          ),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: steps.length,
            separatorBuilder: (context, index) => SizedBox(
              height: DesignScaler.h(16),
            ),
            itemBuilder: (context, index) => InstructionsStep(stepNumber: index+1, instruction: steps[index]),
          ),
        ),
      ],
    );
  }
}
