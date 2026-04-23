part of 'subscriptions_bloc.dart';

enum SubscriptionsPackagesLoadingStatus { initial, inProgress, success, failure, }

final class SubscriptionsState extends Equatable {
  const SubscriptionsState({
    this.userId = "",
    this.customerInfo,
    this.subscriptionPackages,
    this.selectedPackage,
    this.appUserId = "",
    this.isSubscribed = false,
    this.subscriptionPackagesLoadingStatus = SubscriptionsPackagesLoadingStatus.initial,
  });

  final CustomerInfo? customerInfo;
  final String userId;
  final List<Package>? subscriptionPackages;
  final Package? selectedPackage;
  final String appUserId;
  final bool isSubscribed;
  final SubscriptionsPackagesLoadingStatus subscriptionPackagesLoadingStatus;

  SubscriptionsState copyWith({
    CustomerInfo? customerInfo,
    String? userId,
    List<Package>? subscriptionPackages,
    Package? selectedPackage,
    String? appUserId,
    bool? isSubscribed,
    SubscriptionsPackagesLoadingStatus? subscriptionPackagesLoadingStatus,
  }) {
    return SubscriptionsState(
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
