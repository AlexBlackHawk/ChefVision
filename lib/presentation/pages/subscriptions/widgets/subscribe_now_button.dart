import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscribeNowButton extends StatelessWidget {
  const SubscribeNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.orangeRed,
        borderRadius: BorderRadius.circular(DesignScaler.w(16)),
        boxShadow: [
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: -4,
          ),
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 10),
            blurRadius: 15,
            spreadRadius: -3,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(16),
            )
        ),
        child: Text(
          LocaleKeys.subscribeNow.tr(),
          style: context.styles.titleSmall?.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
