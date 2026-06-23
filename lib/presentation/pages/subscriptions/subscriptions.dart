import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/subscription_packages_loading_statuses.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/remove_ads_message.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_packages_error.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_packages_loaded.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_packages_loading.dart';
import 'package:chefvision/presentation/widgets/back_app_bar.dart';
import 'package:flutter/material.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  final SubscriptionPackagesLoadingStatuses status = SubscriptionPackagesLoadingStatuses.loaded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
      backgroundColor: AppColors.gray50,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: DesignScaler.w(24),
          vertical: DesignScaler.h(24),
        ),
        child: Column(
          children: [
            RemoveAdsMessage(),
            switch (status) {
              SubscriptionPackagesLoadingStatuses.loaded => SubscriptionPackagesLoaded(),
              SubscriptionPackagesLoadingStatuses.error => SubscriptionPackagesError(),
              SubscriptionPackagesLoadingStatuses.loading => SubscriptionPackagesLoading(),
            }
          ],
        ),
      ),
    );
  }
}
