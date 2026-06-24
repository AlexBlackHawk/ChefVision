import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/subscription_period.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/package_selection_indicator.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_advantage_item.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionOptionItem extends StatelessWidget {
  const SubscriptionOptionItem({super.key, required this.name, required this.description, required this.price, required this.savePercentage, required this.currencySign, required this.subscriptionPeriod, required this.advantages, required this.isSelected});

  final String name;
  final String description;
  final double price;
  final int? savePercentage;
  final String currencySign;
  final SubscriptionPeriod subscriptionPeriod;
  final List<String> advantages;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: DesignScaler.h(21.67),
          horizontal: DesignScaler.w(21.67),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DesignScaler.w(14)),
          color: AppColors.white,
          border: Border.all(
            color: isSelected ? AppColors.orange500 : AppColors.gray200,
            width: DesignScaler.w(1.67),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black10,
              offset: Offset(0, 1),
              blurRadius: 2,
              spreadRadius: -1,
            ),
            BoxShadow(
              color: AppColors.black10,
              offset: Offset(0, 1),
              blurRadius: 3,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: DesignScaler.w(8),
                  children: [
                    Text(
                      name,
                      style: context.styles.bodyLarge,
                    ),
                    Visibility(
                      visible: savePercentage != null,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: DesignScaler.w(8),
                          vertical: DesignScaler.h(2.55),
                        ),
                        decoration: ShapeDecoration(
                          color: AppColors.green100,
                          shape: StadiumBorder(),
                        ),
                        child: Text(
                          "${LocaleKeys.save.tr()} $savePercentage%",
                          style: context.styles.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                PackageSelectionIndicator(
                  isSelected: isSelected,
                ),
              ],
            ),
            SizedBox(
              height: DesignScaler.h(4),
            ),
            Text(
              description,
              style: context.styles.headlineMedium?.copyWith(
                color: AppColors.gray600,
              ),
            ),
            SizedBox(
              height: DesignScaler.h(12),
            ),
            RichText(
              text: TextSpan(
                text: "$currencySign $price",
                style: context.styles.displayLarge?.copyWith(
                  color: AppColors.gray950,
                ),
                children: [
                  TextSpan(
                    text: " / ${subscriptionPeriod.getName()}",
                    style: context.styles.headlineLarge,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DesignScaler.h(12),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: advantages.length,
              separatorBuilder: (context, index) => SizedBox(
                height: DesignScaler.h(8),
              ),
              itemBuilder: (context, index) => SubscriptionAdvantageItem(name: advantages[index]),
            ),
          ],
        ),
      ),
    );
  }
}
