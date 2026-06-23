import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/getting_subscription_information_status.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/no_active_subscription_content.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_managing_content.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_managing_error.dart';
import 'package:chefvision/presentation/pages/subscription_managing/widgets/subscription_managing_loading.dart';
import 'package:chefvision/presentation/widgets/back_app_bar.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SubscriptionManagingPage extends StatefulWidget {
  const SubscriptionManagingPage({super.key});

  @override
  State<SubscriptionManagingPage> createState() => _SubscriptionManagingPageState();
}

class _SubscriptionManagingPageState extends State<SubscriptionManagingPage> {

  final GettingSubscriptionInformationStatus status = GettingSubscriptionInformationStatus.loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray50,
      appBar: BackAppBar(),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: DesignScaler.h(24),
          horizontal: DesignScaler.w(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.manageSubscription.tr(),
              style: context.styles.titleLarge,
            ),
            switch (status) {
              GettingSubscriptionInformationStatus.loaded => SubscriptionManagingContent(),
              GettingSubscriptionInformationStatus.error => SubscriptionManagingError(),
              GettingSubscriptionInformationStatus.loading => SubscriptionManagingLoading(),
              GettingSubscriptionInformationStatus.noActiveSubscription => NoActiveSubscriptionContent(),
            }
          ],
        ),
      ),
    );
  }
}
