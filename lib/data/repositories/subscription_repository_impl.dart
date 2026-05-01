import 'package:chefvision/data/revenuecat/subscription_revenuecat.dart';
import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/models/customer_info_wrapper.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:purchases_flutter/models/purchase_params.dart';

@LazySingleton(as: SubscriptionRepository)
class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final SubscriptionRevenueCat _subscriptionRevenueCat;

  SubscriptionRepositoryImpl(this._subscriptionRevenueCat);

  @override
  Future<List<Package>?> getAllPackages() async {
    return await _subscriptionRevenueCat.getAllPackages();
  }

  @override
  Future<String> getCurrentAppUserId() async {
    return await _subscriptionRevenueCat.getCurrentAppUserId();
  }

  @override
  Future<CustomerInfo> getCurrentCustomerInfo() async {
    return await _subscriptionRevenueCat.getCurrentCustomerInfo();
  }

  @override
  Future<bool> getCurrentSubscriptionStatus() async {
    return await _subscriptionRevenueCat.getCurrentSubscriptionStatus();
  }

  @override
  Future<CustomerInfo> logIn({required String userId}) async {
    return await _subscriptionRevenueCat.logIn(userId);
  }

  @override
  Future<CustomerInfo> logOut() async {
    return await _subscriptionRevenueCat.logOut();
  }

  @override
  Future<CustomerInfo> purchase({required PurchaseParams purchaseParams}) async {
    return await _subscriptionRevenueCat.purchase(purchaseParams);
  }

  @override
  Future<CustomerInfo> restorePurchases() async {
    return await _subscriptionRevenueCat.restorePurchases();
  }

  @override
  PurchaseParams convertToPurchaseParams({required Package package}) {
    return _subscriptionRevenueCat.convertToPurchaseParams(package);
  }
}
