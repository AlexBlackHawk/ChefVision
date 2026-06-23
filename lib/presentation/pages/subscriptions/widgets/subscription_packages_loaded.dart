import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscribe_now_button.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_image.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_packages_list.dart';
import 'package:chefvision/presentation/widgets/restore_purchases_button.dart';
import 'package:flutter/material.dart';

class SubscriptionPackagesLoaded extends StatelessWidget {
  const SubscriptionPackagesLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: DesignScaler.h(33),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SubscriptionImage(),
          SizedBox(
            height: DesignScaler.h(32),
          ),
          SubscriptionPackagesList(),
          SizedBox(
            height: DesignScaler.h(32),
          ),
          SubscribeNowButton(),
          SizedBox(
            height: DesignScaler.h(16),
          ),
          RestorePurchasesButton(),
        ],
      ),
    );
  }
}
