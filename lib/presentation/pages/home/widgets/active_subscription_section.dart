import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/routing/enum/app_page.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ActiveSubscriptionSection extends StatelessWidget {
  const ActiveSubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(subscriptionManagingPage.path),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: DesignScaler.h(16),
        ),
        decoration: BoxDecoration(
          color: AppColors.green50,
          borderRadius: BorderRadius.circular(DesignScaler.w(14)),
          border: Border.all(
            width: DesignScaler.w(1.6),
            color: AppColors.green200,
          ),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Assets.icons.info.svg(
                  height: DesignScaler.h(20),
                  width: DesignScaler.w(20),
                  colorFilter: const ColorFilter.mode(
                    AppColors.green700,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              WidgetSpan(
                child: SizedBox(width: DesignScaler.w(12)),
              ),
              TextSpan(
                text: LocaleKeys.activeStatus.tr(args: ["Monthly Premium"]),
                style: context.styles.displaySmall?.copyWith(
                  color: AppColors.green700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
