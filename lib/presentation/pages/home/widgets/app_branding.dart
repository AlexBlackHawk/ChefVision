import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppBranding extends StatelessWidget {
  const AppBranding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: DesignScaler.h(24),
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(DesignScaler.w(24)),
          ),
          child: Assets.logo.logo.image(
            width: DesignScaler.w(96),
            height: DesignScaler.h(96),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'ChefVision',
          // style: TextStyle(
          //   color: AppColors.gray900,
          //   fontFamily: FontFamily.inter,
          //   // fontSize: DesignScaler.sp(30),
          //   fontSize: 30,
          //   fontWeight: FontWeight.w700,
          // ),
          style: context.styles.displayLarge,
        ),
      ],
    );
  }
}
