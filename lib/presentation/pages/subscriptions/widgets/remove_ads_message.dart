import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RemoveAdsMessage extends StatelessWidget {
  const RemoveAdsMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: DesignScaler.h(7.5),
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          LocaleKeys.removeAds.tr(),
          style: context.styles.titleLarge,
        ),
        Text(
          LocaleKeys.unlockPremiumFeatures.tr(),
          style: context.styles.headlineLarge,
        ),
      ],
    );
  }
}
