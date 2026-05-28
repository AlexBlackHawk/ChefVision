import 'package:chefvision/core/constants/enums/subscription_status.dart';
import 'package:chefvision/core/theme/app_gradients.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/home/widgets/active_subscription_section.dart';
import 'package:chefvision/presentation/pages/home/widgets/app_branding.dart';
import 'package:chefvision/presentation/pages/home/widgets/change_language_button.dart';
import 'package:chefvision/presentation/pages/home/widgets/failed_to_load_subscription_section.dart';
import 'package:chefvision/presentation/pages/home/widgets/loading_subscription_status_section.dart';
import 'package:chefvision/presentation/pages/home/widgets/no_active_subscription_section.dart';
import 'package:chefvision/presentation/pages/home/widgets/open_camera_button.dart';
import 'package:chefvision/presentation/pages/home/widgets/view_subscription_packages_button.dart';
import 'package:chefvision/presentation/pages/home/widgets/welcome_message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SubscriptionStatus status = SubscriptionStatus.notActive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Container(
          padding: EdgeInsetsGeometry.only(
            left: DesignScaler.w(24),
            top: DesignScaler.h(16),
            right: DesignScaler.w(24),
          ),
          decoration: const BoxDecoration(
            gradient: AppGradients.orangeWhiteRed,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ChangeLanguageButton(),
              ),
              SizedBox(height: DesignScaler.h(16)),
              AppBranding(),
              SizedBox(height: DesignScaler.h(48)),
              WelcomeMessage(),
              SizedBox(height: DesignScaler.h(24)),
              OpenCameraButton(),
              SizedBox(height: DesignScaler.h(24)),
              ViewSubscriptionPackagesButton(),
              SizedBox(height: DesignScaler.h(12)),
              switch (status) {
                SubscriptionStatus.active => ActiveSubscriptionSection(),
                SubscriptionStatus.notActive => NoActiveSubscriptionSection(),
                SubscriptionStatus.loading => LoadingSubscriptionStatusSection(),
                SubscriptionStatus.error => FailedToLoadSubscriptionSection(),
              }
            ],
          ),
        ),
      ),
    );
  }
}
