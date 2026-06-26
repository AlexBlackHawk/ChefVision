import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionPackagesError extends StatelessWidget {
  const SubscriptionPackagesError({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: DesignScaler.h(114),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(16),
              horizontal: DesignScaler.w(16),
            ),
            decoration: BoxDecoration(
              color: AppColors.red100,
              shape: BoxShape.circle,
            ),
            child: Assets.icons.error.svg(
              height: DesignScaler.h(32),
              width: DesignScaler.w(32),
              colorFilter: const ColorFilter.mode(
                AppColors.red600,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            height: DesignScaler.h(15.6),
          ),
          Text(
            LocaleKeys.failedToLoadPackages.tr(),
            style: context.styles.titleMedium?.copyWith(
              color: AppColors.gray900,
            ),
          ),
          SizedBox(
            height: DesignScaler.h(7.5),
          ),
          Text(
            LocaleKeys.failedToLoadPackages.tr(),
            style: context.styles.headlineLarge,
          ),
          SizedBox(
            height: DesignScaler.h(24.7),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: DesignScaler.h(12.7),
                horizontal: DesignScaler.w(24),
              ),
              backgroundColor: AppColors.orange500,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DesignScaler.w(14)),
              ),
            ),
            child: Text(
              LocaleKeys.tryAgain.tr(),
              style: context.styles.displaySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
