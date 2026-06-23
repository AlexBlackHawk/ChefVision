import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_information.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_information_header.dart';
import 'package:flutter/material.dart';

class SubscriptionInformationSection extends StatelessWidget {
  const SubscriptionInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          color: AppColors.gray200,
          width: DesignScaler.w(0.5),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SubscriptionInformationHeader(
            subscriptionName: "Monthly Premium",
          ),
          SubscriptionInformation(),
        ],
      ),
    );
  }
}
