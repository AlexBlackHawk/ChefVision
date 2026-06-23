import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/need_help_section.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_information_section.dart';
import 'package:chefvision/presentation/widgets/restore_purchases_button.dart';
import 'package:flutter/material.dart';

class SubscriptionManagingContent extends StatelessWidget {
  const SubscriptionManagingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: DesignScaler.h(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: DesignScaler.h(24),
        children: [
          SubscriptionInformationSection(),
          RestorePurchasesButton(),
          NeedHelpSection(),
        ],
      ),
    );
  }
}
