import 'package:chefvision/core/constants/enums/subscription_period.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/subscriptions/widgets/subscription_option_item.dart';
import 'package:flutter/material.dart';

class SubscriptionPackagesList extends StatelessWidget {
  SubscriptionPackagesList({super.key});

  final List<Map<String, Object?>> subscriptionPackages = <Map<String, Object?>>[
    {
      "name": "Monthly Premium",
      "description": "Perfect for casual cooking",
      "price": 9.99,
      "savePercentage": null,
      "currencySign": "\$",
      "subscriptionPeriod": SubscriptionPeriod.month,
      "advantages": <String>[
        "Unlimited recipe generations",
        "Ad-free experience",
        "Save favorite recipes",
      ],
      "isSelected": true,
    },
    {
      "name": "Annual Premium",
      "description": "Best value for food lovers",
      "price": 79.99,
      "savePercentage": 33,
      "currencySign": "\$",
      "subscriptionPeriod": SubscriptionPeriod.year,
      "advantages": <String>[
        "Unlimited recipe generations",
        "Ad-free experience",
        "Save favorite recipes",
        "Priority support",
        "Early access to new features",
      ],
      "isSelected": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: subscriptionPackages.length,
      separatorBuilder: (context, index) => SizedBox(
        height: DesignScaler.h(16),
      ),
      itemBuilder: (context, index) => SubscriptionOptionItem(
        name: subscriptionPackages[index]["name"] as String,
        description: subscriptionPackages[index]["description"] as String,
        price: subscriptionPackages[index]["price"] as double,
        savePercentage: subscriptionPackages[index]["savePercentage"] as int?,
        currencySign: subscriptionPackages[index]["currencySign"] as String,
        subscriptionPeriod: subscriptionPackages[index]["subscriptionPeriod"] as SubscriptionPeriod,
        advantages: subscriptionPackages[index]["advantages"] as List<String>,
        isSelected: subscriptionPackages[index]["isSelected"] as bool,
      ),
    );
  }
}
