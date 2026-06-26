import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionManagingLoading extends StatelessWidget {
  const SubscriptionManagingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.only(
          top: DesignScaler.h(174),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: DesignScaler.h(14.6),
          children: [
            CircularProgressIndicator(
              constraints: BoxConstraints(
                minWidth: DesignScaler.w(36),
                minHeight: DesignScaler.w(36),
              ),
              strokeCap: StrokeCap.round,
              padding: EdgeInsets.symmetric(
                vertical: DesignScaler.w(6),
                horizontal: DesignScaler.w(6),
              ),
              color: AppColors.orange500,
              strokeWidth: DesignScaler.w(4),
            ),
            Text(
              LocaleKeys.loadingSubscription.tr(),
              style: context.styles.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
