import 'package:purchases_flutter/purchases_flutter.dart';

class SubscriptionRevenueCat {
  const SubscriptionRevenueCat();

  Future<CustomerInfo> getCurrentCustomerInfo() async {
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();
    return customerInfo;
  }

  Future<String> getCurrentAppUserId() async {
    String appUserId = await Purchases.appUserID;
    return appUserId;
  }

  Future<bool> getCurrentSubscriptionStatus() async {
    CustomerInfo customerInfo = await getCurrentCustomerInfo();
    bool isSubscribed = customerInfo.entitlements.active.isNotEmpty;
    return isSubscribed;
  }

  Future<CustomerInfo> logIn(String userId) async {
    LogInResult result = await Purchases.logIn(userId);
    return result.customerInfo;
  }

  Future<CustomerInfo> logOut() async {
    CustomerInfo customerInfo = await Purchases.logOut();
    return customerInfo;
  }

  Future<CustomerInfo> purchasePackage(PurchaseParams purchaseParams) async {
    PurchaseResult purchaseResult = await Purchases.purchase(purchaseParams);
    return purchaseResult.customerInfo;
  }

  Future<List<Package>?> getAllPackages() async {
    Offerings offerings = await Purchases.getOfferings();
    return offerings.current?.availablePackages;
  }

  Future<CustomerInfo> restorePurchases() async {
    CustomerInfo customerInfo = await Purchases.restorePurchases();
    return customerInfo;
  }
}
