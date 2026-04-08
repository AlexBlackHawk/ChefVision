part of 'subscription_bloc.dart';

enum SubscriptionPackagesLoadingStatus { initial, inProgress, success, failure, }

final class SubscriptionState extends Equatable {
  const SubscriptionState({
    this.userId = "",
    this.customerInfo,
    this.subscriptionPackages,
    this.selectedPackage,
    this.appUserId = "",
    this.isSubscribed = false,
    this.subscriptionPackagesLoadingStatus = SubscriptionPackagesLoadingStatus.initial,
  });

  final CustomerInfo? customerInfo;
  final String userId;
  final List<Package>? subscriptionPackages;
  final Package? selectedPackage;
  final String appUserId;
  final bool isSubscribed;
  final SubscriptionPackagesLoadingStatus subscriptionPackagesLoadingStatus;

  SubscriptionState copyWith({
    CustomerInfo? customerInfo,
    String? userId,
    List<Package>? subscriptionPackages,
    Package? selectedPackage,
    String? appUserId,
    bool? isSubscribed,
    SubscriptionPackagesLoadingStatus? subscriptionPackagesLoadingStatus,
  }) {
    return SubscriptionState(
      customerInfo: customerInfo ?? this.customerInfo,
      userId: userId ?? this.userId,
      subscriptionPackages: subscriptionPackages ?? this.subscriptionPackages,
      selectedPackage: selectedPackage ?? this.selectedPackage,
      appUserId: appUserId ?? this.appUserId,
      isSubscribed: isSubscribed ?? this.isSubscribed,
      subscriptionPackagesLoadingStatus: subscriptionPackagesLoadingStatus ?? this.subscriptionPackagesLoadingStatus,
    );
  }

  @override
  List<Object?> get props => [
    customerInfo,
    userId,
    subscriptionPackages,
    selectedPackage,
    appUserId,
    isSubscribed,
    subscriptionPackagesLoadingStatus,
  ];
}
