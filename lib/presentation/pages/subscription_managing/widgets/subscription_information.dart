import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_data_item.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SubscriptionInformation extends StatelessWidget {
  const SubscriptionInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(24),
        horizontal: DesignScaler.w(24),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(DesignScaler.w(14)),
          bottomRight: Radius.circular(DesignScaler.w(14)),
        )
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SubscriptionDataItem(
            icon: Assets.icons.paymentCard,
            iconColor: AppColors.orange600,
            containerColor: AppColors.orange100,
            name: "Subscription Type",
            value: "Monthly Premium",
            valueStyle: context.styles.titleSmall,
            nameValueSpacing: DesignScaler.h(4),
          ),
          SizedBox(
            height: DesignScaler.h(20),
          ),
          SubscriptionDataItem(
            icon: Assets.icons.user,
            iconColor: AppColors.blue600,
            containerColor: AppColors.blue100,
            name: "Customer ID",
            value: "cus_NxYz123456789",
            valueStyle: context.styles.headlineMedium?.copyWith(
              color: AppColors.gray950,
            ),
            nameValueSpacing: DesignScaler.h(4),
          ),
          SizedBox(
            height: DesignScaler.h(20),
          ),
          SubscriptionDataItem(
            icon: Assets.icons.calendar,
            iconColor: AppColors.green600,
            containerColor: AppColors.green100,
            name: "Purchase Date",
            value: "April 11, 2026",
            valueStyle: context.styles.titleSmall,
            nameValueSpacing: DesignScaler.h(4),
          ),
          SizedBox(
            height: DesignScaler.h(20),
          ),
          SubscriptionDataItem(
            icon: Assets.icons.calendar,
            iconColor: AppColors.purple600,
            containerColor: AppColors.purple100,
            name: "Expiration Date",
            value: "May 11, 2026",
            valueStyle: context.styles.titleSmall,
            nameValueSpacing: DesignScaler.h(4),
          ),
          SizedBox(
            height: DesignScaler.h(20),
          ),
          SubscriptionDataItem(
            icon: Assets.icons.link,
            iconColor: AppColors.orange600,
            containerColor: AppColors.orange100,
            name: "Management URL",
            value: "https://billing.example.com/manage/abc123def456",
            valueStyle: context.styles.headlineSmall?.copyWith(
              color: AppColors.orange600,
              decoration: TextDecoration.underline,
            ),
            nameValueSpacing: DesignScaler.h(8),
          ),
        ],
      ),
    );
  }
}
