import 'package:purchases_flutter/purchases_flutter.dart';

class SubscriptionRepository {
  const SubscriptionRepository();

  Future<CustomerInfo> get currentCustomerInfo async {
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();
    return customerInfo;
  }

  Future<CustomerInfo> logIn(String userId) async {
    LogInResult result = await Purchases.logIn(userId);
    return result.customerInfo;
  }

  Future<CustomerInfo> logOut() async {
    CustomerInfo customerInfo = await Purchases.logOut();
    return customerInfo;
  }

  Future<CustomerInfo> purchasePackage(Package package) async {
    CustomerInfo customerInfo = await Purchases.purchasePackage(package);
    return customerInfo;
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