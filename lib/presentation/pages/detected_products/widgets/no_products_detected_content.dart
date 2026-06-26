import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/add_new_product_section.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NoProductsDetectedContent extends StatelessWidget {
  const NoProductsDetectedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: DesignScaler.h(72),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(24),
              horizontal: DesignScaler.w(24),
            ),
            decoration: BoxDecoration(
              color: AppColors.gray100,
              shape: BoxShape.circle,
            ),
            child: Assets.icons.emptyBox.svg(
              height: DesignScaler.h(48),
              width: DesignScaler.w(48),
              colorFilter: const ColorFilter.mode(
                AppColors.gray400,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            height: DesignScaler.h(23.6),
          ),
          Text(
            LocaleKeys.noProductsDetected.tr(),
            textAlign: TextAlign.center,
            style: context.styles.titleMedium?.copyWith(
              color: AppColors.gray900,
            ),
          ),
          SizedBox(
            height: DesignScaler.h(7.5),
          ),
          Text(
            LocaleKeys.couldNotDetectProducts.tr(),
            textAlign: TextAlign.center,
            style: context.styles.headlineLarge,
          ),
          SizedBox(
            height: DesignScaler.h(32.7),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.orangeRed,
              borderRadius: BorderRadius.circular(DesignScaler.w(14)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black10,
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  spreadRadius: -4,
                ),
                BoxShadow(
                  color: AppColors.black10,
                  offset: Offset(0, 10),
                  blurRadius: 15,
                  spreadRadius: -3,
                ),
              ],
            ),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Assets.icons.plus.svg(
                height: DesignScaler.h(20),
                width: DesignScaler.w(20),
                colorFilter: const ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcIn,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: DesignScaler.h(12),
                  horizontal: DesignScaler.w(24),
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              label: Text(
                LocaleKeys.addProductManually.tr(),
                style: context.styles.titleSmall?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          Visibility(
            visible: true,
            child: Padding(
              padding: EdgeInsets.only(
                top: DesignScaler.h(48),
              ),
              child: AddNewProductSection(),
            ),
          ),
        ],
      ),
    );
  }
}
