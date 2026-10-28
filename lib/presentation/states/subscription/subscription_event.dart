part of 'subscription_bloc.dart';

abstract class SubscriptionEvent {
  const SubscriptionEvent();
}

@Freezed(copyWith: false)
abstract class SelectedPackageChanged with _$SelectedPackageChanged implements SubscriptionEvent {
  const factory SelectedPackageChanged({
    required Package package,
  }) = _SelectedPackageChanged;
}

@Freezed(copyWith: false)
abstract class GetSubscriptionPackages with _$GetSubscriptionPackages implements SubscriptionEvent {
  const factory GetSubscriptionPackages() = _GetSubscriptionPackages;
}

@Freezed(copyWith: false)
abstract class PurchasePackageRequested with _$PurchasePackageRequested implements SubscriptionEvent {
  const factory PurchasePackageRequested() = _PurchasePackageRequested;
}

@Freezed(copyWith: false)
abstract class GetSubscriptionInformation with _$GetSubscriptionInformation implements SubscriptionEvent {
  const factory GetSubscriptionInformation() = _GetSubscriptionInformation;
}

@Freezed(copyWith: false)
abstract class RestorePurchasesRequested with _$RestorePurchasesRequested implements SubscriptionEvent {
  const factory RestorePurchasesRequested() = _RestorePurchasesRequested;
}

@Freezed(copyWith: false)
abstract class PackagesScreenRepeatOperation with _$PackagesScreenRepeatOperation implements SubscriptionEvent {
  const factory PackagesScreenRepeatOperation() = _PackagesScreenRepeatOperation;
}

@Freezed(copyWith: false)
abstract class ManagingScreenRepeatOperation with _$ManagingScreenRepeatOperation implements SubscriptionEvent {
  const factory ManagingScreenRepeatOperation() = _ManagingScreenRepeatOperation;
}
