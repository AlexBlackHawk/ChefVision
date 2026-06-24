import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SubscriptionDataItem extends StatelessWidget {
  const SubscriptionDataItem({super.key, required this.icon, required this.iconColor, required this.containerColor, required this.name, required this.value, required this.valueStyle, required this.nameValueSpacing, this.onValueTap});

  final SvgGenImage icon;
  final Color iconColor;
  final Color containerColor;
  final String name;
  final String value;
  final TextStyle? valueStyle;
  final double nameValueSpacing;
  final VoidCallback? onValueTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: DesignScaler.w(16),
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: DesignScaler.w(10),
            vertical: DesignScaler.h(10),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DesignScaler.w(10)),
            color: containerColor,
          ),
          child: icon.svg(
            height: DesignScaler.h(20),
            width: DesignScaler.w(20),
            colorFilter: ColorFilter.mode(
              iconColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        GestureDetector(
          onTap: onValueTap,
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: nameValueSpacing,
              children: [
                Text(
                  name,
                  style: context.styles.headlineMedium?.copyWith(
                    color: AppColors.gray600,
                  ),
                ),
                Text(
                  value,
                  style: valueStyle,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
