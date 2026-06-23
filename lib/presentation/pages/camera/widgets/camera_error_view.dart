import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/camera/widgets/icon_try_again_button.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CameraErrorView extends StatelessWidget {
  const CameraErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DesignScaler.w(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: DesignScaler.h(16),
                horizontal: DesignScaler.w(16),
              ),
              decoration: BoxDecoration(
                color: AppColors.red20,
                shape: BoxShape.circle,
              ),
              child: Assets.icons.error.svg(
                height: DesignScaler.h(48),
                width: DesignScaler.w(48),
                colorFilter: const ColorFilter.mode(
                  AppColors.red500,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(
              height: DesignScaler.h(15.6),
            ),
            Text(
              LocaleKeys.cameraError.tr(),
              textAlign: TextAlign.center,
              style: context.styles.titleMedium,
            ),
            SizedBox(
              height: DesignScaler.h(7.5),
            ),
            Text(
              LocaleKeys.unableToAccessCamera.tr(),
              textAlign: TextAlign.center,
              style: context.styles.headlineLarge?.copyWith(
                color: AppColors.white80,
              ),
            ),
            SizedBox(
              height: DesignScaler.h(24.7),
            ),
            IconTryAgainButton(),
          ],
        ),
      ),
    );
  }
}
