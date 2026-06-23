import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SubscriptionImage extends StatelessWidget {
  const SubscriptionImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(24),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppGradients.orangeRed100,
        borderRadius: BorderRadius.circular(DesignScaler.w(16)),
      ),
      child: Assets.icons.sub.svg(
        width: DesignScaler.w(80),
        height: DesignScaler.h(80),
        colorFilter: const ColorFilter.mode(
          AppColors.orange600,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
