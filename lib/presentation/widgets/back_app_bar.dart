import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: DesignScaler.w(98),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      shape: Border(
        bottom: BorderSide(
          color: AppColors.gray200,
          width: DesignScaler.w(0.5),
        ),
      ),
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
            AppColors.gray700,
            BlendMode.srcIn,
          ),
        ),
        label: Text(
          LocaleKeys.back.tr(),
          style: context.styles.displaySmall,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DesignScaler.h(64.5));
}
