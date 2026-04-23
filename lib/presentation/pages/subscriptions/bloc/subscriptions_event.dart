part of 'subscriptions_bloc.dart';

sealed class SubscriptionsEvent extends Equatable {
  const SubscriptionsEvent();

  @override
  List<Object> get props => [];
}

final class SubscriptionUserIdChanged extends SubscriptionsEvent {
  const SubscriptionUserIdChanged(this.userId);

  final String userId;

  @override
  List<Object> get props => [userId];
}

final class SubscriptionLoginSubmitted extends SubscriptionsEvent {
  const SubscriptionLoginSubmitted();
}

final class SubscriptionLogoutPressed extends SubscriptionsEvent {
  const SubscriptionLogoutPressed();
}

final class SubscriptionPackagePurchased extends SubscriptionsEvent {
  const SubscriptionPackagePurchased();
}

final class SubscriptionPackagesFetched extends SubscriptionsEvent {
  const SubscriptionPackagesFetched();
}

final class SubscriptionPurchasesRestored extends SubscriptionsEvent {
  const SubscriptionPurchasesRestored();
}

final class SubscriptionCustomerInitialized extends SubscriptionsEvent {
  const SubscriptionCustomerInitialized();
}
