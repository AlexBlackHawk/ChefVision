import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/view_subscription_plans_button.dart';
import 'package:chefvision/presentation/widgets/restore_purchases_button.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NoActiveSubscriptionContent extends StatelessWidget {
  const NoActiveSubscriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(20),
              horizontal: DesignScaler.w(20),
            ),
            decoration: BoxDecoration(
              color: AppColors.gray100,
              shape: BoxShape.circle,
            ),
            child: Assets.icons.shoppingCart.svg(
              height: DesignScaler.h(40),
              width: DesignScaler.w(40),
              colorFilter: const ColorFilter.mode(
                AppColors.gray400,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            height: DesignScaler.h(15.6),
          ),
          Text(
            textAlign: TextAlign.center,
            LocaleKeys.noActiveSubscription.tr(),
            style: context.styles.titleMedium?.copyWith(
              color: AppColors.gray900,
            ),
          ),
          SizedBox(
            height: DesignScaler.h(7.5),
          ),
          Text(
            textAlign: TextAlign.center,
            LocaleKeys.noActiveSubscriptionSubscribeToRemoveAds.tr(),
            style: context.styles.headlineLarge,
          ),
          SizedBox(
            height: DesignScaler.h(25),
          ),
          ViewSubscriptionPlansButton(),
          SizedBox(
            height: DesignScaler.h(16),
          ),
          RestorePurchasesButton(),
        ],
      ),
    );
  }
}
