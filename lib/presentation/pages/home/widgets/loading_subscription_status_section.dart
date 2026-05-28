import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoadingSubscriptionStatusSection extends StatelessWidget {
  const LoadingSubscriptionStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: DesignScaler.w(17.6),
        vertical: DesignScaler.h(17.6),
      ),
      decoration: BoxDecoration(
        color: AppColors.gray50,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          width: DesignScaler.w(1.6),
          color: AppColors.gray200,
        ),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: SizedBox(
                width: DesignScaler.w(20),
                height: DesignScaler.w(20),
                child: CircularProgressIndicator(
                  color: AppColors.gray300,
                  strokeWidth: DesignScaler.w(1.6),
                ),
              ),
            ),
            WidgetSpan(
              child: SizedBox(width: DesignScaler.w(11)),
            ),
            TextSpan(
              text: LocaleKeys.loadingSubscriptionStatus.tr(),
              style: context.styles.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
