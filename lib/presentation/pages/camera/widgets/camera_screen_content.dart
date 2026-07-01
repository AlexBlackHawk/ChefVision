import 'package:camera/camera.dart';
import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_section.dart';
import 'package:chefvision/presentation/pages/camera/widgets/take_picture_button.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CameraScreenContent extends StatelessWidget {
  const CameraScreenContent({super.key, required this.controller});

  final CameraController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CameraSection(
          controller: controller,
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: DesignScaler.h(32),
            horizontal: DesignScaler.w(24),
          ),
          child: Column(
            spacing: DesignScaler.h(24),
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.placeProductsTapToCapture.tr(),
                style: context.styles.headlineMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
              TakePictureButton(),
              Text(
                LocaleKeys.makeSureProductsVisible.tr(),
                style: context.styles.labelSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
