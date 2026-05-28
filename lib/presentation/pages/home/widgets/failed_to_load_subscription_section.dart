import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FailedToLoadSubscriptionSection extends StatelessWidget {
  const FailedToLoadSubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: DesignScaler.w(17.6),
        vertical: DesignScaler.h(17.6),
      ),
      decoration: BoxDecoration(
        color: AppColors.red50,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          width: DesignScaler.w(1.6),
          color: AppColors.red200,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.icons.error.svg(
            height: DesignScaler.h(20),
            width: DesignScaler.w(20),
            colorFilter: ColorFilter.mode(
              AppColors.red600,
              BlendMode.srcIn,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: DesignScaler.h(4),
            children: [
              Text(
                LocaleKeys.failedToLoadSubscription.tr(),
                style: context.styles.displaySmall?.copyWith(
                  color: AppColors.red800,
                ),
              ),
              Text(
                LocaleKeys.unableToFetchSubscriptionStatus.tr(),
                style: context.styles.headlineMedium,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            constraints: const BoxConstraints(),
            style: IconButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
            ),
            icon: Assets.icons.retry.svg(
              height: DesignScaler.h(18),
              width: DesignScaler.w(18),
              colorFilter: ColorFilter.mode(
                AppColors.red600,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
