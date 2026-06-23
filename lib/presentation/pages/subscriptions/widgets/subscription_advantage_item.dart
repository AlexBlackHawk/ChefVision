import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SubscriptionAdvantageItem extends StatelessWidget {
  const SubscriptionAdvantageItem({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Assets.icons.check.svg(
              width: DesignScaler.w(16),
              height: DesignScaler.h(16),
              colorFilter: ColorFilter.mode(
                AppColors.green500,
                BlendMode.srcIn,
              ),
            ),
          ),
          WidgetSpan(
            child: SizedBox(
              width: DesignScaler.w(8),
            ),
          ),
          TextSpan(
            text: name,
            style: context.styles.headlineMedium?.copyWith(
              color: AppColors.gray700,
            ),
          )
        ],
      ),
    );
  }
}
