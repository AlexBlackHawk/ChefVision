import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NoActiveSubscriptionSection extends StatelessWidget {
  const NoActiveSubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: DesignScaler.w(17.6),
        vertical: DesignScaler.h(17.6),
      ),
      decoration: BoxDecoration(
        color: AppColors.yellow50,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          width: DesignScaler.w(1.6),
          color: AppColors.yellow200,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: DesignScaler.w(12),
        children: [
          Assets.icons.info.svg(
            height: DesignScaler.h(20),
            width: DesignScaler.w(20),
            colorFilter: ColorFilter.mode(
              AppColors.orange800,
              BlendMode.srcIn,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: DesignScaler.h(4),
            children: [
              Text(
                LocaleKeys.noActiveSubscription.tr(),
                style: context.styles.displaySmall?.copyWith(
                  color: AppColors.orange900,
                ),
              ),
              Text(
                LocaleKeys.subscribeToRemoveAds.tr(),
                style: context.styles.headlineSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
