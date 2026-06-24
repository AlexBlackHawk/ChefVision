import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class DetectedProductItem extends StatelessWidget {
  const DetectedProductItem({super.key, required this.name, required this.quantity});

  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16.55),
        horizontal: DesignScaler.w(16.55),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          color: AppColors.gray100,
          width: DesignScaler.w(0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 1),
            blurRadius: 2,
            spreadRadius: -1,
          ),
          BoxShadow(
            color: AppColors.black10,
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: DesignScaler.h(4),
            children: [
              Text(
                name,
                style: context.styles.labelLarge,
              ),
              Text(
                quantity,
                style: context.styles.headlineLarge,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: DesignScaler.w(8),
            children: [
              IconButton(
                onPressed: () {},
                icon: Assets.icons.edit.svg(
                  height: DesignScaler.h(20),
                  width: DesignScaler.w(20),
                  colorFilter: const ColorFilter.mode(
                    AppColors.blue600,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Assets.icons.trash.svg(
                  height: DesignScaler.h(20),
                  width: DesignScaler.w(20),
                  colorFilter: const ColorFilter.mode(
                    AppColors.red500,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
