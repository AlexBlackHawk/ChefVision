part of 'subscription_bloc.dart';

// Per-screen operations (so an error state knows what to retry)

enum PackagesScreenOperation { getPackages, purchasePackage }

enum ManagingScreenOperation { getSubscriptionInfo, restorePurchases }

// Subscriptions Packages Screen status: loading / loaded / error

@freezed
sealed class PackagesScreenStatus with _$PackagesScreenStatus {
  const factory PackagesScreenStatus.loading() = PackagesScreenLoading;

  const factory PackagesScreenStatus.loaded() = PackagesScreenLoaded;

  const factory PackagesScreenStatus.error({
    required PackagesScreenOperation operation,
    required String message,
    // Set when operation is purchasePackage, so retry can re-dispatch
    // PurchasePackageRequested with the same package.
    Package? package,
  }) = PackagesScreenError;
}

// Subscription Managing Screen status:
// loading / loaded / noActiveSubscription / error

@freezed
sealed class ManagingScreenStatus with _$ManagingScreenStatus {
  const factory ManagingScreenStatus.loading() = ManagingScreenLoading;

  const factory ManagingScreenStatus.loaded() = ManagingScreenLoaded;

  const factory ManagingScreenStatus.noActiveSubscription() =
  ManagingScreenNoActiveSubscription;

  const factory ManagingScreenStatus.error({
    required ManagingScreenOperation operation,
    required String message,
  }) = ManagingScreenError;
}

// Top-level bloc state: loading / loaded / error

@freezed
sealed class SubscriptionState with _$SubscriptionState {
  /// Bloc's initial state, and the state before either screen has
  /// successfully fetched data for the first time.
  const factory SubscriptionState.loading() = SubscriptionLoading;

  /// The very first fetch (of either screen) failed, so there's no data
  /// at all yet. Once SubscriptionLoaded is reached, further errors are
  /// scoped to the relevant screen's status instead of this state.
  const factory SubscriptionState.error(String message) = SubscriptionError;

  /// Data is available. Each screen tracks its own status independently,
  /// so one screen's loading/error doesn't affect the other.
  const factory SubscriptionState.loaded({
    required List<Package> packages,
    required CustomerInfo customerInfo,
    required PackagesScreenStatus packagesScreenStatus,
    required ManagingScreenStatus managingScreenStatus,
  }) = SubscriptionLoaded;
}
