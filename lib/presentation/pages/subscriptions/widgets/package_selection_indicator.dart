import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class PackageSelectionIndicator extends StatelessWidget {
  const PackageSelectionIndicator({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DesignScaler.w(24),
      height: DesignScaler.w(24),
      // padding: EdgeInsets.symmetric(
      //   vertical: DesignScaler.w(2.3),
      //   horizontal: DesignScaler.w(2.3),
      // ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? AppColors.orange500 : Colors.transparent,
        border: Border.all(
          color: isSelected ? AppColors.orange500 : AppColors.gray300,
          width: DesignScaler.w(1.6),
        ),
      ),
      child: Visibility(
        visible: isSelected,
        child: Assets.icons.check.svg(
          width: DesignScaler.w(16),
          height: DesignScaler.h(16),
          colorFilter: ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
