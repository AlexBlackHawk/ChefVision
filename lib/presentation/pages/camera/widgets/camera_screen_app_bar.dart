import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CameraScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CameraScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      leadingWidth: DesignScaler.w(98),
      automaticallyImplyLeading: false,
      leading: TextButton.icon(
        onPressed: () => context.pop(),
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(
            left: DesignScaler.w(16),
          ),
        ),
        icon: Assets.icons.back.svg(
          height: DesignScaler.h(20),
          width: DesignScaler.w(20),
          colorFilter: const ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
        ),
        label: Text(
          LocaleKeys.back.tr(),
          style: context.styles.displaySmall?.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.black60Black0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DesignScaler.h(64));
}
