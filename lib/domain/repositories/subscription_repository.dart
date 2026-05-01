import 'package:purchases_flutter/purchases_flutter.dart';

abstract interface class SubscriptionRepository {
  Future<CustomerInfo> getCurrentCustomerInfo();

  Future<String> getCurrentAppUserId();

  Future<bool> getCurrentSubscriptionStatus();

  Future<CustomerInfo> logIn({
    required String userId,
  });

  Future<CustomerInfo> logOut();

  Future<CustomerInfo> purchase({
    required PurchaseParams purchaseParams,
  });

  Future<List<Package>?> getAllPackages();

  Future<CustomerInfo> restorePurchases();

  PurchaseParams convertToPurchaseParams({
    required Package package,
  });
}
