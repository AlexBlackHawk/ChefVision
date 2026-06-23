import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NeedHelpSection extends StatelessWidget {
  const NeedHelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16.55),
        horizontal: DesignScaler.w(16.55),
      ),
      decoration: BoxDecoration(
        color: AppColors.blue50,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          color: AppColors.blue200,
          width: DesignScaler.w(0.5),
        ),
      ),
      child: RichText(
        text: TextSpan(
          text: LocaleKeys.needHelp.tr(),
          style: context.styles.bodySmall,
          children: [
            TextSpan(
              text: LocaleKeys.visitManagementUrlDescription.tr(),
              style: context.styles.headlineMedium?.copyWith(
                color: AppColors.blue800,
              ),
            )
          ]
        ),
      ),
    );
  }
}
