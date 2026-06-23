import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionInformationHeader extends StatelessWidget {
  const SubscriptionInformationHeader({super.key, required this.subscriptionName});

  final String subscriptionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16),
        horizontal: DesignScaler.w(24),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(DesignScaler.w(14)),
          topRight: Radius.circular(DesignScaler.w(14)),
        ),
        gradient: AppGradients.orangeRed,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subscriptionName,
            style: context.styles.titleMedium,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(4),
              horizontal: DesignScaler.w(11.5),
            ),
            decoration: ShapeDecoration(
              shape: StadiumBorder(),
              color: AppColors.white33,
            ),
            child: Text(
              LocaleKeys.active.tr(),
              style: context.styles.headlineSmall?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
