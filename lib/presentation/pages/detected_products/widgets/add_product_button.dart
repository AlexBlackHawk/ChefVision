import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        stackFit: StackFit.passthrough,
        radius: Radius.circular(DesignScaler.w(14)),
        color: AppColors.gray200,
        strokeWidth: DesignScaler.w(1.6),
        dashPattern: [DesignScaler.w(3.35), DesignScaler.w(1.67),]
      ),
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          padding: EdgeInsets.symmetric(
            vertical: DesignScaler.h(16),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DesignScaler.w(14)),
          ),
        ),
        icon: Assets.icons.plus.svg(
          height: DesignScaler.h(20),
          width: DesignScaler.w(20),
          colorFilter: const ColorFilter.mode(
            AppColors.gray700,
            BlendMode.srcIn,
          ),
        ),
        label: Text(
          LocaleKeys.addProduct.tr(),
          style: context.styles.displaySmall,
        ),
      ),
    );
  }
}
