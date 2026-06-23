import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/routing/enum/app_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TakePictureButton extends StatelessWidget {
  const TakePictureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(detectedProductsPage.path),
      child: Container(
        alignment: Alignment.center,
        width: DesignScaler.w(80),
        height: DesignScaler.h(80),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
          border: Border.all(
            width: DesignScaler.w(4),
            color: AppColors.gray900,
          ),
        ),
        child: Container(
          width: DesignScaler.w(56),
          height: DesignScaler.h(56),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppGradients.orangeRed,
          ),
        ),
      ),
    );
  }
}
