import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class InitializingCameraView extends StatelessWidget {
  const InitializingCameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: DesignScaler.h(4.34),
        children: [
          CircularProgressIndicator(
            constraints: BoxConstraints(
              minWidth: DesignScaler.w(64),
              minHeight: DesignScaler.w(64),
            ),
            strokeCap: StrokeCap.round,
            color: AppColors.white30,
            strokeWidth: DesignScaler.w(4),
          ),
          Text(
            LocaleKeys.initializingCamera.tr(),
            style: context.styles.headlineLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
