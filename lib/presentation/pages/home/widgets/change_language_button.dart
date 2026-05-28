import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        context.setLocale(Locale('en'));
      },
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: DesignScaler.w(16),
          vertical: DesignScaler.h(8),
        ),
        side: BorderSide(
          width: 1.6,
          color: AppColors.gray200,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        ),
      ),
      icon: Assets.icons.language.svg(
        height: DesignScaler.h(20),
        width: DesignScaler.w(20),
        colorFilter: const ColorFilter.mode(
          AppColors.gray700,
          BlendMode.srcIn,
        ),
      ),
      label: Text(
        LocaleKeys.languageName.tr(),
        style: context.styles.displaySmall,
      ),
    );
  }
}
