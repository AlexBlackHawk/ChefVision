import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: DesignScaler.w(24),
        vertical: DesignScaler.h(24),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        boxShadow: [
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 1),
            spreadRadius: -1,
            blurRadius: 2,
          ),
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 1),
            spreadRadius: 0,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        spacing: DesignScaler.h(8),
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.welcomeBack.tr(),
            style: context.styles.displayMedium,
          ),
          Text(
            LocaleKeys.scanIngredientsDescription.tr(),
            style: context.styles.headlineLarge,
          ),
        ],
      ),
    );
  }
}
